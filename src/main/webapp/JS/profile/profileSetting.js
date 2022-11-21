$(document).ready(function(){
	
	$(".menu-item").removeClass('menu-item-here');
	$("#profileCompanyDetailsPageLI").addClass('menu-item-here');
	
	$(".profileSidebarLI").removeClass("active");
	$("#profileSettingPage").addClass("active");
	
	
	
	representativeTable = $('#representativeList').DataTable({
			ordering: false,
			scrollY:true,
			scrollX: true,
			searching:false,
			scrollCollapse: true,
			processing: true,
			serverSide: true,
			ajax: {
				url: "getRepresentativeList",
				type: 'POST',
			},
			columns: [
				{title: 'Name',data: 'name',className: 'dt-left'},
				{title: 'Status',data: 'status',className: 'dt-left',render:statusFormatter},
				{title: 'Action',className: 'dt-center' , data:null,render:actionFormatter},
			],
			fixedColumns: {
				rightColumns: 2,
				leftColumns: 0
			}
		});
		
	grantedSupplierTable = $('#grantedSupplierList').DataTable({
			ordering: false,
			scrollY:true,
			searching:false,
			scrollCollapse: true,
			processing: true,
			serverSide: true,
			ajax: {
				url: "getGrantedSupplierList",
				type: 'POST',
			},
			columns: [
				{title: 'Name',data: 'supplierName',className: 'dt-left'},
				{title: 'Supplier Id',data: 'supplierId',className: 'dt-left'},
				{title: 'Status',data: 'status',className: 'dt-left',render:statusFormatter},
				{title: 'Action',className: 'dt-center' , data:null,render:actionSupplierFormatter},
			],
		});
		
		$('#representativeForm').bootstrapValidator({
			submitHandler: function(validator, form, submitButton) {
				addRepresentative();
	    	},
			fields: {
				representative: {
						validators: {
							notEmpty: {
								message: 'Representative Required and cannot be empty'
							},
						}
				},
			}
		});
		
        $("#grantedSuppliers").select2({
            placeholder: "Select Supplier",
            allowClear: true,
            ajax: {
                url: "searchSupplier",
                dataType: 'json',
                delay: 250,
                data: function(params) {
                    return {
                        supplierQuery: params.term,  // search term
                        page: params.page
                    };
                },
                processResults: function(data, params) {
                    params.page = params.page || 1;
                    return {
                        results: data,
                        pagination: {
                            more: (params.page * 30) < data.total_count
                        }
                    };
                },
                cache: true
            },
            escapeMarkup: function(markup) {
                return markup;
            }, // let our custom formatter work
            minimumInputLength: 1,
            templateResult: formatRepo, // omitted for brevity, see the source of this page
            templateSelection: formatRepoSelection // omitted for brevity, see the source of this page
        });
        $(".select2-selection__placeholder").html("Select Supplier");
});

function formatRepo(repo) {
    if (repo.loading) 
    	return repo.name;
    var markup = "<div class='select2-result-repository clearfix'>" +
        "<div class='select2-result-repository__meta'>" +
        "<div class='select2-result-repository__title'>" + repo.name + "</div>";
    if (repo.name) {
        markup += "<div style='display:none' class='select2-result-repository__description'>" + repo.id + "</div>";
    }
    return markup;
}

function formatRepoSelection(repo) {
    return repo.name || repo.id;
}


function actionFormatter(data, type, row) {
	var buttons = "<div class='text-center'>";
	if(data.status){
		buttons += "<a data-toggle='tooltip' title ='Deactive'  href='javascript:activateRepresentative(\""+data.id+"\",\"Deactive\");' class='btn btn-sm btn-bg-white btn-clean  btn-hover-danger btn-icon-danger  btn-icon mr-2 my-1 my-lg-0 mr-4'><i class='la la-times-circle-o'></i></a>";
	}else{
		buttons += "<a  data-toggle='tooltip' title ='Active'  href='javascript:activateRepresentative(\""+data.id+"\",\"Active\");' class='btn btn-sm btn-bg-white btn-clean  btn-hover-success btn-icon-success  btn-icon mr-2 my-1 my-lg-0 mr-4'><i class='la la-check-circle-o'></i></a>";
	}
	buttons += "<a data-toggle='tooltip' title ='Delete'  href='javascript:deleteRepresentative(\""+data.id+"\");' class='btn btn-sm btn-bg-white btn-clean btn-icon-danger  btn-hover-danger  btn-icon mr-2 my-1 my-lg-0'><i class='la la-trash'></i></a>";
	return buttons+"</div>";
}

function actionSupplierFormatter(data, type, row) {
	var buttons = "<div class='text-center'>";
	
	if(data.status){
		buttons += "<a data-toggle='tooltip' title ='Deactive'  href='javascript:activateGrantedSupplier(\""+data.id+"\",\"Deactive\");' class='btn btn-sm btn-bg-white btn-clean  btn-hover-danger btn-icon-danger  btn-icon mr-2 my-1 my-lg-0 mr-4'><i class='la la-times-circle-o'></i></a>";
	}else{
		buttons += "<a  data-toggle='tooltip' title ='Active'  href='javascript:activateGrantedSupplier(\""+data.id+"\",\"Active\");' class='btn btn-sm btn-bg-white btn-clean  btn-hover-success btn-icon-success  btn-icon mr-2 my-1 my-lg-0 mr-4'><i class='la la-check-circle-o'></i></a>";
	}
	
	buttons += "<a data-toggle='tooltip' title ='Delete'  href='javascript:deleteGrantedSupplier(\""+data.id+"\");' class='btn btn-sm btn-bg-white btn-clean btn-icon-danger  btn-hover-danger  btn-icon mr-2 my-1 my-lg-0'><i class='la la-trash'></i></a>";
	return buttons+"</div>";
}


