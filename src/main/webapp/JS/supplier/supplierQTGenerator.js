
var lineGridLastSelection;
var editor;
let savedDate="";
var quotationValidator;
var map = {};
var data;

$(function() {

    $(".widget ul li").prepend("<i class=\"fas fa-circle mr-1\"></i>");
    
	
	$(".menu-item").removeClass('menu-item-here');
	$("#supplierQuotGeneratePageLI").addClass('menu-item-here');
	$("#supplierAsCustMainMenu").addClass('menu-item-here');
	$(".widget ul li").prepend("<i class=\"fas fa-circle mr-1\"></i>");
	
	if (localStorage.getItem("divFlag") == "true") {
		localStorage.setItem("divFlag", true);
		$("#newQuotationDiv").hide();
		$('#editQuotationDiv').show();
		getQuotationData(localStorage.getItem("createQuotationId"));
	} else {
		$('#editQuotationDiv').hide();
		$("#newQuotationDiv").show();
	}
	$("#NewTenderModal").on("hidden.bs.modal", function() {
		$('#newQuotationForm')[0].reset();
		$('#newQuotationForm').data('bootstrapValidator').resetForm();
		$("#finalUploadDate").datepicker('update', "");
		$("#deliveryDate").datepicker('update', "");
		$("#lineFielLabel").html('');
	});
	
	$("#NewTenderModal").on('shown.bs.modal', function() {
		$(this).find('#representative').focus();
	});
	
	getQuotationList();
	getDeliveryAddress();
	
	$('#quotationDataTable tbody').on('dblclick', 'tr', function() {
		var data = $('#quotationDataTable').DataTable().row(this).data();
		getQuotationData(data.quotationId);
	});

	quotationValidator = $('#newQuotationForm').bootstrapValidator({
		submitHandler: function(validator, form, submitButton) {
			saveNewQuotation();
		},
		fields: {
			representative: {
				validators: {
					notEmpty: {
						message: 'Representative is required and cannot be empty'
					},
				}
			},
			finalUploadDate: {
				validators: {
					notEmpty: {
						message: 'Final upload date is required and cannot be empty'
					}
				}
			},
			deliveryDate: {
				validators: {
					notEmpty: {
						message: 'Delivery date is required and cannot be empty'
					}
				}
			},
//			location: {
//				validators: {
//					notEmpty: {
//						message: 'Location is required and cannot be empty'
//					},
//				}
//			},
		}
	});

	$('#finalUploadDate').datepicker({
		todayHighlight: true,
		autoclose: true,
		format: 'dd-M-yyyy',
		yearRange: 4,
		startDate: new Date(),
	}).on('changeDate', function(selected) {
		var minDate = new Date(selected.date.valueOf());
		$('#deliveryDate').datepicker('setStartDate', minDate);
		$('#newQuotationForm').bootstrapValidator('updateStatus', 'finalUploadDate', 'NOT_VALIDATED').bootstrapValidator('validateField', 'finalUploadDate');
	});
	
	$("#deliveryDate").datepicker({
		autoclose: true,
		format: 'dd-M-yyyy',
		yearRange: 4,
	}).on('changeDate', function(selected) {
		var maxDate = new Date(selected.date.valueOf());
		$('#finalUploadDate').datepicker('setEndDate', maxDate);
		$('#newQuotationForm').bootstrapValidator('updateStatus', 'deliveryDate', 'NOT_VALIDATED').bootstrapValidator('validateField', 'deliveryDate');
	});

	

	$('#savedFinalDate').datepicker({
		todayHighlight: true,
		autoclose: true,
		format: 'dd-M-yyyy',
		yearRange: 4,
		startDate: new Date(),
	}).on('changeDate', function(selected) {
		var minDate = new Date(selected.date.valueOf());
		$('#savedDeliveryDate').datepicker('setStartDate', minDate);
		if(new Date($('#savedFinalDate').val())  > new Date($("#savedDeliveryDate").val())){
			$('#savedDeliveryDate').attr("disabled", false);
			$("#savedDeliveryDate").focus();
		}
	});

	$("#savedDeliveryDate").datepicker({
		autoclose: true,
		format: 'dd-M-yyyy',
		yearRange: 4,
	}).on('changeDate', function(selected) {
		var maxDate = new Date(selected.date.valueOf());
		$('#savedFinalDate').datepicker('setEndDate', maxDate);
	});

	$('#quotedQty').keypress(function(event) {
		if (event.keyCode === 13) {
			event.preventDefault();
			if (!$("#addLineBtn").is(":disabled")) {
				addLine();
			} else {
				toastr.info("Quotation is already Submitted!");
			}

		}
	});

	$("#description").autocomplete({
		source: function(request, response) {
			$.ui.autocomplete.prototype._renderMenu = function(ul, items) {
				var self = this;
				$.each(items, function(index, item) {
					self._renderItem(ul, item);
				});
			};
			$.getJSON("searchProduct", { query: $.trim($(this.element).val()) }, response);
		},
		position: { offset: '-10 4' },
		minLength:3,
		focus: function(event, ui) {
			$("#description").val(ui.item.description+" ("+ ui.item.packSize+"'s)");
			$("#pipCode").val(ui.item.pipCode);
			$(".ui-menu-item").removeClass('tt-cursor');
			$(".ui-state-active").parent().addClass('tt-cursor');
			return false;
		},
		select: function(event, ui) {
			$("#description").val(ui.item.description+" ("+ ui.item.packSize+"'s)");
			$("#pipCode").val(ui.item.pipCode);
			$("#quotedQty").focus();
			return false;
		}
	}).data("ui-autocomplete")._renderItem = function(ul, item) {
		return $("<li></li>").data("ui-autocomplete-item", item)
			.append("<table><tr><td style='width: 270px;'>" + item.description +" ("+ item.packSize+"'s)"+"</td><td>" + item.pipCode + "</td></tr></table>")
			.appendTo(ul);
	};
	
	bindRepresentative();
	
	bindKeyEvents();
	$('#location').change(function(){
		$("#fullAddress").html('');
		$("#fullAddress").append(map[$('#location').val()]);
	});
	
	
	$('#suppCreateQtSrchDateRange').daterangepicker({
		 autoclose: true,
		 buttonClasses: ' btn',
		 applyClass: 'btn-primary',
		 cancelClass: 'btn-secondary',
		 locale: {
			 format: 'DD-MMM-YYYY',
			 cancelLabel: 'Clear'
		 },
        }, function(start, end, label) {
            $('#suppCreateQtSrchDateRange .form-control').val( start.format('DD-MMM-YYYY') + ' / ' + end.format('DD-MMM-YYYY'));
            
        });
	$('#suppCreateQtSrchDateRange').on('cancel.daterangepicker', function(ev, picker) {
//		$('#searchDateRangePickerSupplierQt').daterangepicker('clearDates');
		$('#srchStartEndDate').val('');
	});
	$('#srchMain').keyup(function(event) {
		var quotationDataTable = $('#quotationDataTable').DataTable();
		quotationDataTable.ajax.url('quotationDataTableFilter?qry=' + $("#srchMain").val().trim() +
					  '&customerId=' + $("#custId").val()).load();
	});
	
});


