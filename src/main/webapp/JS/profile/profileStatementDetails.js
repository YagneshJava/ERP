$(document).ready(function(){
	$(".menu-item").removeClass('menu-item-here');
	$("#profileCompanyDetailsPageLI").addClass('menu-item-here');
	
	$(".profileSidebarLI").removeClass("active");
	$("#profileStatementPage").addClass("active");
	
	
	$('#statementMonth').datepicker({
		format: "mm-yyyy",
		viewMode: "months",
		minViewMode: "months",
//		format: 'M-yyyy',
		autoclose: true,
	}).on('changeDate', function(selected) {
		$('#statementForm').bootstrapValidator('updateStatus', 'statementMonth', 'NOT_VALIDATED').bootstrapValidator('validateField', 'statementMonth');
	});
	
	
	$('#statementForm').bootstrapValidator({
		submitHandler: function(validator, form, submitButton) {
			getSupplierList();
    	},
    	trigger:'focusout',
		fields: {
			statementMonth:{
				validators: {
					notEmpty: {
						message: 'Kindly select Month!'
					},
                }
			},
        }
	});
	
	$('#allSupplier').change(function() {
		allSupplierChkBox();
	});
	
	$("#supplierListModal").on("hidden.bs.modal", function() {
		$('#allSupplier').prop('checked', false);;
	});
	
});




function getSupplierList(){
	
	$("#preLoader").show();
	$.ajax({
		url: "getSupplierList",
		data: {
			'customerId': $('#customerId').val() ,
			'statementMonth':  $('#statementMonth').val() 
		},
		type: "POST",
		dataType: 'JSON',
		success: function(data) {
			if (data != undefined) {
				$("#preLoader").hide();
				if (data.length == 0) {
					toastr.error("You don't have any transactions for this month!");
				} else {
					$('#supplierChkBox').empty();
					for(var i = 0; i< data.length; i++){
						$('#supplierChkBox').append('<input  class="mr-3"  type="checkbox" id="'+data[i].supplierId+'" name="'+data[i].supplierId+'" value="'+data[i].supplierId+'"><label for="'+data[i].supplierId+'"> '+data[i].supplierName+'</label><br>');
					}
					$('#supplierListModal').modal('show');
				}

			}
		},error:function(){
			$("#preLoader").hide();
			toastr.error("Something went wrong!");
		}
	});
}

function downloadStatement(){

	var checked = [];
	$('#supplierChkBox input:checked').each(function() {
		checked.push($(this).attr('id'));
	});
	
	if(checked.length == 0){
		toastr.error("Kindly select a supplier to generate Transaction report!");
		return;
	}

	$('#wrapper').append('<a id="statementLink" href="downloadStatement?customerId=' + $('#customerId').val() + '&statementMonth=' + $('#statementMonth').val() + '&supplierList='+checked+'"></a>');
	$("#statementLink")[0].click();
	
	$('#supplierListModal').modal('hide');
}

function allSupplierChkBox(){
	if($("#allSupplier").is(":checked")){
		$('input').prop('checked', true);
	}else{
		$('input').prop('checked', false);
	}
}