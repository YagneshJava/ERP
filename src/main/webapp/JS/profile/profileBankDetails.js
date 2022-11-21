$(document).ready(function(){
	$(".menu-item").removeClass('menu-item-here');
	$("#profileCompanyDetailsPageLI").addClass('menu-item-here');
	
	$(".profileSidebarLI").removeClass("active");
	$("#profileBankDetailsPage").addClass("active");
	
	getBankDetails();
	
	$('#companyBankDetailsForm').bootstrapValidator({
		submitHandler: function(validator, form, submitButton) {
			saveUpdateBankDetails();
    	},
    	trigger:'focusout',
		fields: {
			accountName:{
				validators: {
					notEmpty: {
						message: 'Account Name is required!'
					},
                }
			},
			bankName:{
				validators: {
					notEmpty: {
						message: 'Bank Name is required!'
					},
				}
			},
			accountNumber:{
				validators: {
					notEmpty: {
						message: 'Account Number is required!'
					},
				}
			},
			sortCode:{
				validators: {
					notEmpty: {
						message: 'Sort Code is required!'
					},
				}
			}
        }
	});
	
});

function saveUpdateBankDetails(){
	$("#preLoader").show();
	$.ajax({
					url:'saveUpdateBankDetails',
					type:'POST',
					dataType:'JSON',
					data:$('#companyBankDetailsForm').serialize(),
					success:function(response){
						$("#preLoader").hide();
							if(response.message != undefined && response.message == "error"){
								errorMsg(response.error);
							}else{
								successMsg(response.message);
							}
					},
					error:function(error){
						$("#preLoader").hide();
						errorMsg("Something went wrong!");
					}
				});
	
}

function getBankDetails(){

	$("#preLoader").show();
	$.ajax({
					url:'getBankDetails',
					type:'GET',
					dataType:'JSON',
					data:{
					"supplierId":$('#supplierId').val()	
					},
					success:function(response){
						$("#preLoader").hide();
						console.log("response "+response);
						if (response.bankDetails != "" && response.bankDetails != undefined && response.bankDetails != null) {
							$("#accountName").val(response.bankDetails.accountName);
							$("#bankName").val(response.bankDetails.bankName);
							$("#accountNumber").val(response.bankDetails.accountNumber);
							$("#sortCode").val(response.bankDetails.sortCode);
						}
					},
					error:function(error){
						console.log(error);
						$("#preLoader").hide();
						errorMsg("Something went wrong!");
					}
				});
	
}