function getQuotationList(){

	if($("#srchDateType").val() != '' && $("#srchStartEndDate").val() == ''){
		toastr.error("Kindly select the date");
		return;
	}
//	if($("#srchDateType").val() == '' && $("#srchStartEndDate").val() != ''){
//		toastr.error("Kindly select the date type");
//		return;
//	}
	
	$('#quotationDataTable').DataTable({
		destroy: true,
		ordering: false,
		scrollX: true,
		searching: false,
		scrollCollapse: true,
		processing: true,
		serverSide: true,
		ajax: {
			url : 'quotationDataTable?quotationId=' + $("#srchQuotationId").val().trim() +
					  '&dateType=' + $("#srchDateType").val() +
					  '&startEndDate=' + $("#srchStartEndDate").val() +
					  '&status='  + $("#srchStatus").val()+
					  '&customerId=' + $("#custId").val(),
			type: 'POST',
			// parameters for custom backend script demo
			columnsDef: [
				'quotationId', 'representative',
				'createdDate', 'finalUploadDate', 'status'],
		},
		columns: [

			{title: 'Quotation ID', data: 'quotationId' },
			{title: 'Representative', data: 'representative' },
			{title: 'Created Date', data: 'createdDate' },
			{title: 'Final Date', data: 'finalUploadDate' },
			{title: 'Delivery Date', data: 'deliveryDate' },
			{title: 'Status', data: 'status', className: 'dt-center', render: statusFormatter },
			{title: 'Action', data: null, className: 'dt-center', render: quotationEditFormatter },
		],
		fixedColumns: {
			rightColumns: 0,
			leftColumns: 0
		}
	});
	
//	$('#quotationSearchForm')[0].reset();
}