function statusFormatter(cellvalue, options, rowObject) {
	if (cellvalue == true)
		return '<span class="label label-lg label-light-success label-inline"> Active </span>';
	else 
		return '<span class="label label-lg label-light-danger label-inline"> Deactive </span>';
}

function deleteRepresentative(id){
	$('#preLoader').show();
	$.ajax({
		url: "deleteRepresentative",
		data: {
			id:id
		},
		type: "POST",
		dataType: 'JSON',
		secureuri: false,
		success: function(data) {
			$('#preLoader').hide();
			if (data.error != undefined && data.error != "") {
				toastr.error(data.error)
				return;
			}
			if (data.message != undefined && data.message != "") {
				toastr.success(data.message);
				representativeTable.ajax.reload();
			}
		},
		error:function(error){
			$('#preLoader').show();
		}
	});
}

function activateRepresentative(id,actionFlag){
	$('#preLoader').show();
	$.ajax({
		url: "activateRepresentative",
		data: {
			id:id,
			actionFlag:actionFlag
		},
		type: "POST",
		dataType: 'JSON',
		secureuri: false,
		success: function(data) {
			$('#preLoader').hide();
			if (data.error != undefined && data.error != "") {
				toastr.error(data.error)
				return;
			}
			if (data.message != undefined && data.message != "") {
				toastr.success(data.message);
				representativeTable.ajax.reload();
			}
		},
		error:function(error){
			$('#preLoader').show();
		}
	});
}

function addRepresentative(){
	if ($('#status').is(":checked")){
		status = true;
	}else{
		status = false;
	}
	var requestData = {
		id: null,
		name: $("#representative").val(),
		status:status
	}
	
	$('#preLoader').show();
	$.ajax({
		url: "addRepresentative",
		data: requestData,
		type: "POST",
		dataType: 'JSON',
		secureuri: false,
		success: function(data) {
			$('#preLoader').hide();
			if (data.error != undefined && data.error != "") {
				toastr.error(data.error)
				return;
			}
			if (data.message != undefined && data.message != "") {
				toastr.success(data.message);
				representativeTable.ajax.reload();
			}
			$('#representativeForm').data('bootstrapValidator').resetForm();
		},
		error:function(error){
			$('#preLoader').show();
		}
	});
}


function addGrantedSupplier(){
	var selectedData = $("#grantedSuppliers").select2('data');
	if(selectedData.length == 0  || selectedData[0].id.length <= 0){
		toastr.warning("Please select supplier");
		return;
	}
	var status = true;
	if ($('#supplierStatus').is(":checked")){
		status = true;
	}else{
		status = false;
	}
	
	$('#preLoader').show();
	$.ajax({
		url: "addGrantedSupplier",
		data: {
			supplierId:selectedData[0].id,
			supplierName:selectedData[0].name,
			status:status
		},
		type: "POST",
		dataType: 'JSON',
		secureuri: false,
		success: function(data) {
			$('#preLoader').hide();
			if (data.error != undefined && data.error != "") {
				toastr.error(data.error)
				return;
			}
			if (data.message != undefined && data.message != "") {
				toastr.success(data.message);
				grantedSupplierTable.ajax.reload();
			}
			$("#grantedSuppliers").empty();
			$(".select2-selection__placeholder").html("Select Supplier");
		},
		error:function(error){
			$('#preLoader').show();
		}
	});
}


function deleteGrantedSupplier(id){
	$('#preLoader').show();
	$.ajax({
		url: "deleteGrantedSupplier",
		data: {
			id:id
		},
		type: "POST",
		dataType: 'JSON',
		secureuri: false,
		success: function(data) {
			$('#preLoader').hide();
			if (data.error != undefined && data.error != "") {
				toastr.error(data.error)
				return;
			}
			if (data.message != undefined && data.message != "") {
				toastr.success(data.message);
				grantedSupplierTable.ajax.reload();
			}
		},
		error:function(error){
			$('#preLoader').show();
		}
	});
}

function activateGrantedSupplier(id,actionFlag){
	$('#preLoader').show();
	$.ajax({
		url: "activateSupplier",
		data: {
			id:id,
			actionFlag:actionFlag
		},
		type: "POST",
		dataType: 'JSON',
		secureuri: false,
		success: function(data) {
			$('#preLoader').hide();
			if (data.error != undefined && data.error != "") {
				toastr.error(data.error)
				return;
			}
			if (data.message != undefined && data.message != "") {
				toastr.success(data.message);
				grantedSupplierTable.ajax.reload();
			}
		},
		error:function(error){
			$('#preLoader').show();
		}
	});
}