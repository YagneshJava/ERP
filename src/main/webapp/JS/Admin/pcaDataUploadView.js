var formValidator;

$(document).ready(function(){
	$(".menu-item").removeClass('menu-item-here');
	$("#pcaDataUploadViewLI").addClass('menu-item-here');
	
	
	$('#pcaMonthPicker').datepicker({
		todayHighlight: true,
		autoclose: true,
		viewMode: "months",
		minViewMode: "months",
		format: 'M',
	}).on('changeDate', function(selected) {
		$('#pcaDataForm').bootstrapValidator('updateStatus', 'month', 'NOT_VALIDATED').bootstrapValidator('validateField', 'month');
	});
	
	$('#pcaYearPicker').datepicker({
		todayHighlight: true,
		autoclose: true,
		viewMode: "years",
		minViewMode: "years",
		format: 'yyyy',
	}).on('changeDate', function(selected) {
		$('#pcaDataForm').bootstrapValidator('updateStatus', 'year', 'NOT_VALIDATED').bootstrapValidator('validateField', 'year');
	});
	
		$('#pcaDataForm')[0].reset();
//	$('#pcaDataForm').data('bootstrapValidator').resetForm();
		
		formValidator = $('#pcaDataForm').bootstrapValidator({
		submitHandler: function(validator, form, submitButton) {
			checkFileExistanceAndUpload();
		},
		fields: {
			pcaDataFile: {
				validators: {
					notEmpty: {
						message: 'Kindly select a file to upload'
					},
				}
			},
			month: {
				validators: {
					notEmpty: {
						message: 'Kindly select a month'
					}
				}
			},
			year: {
				validators: {
					notEmpty: {
						message: 'Kindly select a year'
					}
				}
			},
		}
	});
	
	
		
		getUploadedFileData();
		
		
		
});


function getQuotationViewListFunc(){
	jQuery("#quotationViewGrid").jqGrid('setGridParam', {
		datatype: 'json', mtype: 'POST',
		page: 1, rowNum: 50, url : 'getQuotationViewList?quotationId=' + $("#quotationId").val() +
					  '&customerId=' + $("#customerId").val() +
					  '&dateType=' + $("#dateType").val() +
					  '&startEndDate=' + $("#startEndDate").val() +
					  '&status='  + $("#status").val(),
	});
	jQuery("#quotationViewGrid").trigger("reloadGrid");
}


function statusFormatter(cellvalue, options, rowObject) {
	return "<a onclick='downloadPCAHeadFile(\"" + rowObject.id + "\");' title='Download' href='javascript:void(0)'class='btn btn-sm btn-bg-white btn-clean btn-icon-info  btn-hover-light-info  btn-icon mr-2 my-1 my-lg-0' > <i class='la la-download'></i></a>";
}


function checkFileExistanceAndUpload() {
	$('#preLoader').show();
			$.ajax({
				url: "checkPCAFileExistance",
				data: {
					month:$('#pcaMonthPicker').val(),
					year:$('#pcaYearPicker').val()
				},
				type: "POST",
				dataType: 'JSON',
				secureuri: false,
				success: function(data) {
					if(data.success == false){
						savePcaFile();
					} else if( data.success == true ){
						$('#preLoader').hide();
						swal.fire({
							title: "Are you sure?",
							text: "PCA Data for the selected month already exists do you want to replace the Data?",
							icon: 'question',
							showCancelButton: true,
							focusConfirm: true
						}).then((submit) => {
							if (submit.isConfirmed) {
								updatePcaFile();
							}
						});
					}
				},error:function(data){
					$('#preLoader').hide();
				}
			});
}

function savePcaFile() {
	var form = $('#pcaDataForm')[0];
	var data = new FormData(form);
	$.ajax({
		url: "checkPCAFileExistance",
		data: data,
		type: "POST",
		enctype: 'multipart/form-data',
		dataType: 'JSON',
		processData: false,
		contentType: false,
		success: function(data) {
//			alert(data);
			jQuery("#pcaGrid").trigger("reloadGrid");
			$('#pcaDataForm')[0].reset();
			$('#preLoader').hide();
			successMsg("PCA file has been saved successfully");
		}, error: function(data) {
			$('#preLoader').hide();
		}
	});
}


function getUploadedFileData(){
	
	$("#pcaGrid").jqGrid({
			guiStyle: "bootstrap",
	        iconSet: "fontAwesome",
			url: 'getPcaHeadFiles',
			mtype:'POST',
			datatype: "json",
			colModel: [
				{label: 'Id',name: 'id', hidden:true},
				{label: 'Month',name: 'month',align: "left"},
				{label: 'Year',name: 'year',align: "left"},
				{label: 'Created Date',name: 'createdDate',align: "left"},
				{label: 'Action',name: 'action',align: "center", formatter:statusFormatter},
			],
			pager: "#pcaPager",
			viewrecords: true,
			shrinkToFit: false,
			autowidth: true,
//			height:500,
			rowNum: 50,
			rowList: [50, 100, 200],
			jsonReader: { repeatitems: false, id: "id" },
			rownumbers: true,
		});
		
		$("#pcaGrid").jqGrid('setLabel','rn','#');
		$("#pcaGrid").jqGrid('setLabel', 'action', '', {'text-align':'center'});
}

function downloadPCAHeadFile(id){
	
	var form = $("#downloadPcaFile");
	
	form.append("<input type='hidden' name='id' value='"+id+"'>");
	
	form.submit();
	
}


function updatePcaFile(){
	$('#preLoader').show();
	var form = $('#pcaDataForm')[0];
	var data = new FormData(form);
	$.ajax({
		url: "updatePCAFile",
		data: data,
		type: "POST",
		enctype: 'multipart/form-data',
		dataType: 'JSON',
		processData: false,
		contentType: false,
		success: function(data) {
//			alert(data);

			jQuery("#pcaGrid").trigger("reloadGrid");
			$('#pcaDataForm')[0].reset();
			$('#preLoader').hide();
			if (data.success == "success")
				successMsg("PCA file has been updated successfully");
			else
				errorMsg("Something went wrong");
		}, error: function(data) {
			$('#preLoader').hide();
		}
	});
}