function saveNewQuotation() {
	$('#NewTenderModal').modal('hide');
	$("#preLoader").show();
	localStorage.setItem("divFlag", true);
	var form = $('#newQuotationForm')[0];
	var data = new FormData(form);
	$.ajax({
		url: "saveUpdateQuotation",
		data: data,
		type: "POST",
		enctype: 'multipart/form-data',
		dataType: 'JSON',
		processData: false,
		contentType: false,
		success: function(data) {
			$("#preLoader").hide();
			if (data.lines != null && data.lines.length > 0 && data.head != undefined) {
				
				var failedRows="Issues in Row No. ";
				for(var i = 0; i < data.lines.length; i++){
					failedRows += '(' +data.lines[i].quotationLineId+ ') ';
				}
				$('#failedRows').html(failedRows);
				$('#failedTotalLine').html(data.lines.length);
				$('#StatusModal').modal('show');
				localStorage.removeItem("createQuotationId");
				localStorage.setItem("createQuotationId", data.head.quotationId);
				
			}else if(data.head != undefined){
				swal.fire({
						title: 'Success',
						text: 'Your Quotation has been created successfully .',
						icon: 'success',
					}).then(function(submit) {
						if (submit.isConfirmed) {
							getQuotationData(data.head.quotationId);
							localStorage.removeItem("createQuotationId");
							localStorage.setItem("createQuotationId", data.head.quotationId);
							$('#NewTenderModal').modal('hide');
							$('#editQuotationDiv').show();
						}
					});
			}
		},
		error:function(error){
			$("#preLoader").hide();
			$('#NewTenderModal').modal('hide');
			toastr.error("Something went wrong!");
		}

	});
	$("#newQuotationForm")[0].reset();

}

function getQuotationData(quotationId) {
//	alert(quotationId);
	$('#preLoader').show();
	$("#newQuotationDiv").hide();
	$("#editQuotationDiv").show();
	localStorage.removeItem("createQuotationId");
	localStorage.setItem("createQuotationId", quotationId);
	localStorage.setItem("divFlag", true);

	$.ajax({
		url: "getQoutationData",
		data: {
			"quotationId": quotationId
		},
		type: "POST",
		dataType: 'JSON',
		success: function(data) {
			$('#preLoader').hide();
			if (data.error != undefined && data.error != "") {
				toastr.error(data.error)
				return;
			}
			if (data.success != undefined) {
				if (data.success === "Incorrect") {
					toastr.error("Please enter correct current password");
				} else {
					console.log(formattedDate());
					if( new Date(data.lastDate)  < new Date(formattedDate()) && data.status == 'Open'){
						swal.fire({
							title: 'Final Date expired!',
							text: 'In order to alter the Quotation you need to extend the Final Date.',
							icon: 'warning',
							showCancelButton: true,
							confirmButtonText: 'Okay',
						}).then(function(submit) {
							if (submit.isConfirmed) {
								$('div').removeClass('card-collapsed');
								$("#savedFinalDate").focus();
							}

						});
					}
					savedDate = data.lastDate;
					$('#savedQtId').val(data.quotationId);
					$('#qtHeadId').html(data.quotationId);
					$('#savedQtRep').val(data.rep);
					$("#savedFinalDate").datepicker("update", data.lastDate);
					$("#savedDeliveryDate").datepicker("update", data.delDate);
					$('#quotationStatus').val(data.status);
					$("#qtInfoId").html(" "+data.quotationId);
					$("#qtInfoId").addClass("text-primary");
					if (data.status == 'Open'){
						$("#qtInfoStatus").addClass("text-warning");
						$("#qtInfoStatus").html(" " + data.status);
					}
					else if (data.status == 'Closed'){
						$("#qtInfoStatus").addClass("text-muted");
						$("#qtInfoStatus").html(" " + data.status);
					}
					else if (data.status == 'Submitted'){
						$("#qtInfoStatus").addClass("text-success");
						$("#qtInfoStatus").html(" " + data.status);
					}
					else if (data.status == 'Cancelled'){
						$("#qtInfoStatus").addClass("text-danger");
						$("#qtInfoStatus").html(" " + data.status);
					}
					else if (data.status == 'Confirmed'){
						$("#qtInfoStatus").addClass("text-primary");
						$("#qtInfoStatus").html(" " + data.status);
					}
					else if (data.status == 'PartiallyConfirmed'){
						$("#qtInfoStatus").addClass("text-success");
						$("#qtInfoStatus").html(" Submitted");
					}
					if (data.status != 'Open' || new Date(data.lastDate)  < new Date(formattedDate())) {
						$("#draftQtBtn").attr("disabled", true);
						$("#submitQtBtn").attr("disabled", true);
						$("#addLineBtn").attr("disabled", true);
						$('#savedFinalDate').attr("disabled", true);
						$('#savedDeliveryDate').attr("disabled", true);
						$('#updateQuotation').attr("disabled", true);
						$('#deleteAllLineBtn').attr("disabled", true);
						$('#updateQuotationFileBtn').attr("disabled", true);
						$('#updateLineFile').attr("disabled", true);
						$('#description').attr("disabled", true);
						$('#quotedQty').attr("disabled", true);
					}
					if(new Date(data.lastDate)  < new Date(formattedDate()) && data.status == 'Open'){
						$('#savedFinalDate').attr("disabled", false);
						$('#updateQuotation').attr("disabled", false);
//						updateQuotation('update','dateExtension');
					}
					if(data.status != 'Open'){
						$('#addUpdateDiv').hide();
					}
					$("#quotationHeadDataGrid").trigger("reloadGrid");
					loadQuotationGrid(data.quotationId);
				}
			}
		},
		error:function(){
			$('#preLoader').hide();
		},
	});

}


function loadQuotationGrid(quotationId) {

	$("#quotationGrid").jqGrid({
		url: "qoutationLineData?quotationId=" + quotationId,
		editurl: "updateLineData",
		mtype: "POST",
		datatype: "JSON",
		height: 'auto',
		rowNum: 100,
		rowList: [100, 200, 500],
		colNames: ['Line No', 'Pip Code', 'Product', 'Quantity', 'Quotaion Status', 'Actions'],
		colModel: [

			{ name: 'quotationLineId', index: 'quotationLineId', align: "center", sorttype: "int", hidden: true },
			{ name: 'pipCode', index: 'pipCode', width: '150' },
			{ name: 'description', index: 'description', frozen: true, width: '200'  },
			{
				name: 'quotedQty', index: 'quotedQty', sorttype: "int", editable: true,align:'center' , editoptions: {
					dataInit: function(element) {
						$(element).keypress(function(e) {
							if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
								return false;
							}
						});
					},
					dataEvents: [
		      		            {
		    					    type: 'keydown',
		    					    fn: function(e) {
		    					        var key = e.charCode || e.keyCode;
										if (key == 13 || key == 9) {
											var rowid = parseInt($(this).attr("id"));
											var r = $("#quotationGrid").getRowData(rowid);
											var col1 = r.quotationLineId;
											
											$("#quotationGrid").jqGrid("saveRow", col1);
											jQuery('#quotationGrid').jqGrid('restoreRow', col1);
											jQuery('#quotationGrid').jqGrid('editRow', parseInt(col1) + 1, true);
		    					        }
		    					    }
		    					},
		    					
		          		       ]
				},
				editrules: { minValue: 1 }
			},
			{ name: 'quotationStatus', index: 'quotationStatus', hidden: true },
			{ name: 'action', index: 'action', align: 'center', editable: false, formatter: actionFormatter },
		],
		pager: "#quotationPager",
		viewrecords: true,
		shrinkToFit: false,
		autowidth: true,
//		cellEdit: true,
//		cellsubmit: 'remote',
//		cellurl: 'updateLineData',
		jsonReader: { repeatitems: false, id: "quotationLineId" },
		guiStyle: "bootstrap",
		iconSet: "fontAwesome",
		rownumbers: true,
		onSelectRow: function(id) {
			
			if (id && id !== lineGridLastSelection) {
				jQuery('#quotationGrid').jqGrid('restoreRow', lineGridLastSelection);
			}
			jQuery('#quotationGrid').jqGrid('editRow', id, true);
			lineGridLastSelection = id;

    },

	});
	
	$("#quotationGrid").jqGrid('setLabel','rn','#');
	$('#quotationGrid').jqGrid('setLabel', 'quotedQty', '', { 'text-align': 'center' });
		$('#quotationGrid').jqGrid('setLabel', 'action', '', { 'text-align': 'center' });

	if ($('#quotationStatus').val() != "Open") {
		var cm = jQuery("#quotationGrid").jqGrid('getColProp', 'quotedQty');
		cm.editable = false;
	}
	
	

}

function addLine() {
	if ($("#description").val().trim() == "" || $("#description").val() == undefined) {
		toastr.error("Please select the product");
		return;
	}
	if ($("#savedQtId").val().trim() == "" || $("#savedQtId").val() == undefined) {
		toastr.error("No Quotation is selected to add line into");
		return;
	}
	if ($("#quotedQty").val().trim() == "" || $("#quotedQty").val() == undefined || isNaN($("#quotedQty").val().trim())) {
		toastr.error("Please enter correct Quantity");
		return;
	}
	if (parseInt($("#quotedQty").val().trim()) < 1) {
		toastr.error("Quantity should be greater than 0");
		return;
	}
	

	$.ajax({
		url: "addLine",
		data: {
			"quotationId": $("#savedQtId").val().trim(),
			"quotedQty": $("#quotedQty").val().trim(),
			"description": $("#description").val().trim(),
			"pipCode": $("#pipCode").val().trim(),
		},
		type: "POST",
		dataType: 'JSON',
		success: function(data) {
			if (data.error != undefined && data.error != "") {
				toastr.error(data.error)
				return;
			}
			if (data.success != undefined && data.success == "unique") {
				$("#description").val('');
				$("#quotedQty").val('');
				$("#pipCode").val('');
				$("#description").focus();
				//				jQuery("#quotationGrid").jqGrid('setGridParam', {
				//					datatype: 'json', mtype: 'POST', page: 1, rows: 100,
				//					url: 'qoutationLineData?quotationId=' + $("#savedQtId").val().trim()
				//				});
				$('#quotationGrid').trigger('reloadGrid');

			} else {
				console.log(data);
				toastr.error($("#description").val()+" is already in your Quoutation.");
				jQuery('#quotationGrid').editRow(data.success, true);
				$("#description").val('');
				$("#quotedQty").val('');
				$("#pipCode").val('');
				$("#description").focus();
			}
		},
		error:function(error){
			toastr.error(error);
		}
	});

}

function deleteLine(lineId) {
	
	jQuery("#quotationGrid").jqGrid('delRowData', lineId);

	$.ajax({
		url: "deleteLine",
		data: {
			"lineId": lineId,
		},
		type: "POST",
		dataType: 'JSON',
		success: function(data) {
			if (data.error != undefined && data.error != "") {
				toastr.error(data.error)
				return;
			}
			if (data.success != undefined) {
				jQuery("#quotationGrid").jqGrid('setGridParam', {
					datatype: 'json', mtype: 'POST', page: 1, rows: 100,
					url: 'qoutationLineData?quotationId=' + $("#savedQtId").val().trim()
				});
				$('#quotationGrid').trigger('reloadGrid');
			}
		},
		error:function(error){
			toastr.error(error);
		}
	});
}

function manageView() {
	$('#NewTenderModal').modal('hide');
	localStorage.setItem("divFlag", false);
	location.reload();
}


function quotationEditFormatter(cellvalue, options, rowObject) {
	return "<a onclick='getQuotationData(\"" + rowObject.quotationId + "\");' title='Edit' href='javascript:void(0)'class='btn btn-sm btn-bg-white btn-clean btn-icon-warning  btn-hover-warning  btn-icon mr-2 my-1 my-lg-0' > <i class='la la-pencil'></i></a>";
}

function editQuotationRow(quotationLineid) {

	var rowData = $('#quotationGrid').jqGrid('getRowData', quotationLineid);
	if ($('#quotationStatus').val() != "Submitted" && $('#quotationStatus').val() != "Confirmed") {
		if (quotationLineid && quotationLineid !== lineGridLastSelection) {
			var grid = $("#quotationGrid");
			grid.jqGrid('restoreRow', lineGridLastSelection);
			grid.jqGrid('editRow', quotationLineid, {
				keys: true,
				onEnter: function(rowid, options, event) {
					$(this).jqGrid("saveRow", quotationLineid, options);
				},
//								successfunc: function(data) {
//									alert('Success Function');
//								}

			});
			lineGridLastSelection = quotationLineid;
		}
	}



}

function isNumber(evt) {
	evt = (evt) ? evt : window.event;
	var charCode = (evt.which) ? evt.which : evt.keyCode;
	if (charCode > 31 && (charCode < 48 || charCode > 57)) {
		return false;
	}
	return true;
}

function updateQuotation(status, flag) {
		
	
	$('#preLoader').show();
	$.ajax({
		url: "saveUpdateQuotation",
		data: {
			"quotationId": $('#savedQtId').val(),
			"finalUploadDate": $('#savedFinalDate').val().trim(),
			"deliveryDate": $('#savedDeliveryDate').val().trim(),
			"status": status,
			"flag": flag,
		},
		type: "POST",
		dataType: 'JSON',
		success: function(data) {
			$('#preLoader').hide();
			if (data.error != undefined && data.error != "") {
				toastr.error(data.error)
				return;
			}
			if (data.head != undefined) {
					if (flag === 'submit') {
						swal.fire({
							title: 'Success',
							text: 'Your Quotation has been successfully submitted to Suppliers.',
							icon: 'success',
						}).then(function(submit) {
							if (submit.isConfirmed) {
								manageView();
							}
						});
					} else if (flag === 'update') {
						
							swal.fire({
							title: 'Success',
							text: 'Quotation has been successfully Updated.',
							icon: 'success',
						}).then(function(submit) {
							if (submit.isConfirmed) {
								location.reload();
							}
						});
						
					} else if (flag === 'cancel') {
						swal.fire({
							title: 'Success',
							text: 'Quotation has been successfully Cancelled.',
							icon: 'success',
						}).then(function(submit) {
							if (submit.isConfirmed) {
								manageView();
							}
						});
					}
				}
		},
		error:function(error){
			$("#preLoader").hide();
			toastr.error("Something went wrong!");
		}
	});
}

function resetQtModal() {
	$('#newQuotationForm')[0].reset();
	$('#newQuotationForm').data('bootstrapValidator').resetForm();
	$("#finalUploadDate").datepicker('update', "");
	$("#deliveryDate").datepicker('update', "");
	$("#lineFielLabel").html('');
}

function sbmtQtPopUp(status, text, flag) {

	var records = jQuery('#quotationGrid').jqGrid('getGridParam', 'reccount');
	if (records < 1 && flag == "submit") {
		toastr.error('There is no line to Submit!')
		return;
	}
	if(flag == "update"){
		if ($('#savedFinalDate').val().trim() == "" || $('#savedFinalDate').val().trim() == undefined) {
			toastr.error("Kindly select the Final Date!")
			return;
		}
		if (new Date($('#savedFinalDate').val()) > new Date($("#savedDeliveryDate").val()) ) {
			toastr.error("Delivery date should be after Final Date!")
			return;
		}
		if($("#savedDeliveryDate").val() == ""){
			toastr.error("Kindly select the Final Date!")
			return;
		}
	}
	swal.fire({
		title: 'Are you sure?',
		text: text,
		icon: 'question',
		showCancelButton: true,
		confirmButtonText: 'Yes',
	}).then(function(submit) {
		if (submit.isConfirmed) {
			updateQuotation(status, flag)
		}
	});
}

function lineEditFormatter(cellvalue, options, rowObject) {
	if (rowObject.quotationStatus != "Submitted")
		return "<a onclick='editQuotationRow(\"" + rowObject.quotationId + "\");' title='Edit' href='javascript:void(0)'><i class='material-icons dp48'>edit</i></a>";
	else
		return "<a title='Edit' href='javascript:void(0)' ><i class='material-icons dp48' style = 'color: #bfc0ff'>edit</i></a>";
}



function actionFormatter(cellvalue, options, rowObject) {
	if(new Date(formattedDate()) <= new Date(savedDate)){
		if ($('#quotationStatus').val() == "Open") {
		return "<a onclick='editQuotationRow(\"" + rowObject.quotationLineId + "\");' title='Edit' href='javascript:void(0)'class='btn btn-sm btn-bg-white btn-clean btn-icon-warning  btn-hover-warning  btn-icon mr-2 my-1 my-lg-0 mr-4' > <i class='la la-pencil'></i></a>" + "<a onclick='deleteLine(\"" + rowObject.quotationLineId + "\");' title='Delete' href='javascript:void(0)'class='btn btn-sm btn-bg-white btn-clean btn-icon-danger  btn-hover-danger  btn-icon mr-2 my-1 my-lg-0 mr-4' > <i class='la la-trash'></i></a>"+"<a onclick='getAISuggestions(\"" + rowObject.pipCode + "\");' title='Alternates' href='javascript:void(0)'class='btn btn-sm btn-bg-white btn-clean btn-icon-info  btn-hover-info  btn-icon mr-2 my-1 my-lg-0' > <i class='la la-info'></i></a><center>";
		} else {
		return "<a title='Edit' href='javascript:void(0)' class='btn btn-sm btn-bg-white btn-clean   btn-hover-light-warning  btn-icon mr-2 my-1 my-lg-0 mr-4' > <i class='la la-pencil'></i></a>" + "<a title='Delete' href='javascript:void(0)'class='btn btn-sm btn-bg-white btn-clean  btn-hover-light-danger  btn-icon mr-2 my-1 my-lg-0 mr-4' > <i class='la la-trash'></i></a>"+"<a title='Alternates' href='javascript:void(0)'class='btn btn-sm btn-bg-white btn-clean btn-hover-primary  btn-icon mr-2 my-1 my-lg-0' > <i class='la la-info'></i></a><center>";
		}
	} else {
		return "<a title='Edit' href='javascript:void(0)' class='btn btn-sm btn-bg-white btn-clean   btn-hover-light-warning  btn-icon mr-2 my-1 my-lg-0 mr-4' > <i class='la la-pencil'></i></a>" + "<a title='Delete' href='javascript:void(0)'class='btn btn-sm btn-bg-white btn-clean  btn-hover-light-danger  btn-icon mr-2 my-1 my-lg-0 mr-4' > <i class='la la-trash'></i></a>"+"<a title='Alternates' href='javascript:void(0)'class='btn btn-sm btn-bg-white btn-clean btn-hover-primary  btn-icon mr-2 my-1 my-lg-0' > <i class='la la-info'></i></a><center>";
	}
}

function statusFormatter(cellvalue, options, rowObject) {
	if (cellvalue == 'Open')
		return '<span class="label label-lg label-light-warning label-inline">' + cellvalue + '</span>';
	else if (cellvalue == 'Closed')
		return '<span class="label label-lg label-light-muted label-inline">' + cellvalue + '</span>';
	else if (cellvalue == 'Submitted')
		return '<span class="label label-lg label-light-success label-inline">' + cellvalue + '</span>';
	else if (cellvalue == 'Cancelled')
		return '<span class="label label-lg label-light-danger label-inline">' + cellvalue + '</span>';
	else if (cellvalue == 'Confirmed')
		return '<span class="label label-lg label-light-primary label-inline">' + cellvalue + '</span>';
	else if (cellvalue == 'PartiallyConfirmed')
		return '<span class="label label-lg label-light-success label-inline">Submitted</span>';
}

function deleteAllLinesPop() {

	var records = jQuery('#quotationGrid').jqGrid('getGridParam', 'reccount');
	if (records < 1) {
		toastr.error('There is no line to Delete!')
		return;
	}

	swal.fire({
		title: 'Are you sure?',
		text: "You want to delete all the lines!",
		icon: 'question',
		showCancelButton: true,
		confirmButtonText: 'Yes',
	}).then(function(submit) {
		if (submit.isConfirmed) {
			deleteAllLines();
		}
	});
}

function deleteAllLines() {
$('#preLoader').show();
	$.ajax({
		url: "deleteAllLines",
		data: {
			"quotationId": $("#savedQtId").val().trim(),
		},
		type: "POST",
		dataType: 'JSON',
		success: function(data) {
			if (data.error != undefined && data.error != "") {
				$('#preLoader').hide();
				toastr.error(data.error)
				return;
			}
			if (data.success != undefined) {
				$('#preLoader').hide();
				swal.fire({
					title: 'Success',
					text: 'All lines deleted.',
					icon: 'success',
				});
				jQuery("#quotationGrid").jqGrid('setGridParam', {
					datatype: 'json', mtype: 'POST', page: 1, rows: 100, url: 'qoutationLineData?quotationId=' + $("#savedQtId").val().trim()
				});
				$('#quotationGrid').trigger('reloadGrid');
			}
		},
		error:function(error){
			$("#preLoader").hide();
			toastr.error(error);
		}
	});
}


function udpateQuotationLineFilePopUp() {

	if ($('#updateLineFile').val() ==''){
		toastr.error('Kindly select a file to upload.');
	return;
}

swal.fire({
	title: 'Are you sure?',
	text: 'You want to upload the Quotation file!',
	icon: 'question',
	showCancelButton: true,
	confirmButtonText: 'Yes',
}).then(function(submit) {
	if (submit.isConfirmed) {
		udpateQuotationLineFile();
	}
});
	
}


function udpateQuotationLineFile() {
	$('#preLoader').show();
	var form = $('#updateQuotationLineFile')[0];
	var data = new FormData(form);
	data.append("quotationId", $('#savedQtId').val());
	data.append("flag", "fileUpdate");

	$.ajax({
		url: "saveUpdateQuotation",
		data: data,
		type: "POST",
		enctype: 'multipart/form-data',
		dataType: 'JSON',
		processData: false,
		contentType: false,
		success: function(data) {
			$("#updateQuotationLineFile")[0].reset();
			$('#preLoader').hide();
			$('#updateLineFile').html('');
				if (data.lines != undefined && data.lines.length > 0 ) {
							var failedRows = "Issues in Row No. ";
							for (var i = 0; i < data.lines.length; i++) {
								failedRows += '(' + data.lines[i].quotationLineId + ') ';
							}
							$('#newQuotaionSaveBtn').hide();
							$('#updateQuotaionBtn').show();
							$('#failedRows').html(failedRows);
							$('#failedTotalLine').html(data.lines.length);
							$('#StatusModal').modal('show');
							$('#quotationGrid').trigger('reloadGrid');
				} else {

					swal.fire({
						title: 'Success',
						text: 'Quotation file has been successfully uploaded.',
						icon: 'success',
					}).then(function(submit) {
						if (submit.isConfirmed) {
							jQuery("#quotationGrid").jqGrid('setGridParam', {
								datatype: 'json', mtype: 'POST', page: 1, rows: 100,
								url: 'qoutationLineData?quotationId=' + $("#savedQtId").val().trim()
							});
							$('#quotationGrid').trigger('reloadGrid');
						}
					});
					}
					
		},
		error:function(error){
			$("#preLoader").hide();
			toastr.error("Something went wrong!");
		}

	});

}

function bindKeyEvents(){
	$('#srchQuotationId').keypress(function(event) {
		if (event.keyCode === 13) {
			event.preventDefault();
				getQuotationList();
		}
	});
}


function bindRepresentative(){
	$.ajax({
		url:"getRepresentative",
		type:"POST",
		data:{
			"customerId":$('#custId').val(),
		},
		dataType: 'JSON',
		success:function(data){
			if (data.success == "success") {
				for (var i = 0; i < data.rep.length; i++) {
					$('#representative').append('<option value="' + data.rep[i].name + '">' + data.rep[i].name + '</option>');
				}
			}				
		}
	});
}

function showSecondDiv(){
	$('#StatusModal').modal('hide');
	getQuotationData(localStorage.getItem("createQuotationId"));
	$('#editQuotationDiv').show();
}

