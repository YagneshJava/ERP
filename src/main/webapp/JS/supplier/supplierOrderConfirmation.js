
var lineGridLastSelection;
var total = 0.0;
var checkedLines = [];
var unCheckedLines = [];
var allLines = [];
var orderPendingId = [];
var updateQty = 0;
var mainRowId;
var map = {};
var orderIds = [];
$(function() {

	$(".menu-item").removeClass('menu-item-here');
	$("#supplierPendingOrderLI").addClass('menu-item-here');
	$("#supplierAsCustMainMenu").addClass('menu-item-here');
	
//	removeNotification('MANUFACTURER_CHAT_NOTIFICATION');
	if (localStorage.getItem("confirmOrderDivFlag") == "true") {
		localStorage.setItem("confirmOrderDivFlag", true);
		$("#confirmOrderDiv").hide();
		$('#confirmOrderDataDiv').show();
		$('#kt_sidebar').show();
		$('#kt_sidebar .confirmOrderDataBox').show();
		getQuotationData(localStorage.getItem("confirmQuotationId"));
	} else {
		$('#confirmOrderDataDiv').hide();
		$('#kt_sidebar').hide();
		$('#kt_sidebar .confirmOrderDataBox').hide();
		$("#confirmOrderDiv").show();
		getConfirmedQTList();
	}
	
	if(localStorage.getItem("orderHistoryDataDiv") == "true"){
		$("#confirmOrderDiv").hide();
		$("#orderHistoryDataDiv").removeAttr("style");
		$("#kt_sidebar").removeAttr("style");
		$("#kt_sidebar .orderHistoryDataBox").removeAttr("style");
		getOrderQuotationData(localStorage.getItem("historyQuotationId"), localStorage.getItem("historyOrderId"), localStorage.getItem("historySupplierId"), localStorage.getItem("historySupplierName"));
	} 
	
	if (localStorage.getItem("orderHistoryDiv") == "true") {
		$('#orderTab').removeClass('active');
		$('#orderHistoryTab').addClass('active');
		$('#pendingOrderDataTable').hide();
		$('#pendingOrderSearchDiv').hide();
		$('#orderHistoryGrid').removeAttr("style");
		$('#orderHistorySearchDiv').removeAttr("style");
		$('#orderHistorySearchDiv').css("width", "30%");
		$('#orderHistoryTab').trigger('click');
	}
	
	
	$("#orderTab").click(function() {
		localStorage.setItem("pendingOrderDiv", true);
		localStorage.setItem("orderHistoryDiv", false);
		$('#pendingOrderDataTable').show();
		$('#orderHistoryGrid').css("display", "none");
		
		$('#orderHistorySearchDiv').css("display", "none");
		$('#pendingOrderSearchDiv').show();
		getConfirmedQTList();
	});
	

	$('#confirmOrderDataTable tbody').on('dblclick', 'tr', function() {
		var data = $('#confirmOrderDataTable').DataTable().row(this).data();
		getQuotationData(data.quotationId);
	});

	bindKeyEvents();
	
	
	
	
	 $('#suppOrdConfSrchDateRange').daterangepicker({
		 autoclose: true,
		 buttonClasses: ' btn',
		 applyClass: 'btn-primary',
		 cancelClass: 'btn-secondary',
		 locale: {
			 format: 'DD-MMM-YYYY',
			 cancelLabel: 'Clear'
		 },
        }, function(start, end, label) {
            $('#suppOrdConfSrchDateRange .form-control').val( start.format('DD-MMM-YYYY') + ' / ' + end.format('DD-MMM-YYYY'));
            
        });
	$('#suppOrdConfSrchDateRange').on('cancel.daterangepicker', function(ev, picker) {
//		$('#searchDateRangePickerSupplierQt').daterangepicker('clearDates');
		$('#srchStartEndDate').val('');
	});


$('#srchMain').keyup(function(event) {
		var quotationDataTable = $('#confirmOrderDataTable').DataTable();
		quotationDataTable.ajax.url('confirmOrderDataTableFilter?qry=' + $("#srchMain").val().trim() +
				'&customerId='+$('#supplierId').val()).load();
	});
});



function getQuotationData(quotationId) {
	$('#preLoader').show();
	$("#confirmOrderDiv").hide();
	$("#confirmOrderDataDiv").show();
	$('#kt_sidebar').show();
	$('#kt_sidebar .confirmOrderDataBox').show();
	$('#backBtn').show();
	localStorage.removeItem("confirmQuotationId");
	localStorage.setItem("confirmQuotationId", quotationId);
	localStorage.setItem("confirmOrderDivFlag", true);

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
					$('#savedQtId').val(data.quotationId);
					$('#savedQtRep').val(data.rep);
					$('#savedQtRef').val(data.ref);
					$('#savedFinalDate').val(data.lastDate);
					$('#savedDeliveryDate').val(data.delDate);
					$('#savedQtType').val(data.type);
					
					$("#qtInfoId").html(" "+data.quotationId+" | ");
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
						
					if (data.status === "Submitted") {
						$("#draftQtBtn").attr("disabled", true);
						$("#submitQtBtn").attr("disabled", true);
						$("#addLineBtn").attr("disabled", true);
					}

				}
				getSupplierCount(data.quotationId);
				loadConfirmOrderData(data.quotationId);
			}
		},
		error:function(){
			$('#preLoader').hide();
			toastr.error("Something went wrong!");
		},
	});

}


function manageView() {
	$('#backBtn').hide();
	localStorage.setItem("confirmOrderDivFlag", false);
	localStorage.setItem("orderHistoryDataDiv", false);
	location.reload();
}


function quotationEditFormatter(cellvalue, options, rowObject) {
	return "<a onclick='getQuotationData(\"" + rowObject.quotationId + "\");' title='Edit' href='javascript:void(0)' class = 'btn btn-sm btn-bg-white btn-clean btn-icon-warning  btn-hover-warning  btn-icon mr-1 my-1 my-lg-0'><i class='la la-pencil'></i></a>";
}


function isNumber(evt) {
	evt = (evt) ? evt : window.event;
	var charCode = (evt.which) ? evt.which : evt.keyCode;
	if (charCode > 31 && (charCode < 48 || charCode > 57)) {
		return false;
	}
	return true;
}

function updateQuotation(status) {
	$.ajax({
		url: "saveUpdateQuotation",
		data: {
			"quotationId": $('#savedQtId').val(),
			"status": status,
		},
		type: "POST",
		dataType: 'JSON',
		success: function(data) {
			if (data.error != undefined && data.error != "") {
				toastr.error(data.error)
				return;
			}
			if (data.success != undefined) {
				if (data.success === "Incorrect") {
					toastr.error("Please enter correct current password");
				} else {
					if (status == "Drafted")
						toastr.success("Quotation " + status + " successfully.");
					else
						toastr.success("Quotation " + status + " to Suppliers successfully.");

					manageView();
				}
			}
		},
		error:function(){
			$('#preLoader').hide();
			toastr.error("Something went wrong!");
		}
	});
}

function orderPopUp() {

	var grid = $('#confirmOrderDataGrid');
	var ids = grid.jqGrid('getGridParam', 'selarrrow');
	if (ids.length > 0) {
		for (i = 0; i < ids.length; i++) {
			var rowData = grid.jqGrid('getRowData', ids[i]);
//			var subGridId = $('#confirmOrderDataGrid_'+ids[i]).jqGrid('getGridParam', 'selarrrow');
			if (rowData.quotedPrice == 0) {
				$('#jqg_confirmOrderDataGrid_' + rowData.quotationLineId).prop("checked", false);
				$("#confirmOrderDataGrid").jqGrid('resetSelection', rowData.quotationLineId);
			}
		}
		swal.fire({
			title: "Are you sure?",
			text: "You want to place the Order!",
			icon: 'question',
			showCancelButton: true,
			confirmButtonText: 'Yes',
		}).then(function(submit) {
			if (submit.isConfirmed) {
				updateSupplierLineStatus('Confirmed')
			}
		});
	} else {
		toastr.error("Kindly select a line to order!");
	}
}

function lineEditFormatter(cellvalue, options, rowObject) {
	if (rowObject.quotationStatus != "Submitted")
		return "<center><a onclick='editQuotationRow(\"" + rowObject.quotationId + "\");' title='Edit' href='javascript:void(0)'><i class='material-icons dp48'>edit</i></a></center>";
	else
		return "<center><a title='Edit' href='javascript:void(0)' ><i class='material-icons dp48' style = 'color: #bfc0ff'>edit</i></a></center>";
}


function loadConfirmOrderData(quotationId) {

	$("#confirmOrderDataGrid").jqGrid({
		url: "orderLineData?quotationId=" + quotationId,
		mtype: "POST",
		datatype: "json",
		rowNum: 50,
		rowList: [50, 100, 500],
		colNames: ['Line No', 'Pip Code', 'Product',  'Required Qty', 'Avaliable Qty', 'Min Price', 'Duplicate', 'Line Id','Expiry Date','Supplier Quoted', 'Brand', 'Lead Time', 'Add Row Data'],
		colModel: [
			{ name: 'quotationLineId', index: 'lineId', sorttype: "int", hidden: true },
			{ name: 'pipCode', index: 'pipCode' },
			{ name: 'description', index: 'description' },
			{ name: 'quotedQty', index: 'quotedQty', sorttype: "int", align:'center'  },
			{ name: 'totalSupplierQuotedQty', index: 'totalSupplierQuotedQty', sorttype: "int", align:'center'  },
			{ name: 'quotedPrice', index: 'quotedPrice', align:'center' },
			{ name: 'duplicate', index: 'duplicate', hidden: true, sorttype: "int" },
			{ name: 'lineId', index: 'lineId', hidden: true },
			{ name: 'expiryDate', index: 'expiryDate',  align:'center' },
			{ name: 'supplierQuoted', index: 'supplierQuoted',  align:'center'},
			{ name: 'brandName', index: 'brandName'},
			{ name: 'leadTime', index: 'leadTime', align:'center'},
			{ name: 'addRowData', index: 'addRowData', align: 'center', formatter: addRowFormatter, hidden: true },
		],
		pager: "#confirmOrderDataPager",
		viewrecords: true,
		shrinkToFit: false,
		multiselect: true,
//		multiboxonly:true,
//		autowidth: true,
		guiStyle: "bootstrap",
		iconSet: "fontAwesome",
//		autowidth: true,
		jsonReader: { repeatitems: false, id: "quotationLineId" },
		onSelectRow: makeTotal,
		onSelectAll: makeAllTotal,
		rownumbers:true,
		height:'true',
		cellEdit:true,
		loadComplete: function() {
			var rowData = jQuery("#confirmOrderDataGrid").jqGrid('getRowData');
//			var headerCBFlag = false;
			for(var i = 0; i < rowData.length; i++){
				var lineIds = rowData[i].lineId.split(",");
				if (parseInt(lineIds.length) == 1) {
					$("#" + rowData[i].quotationLineId + ">td.sgcollapsed").html("").removeClass('ui-sgcollapsed sgcollapsed');
//					headerCBFlag = true;
				} else {
					$("#jqg_confirmOrderDataGrid_" + rowData[i].quotationLineId).hide();
					$("#jqg_confirmOrderDataGrid_" + rowData[i].quotationLineId).attr('disabled', true);
				}
			}
//			if(!headerCBFlag){
//				$("#cb_confirmOrderDataGrid").hide();
//				$("#cb_confirmOrderDataGrid").attr('disabled', true);
//			}
		},
		subGrid:true,
		subGridRowExpanded: showDetailedOrderLine,
	});
	$("#confirmOrderDataGrid").jqGrid('setLabel','rn','#');
	$('#confirmOrderDataGrid').jqGrid('setLabel', 'leadTime', '', { 'text-align': 'center' });
	$('#confirmOrderDataGrid').jqGrid('setLabel', 'supplierQuoted', '', { 'text-align': 'center' });
	$('#confirmOrderDataGrid').jqGrid('setLabel', 'quotedQty', '', { 'text-align': 'center' });
	$('#confirmOrderDataGrid').jqGrid('setLabel', 'totalSupplierQuotedQty', '', { 'text-align': 'center' });
	$('#confirmOrderDataGrid').jqGrid('setLabel', 'supplierQuoted', '', { 'text-align': 'center' });
	$('#confirmOrderDataGrid').jqGrid('setLabel', 'brandName', '', { 'text-align': 'center' });
	$('#confirmOrderDataGrid').jqGrid('setLabel', 'quotedPrice', '', { 'text-align': 'center' });
	
}

function makeTotal(quotationLineid) {

	var rowData = $('#confirmOrderDataGrid').jqGrid('getRowData', quotationLineid);
	console.log(rowData.supplierQuoted);

	if (rowData.supplierQuoted > 1) {
		if ($('#jqg_confirmOrderDataGrid_' + quotationLineid).prop("checked") == true) {

			for (var i = 0; i < tempObj.rows.length; i++) {
				$('#jqg_confirmOrderDataGrid_' + quotationLineid + "_table_" + tempObj.rows[i].lineId).prop('checked', true);
				orderIds.push(parseInt(tempObj.rows[i].lineId));
			}
		} else if ($('#jqg_confirmOrderDataGrid_' + quotationLineid).prop("checked") == false) {
			var tempObj = map[quotationLineid];
			console.log("rowData from else is " + tempObj.rows.length);
			$('#cb_confirmOrderDataGrid_' + quotationLineid + "_table").prop('checked', false);
			for (var i = 0; i < tempObj.rows.length; i++) {
				$('#jqg_confirmOrderDataGrid_' + quotationLineid + "_table_" + tempObj.rows[i].lineId).prop('checked', false);
				
				orderIds = jQuery.grep(orderIds, function(value) {
					return value != tempObj.rows[i].lineId;
				});
			}
			
		}
		
		orderCalculation(orderIds);
	} else {
		if ($('#jqg_confirmOrderDataGrid_' + quotationLineid).prop("checked") == true) {
			orderIds.push(parseInt(rowData.lineId));
			selectOrderLineAll(orderIds, "Selected");
		} else if ($('#jqg_confirmOrderDataGrid_' + quotationLineid).prop("checked") == false) {
			
			var tempArr = [];
			orderIds = jQuery.grep(orderIds, function(value) {
				tempArr.push(parseInt(rowData.lineId));
				return value != rowData.lineId;
			});
			selectOrderLineAll(tempArr, "SelectionCancelled");
			
		}
		
		orderCalculation(orderIds);
	}
}

function makeAllTotal(quotationLineid) {

	if ($('#cb_confirmOrderDataGrid').prop("checked") == true) {
		orderIds = [];
		for (var i = 0; i < quotationLineid.length; i++) {
			var rowData = $('#confirmOrderDataGrid').jqGrid('getRowData', quotationLineid[i]);
			if (parseInt(rowData.supplierQuoted) > 1) {
				$("#cb_confirmOrderDataGrid_" + quotationLineid[i] + "_table").prop('checked', true);
				var ids = rowData.lineId.split(",");
				var tempObj = map[quotationLineid[i]];

				for (var k = 0; k < tempObj.rows.length; k++) {
					$('#jqg_confirmOrderDataGrid_' + quotationLineid[i] + "_table_" + tempObj.rows[k].lineId).prop('checked', true);
					tempObj.rows[k].lineStatus = "Selected";
				}
				for (var j = 0; j < ids.length; j++) {
					orderIds.push(parseInt(ids[j]));
				}
				jQuery("#confirmOrderDataGrid_" + quotationLineid[i] + "_table").jqGrid('setGridParam', {
					data: map[quotationLineid[i]].rows, datatype: 'local', page: 1, rows: 100,
				}).trigger('reloadGrid');
				
			} else {
				if ($('#jqg_confirmOrderDataGrid_' + rowData.quotationLineId).prop("checked") == true) {
					var ids = rowData.lineId.split(",");
					orderIds.push(parseInt(ids));
				}
			}
		}
		selectOrderLineAll(orderIds, "Selected");
		orderCalculation(orderIds);
	} else if ($('#cb_confirmOrderDataGrid').prop("checked") == false) {

		for (var i = 0; i < quotationLineid.length; i++) {
			$("#cb_confirmOrderDataGrid_" + quotationLineid[i] + "_table").prop('checked', false);
			var rowData = $('#confirmOrderDataGrid').jqGrid('getRowData', quotationLineid[i]);
			if (parseInt(rowData.supplierQuoted) > 1) {
				var tempObj = map[quotationLineid[i]];
				var ids = rowData.lineId.split(",");
				for (var j = 0; j < ids.length; j++) {

					$('#jqg_confirmOrderDataGrid_' + quotationLineid[i] + "_table_" + ids[j]).prop('checked', false);
					tempObj.rows[j].lineStatus = "SelectionCancelled";
				}
				
				jQuery("#confirmOrderDataGrid_" + quotationLineid[i] + "_table").jqGrid('setGridParam', {
					data: map[quotationLineid[i]].rows, datatype: 'local', page: 1, rows: 100,
				}).trigger('reloadGrid');
			}
		}
		selectOrderLineAll(orderIds, "SelectionCancelled");
		orderIds = [];
		total = 0.0;
		$('#orderTotal').val('£ ' + total);
	}
}


function updateSupplierLineStatus(status) {

	$('#preLoader').show();
	$.ajax({
		url: "udateCustomerLineStatus",
		data: {
			"status": status,
			"quotationId": $('#savedQtId').val(),
		},
		type: "POST",
		dataType: 'JSON',
		success: function(data) {
			if (data.error != undefined && data.error != "") {
				toastr.error(data.error)
				return;
			}
			if (data.success != undefined) {
				sendAcknowledgementEmail($('#savedQtId').val());
				$('#preLoader').hide();
					swal.fire({
						title: 'Success',
						text: 'Your Order has been submitted to respective Supplier.',
						icon: 'success',
					}).then(function(submit) {
						if (submit.isConfirmed) {
							manageView();
						}
					});
				}
		},
		error:function(){
			$('#preLoader').hide();
			toastr.error("Something went wrong!");
		}
	});
}


function getConfirmedQTList() {


	$('#pendingOrderDataTable').show();
	$('#orderHistoryGrid').css("display", "none");
	if ($("#srchDateType").val() != '' && $("#srchStartEndDate").val() == '') {
		toastr.error("Kindly select the date");
		return;
	}
//	if ($("#srchDateType").val() == '' && $("#srchStartEndDate").val() != '') {
//		toastr.error("Kindly select the date type");
//		return;
//	}

	$('#confirmOrderDataTable').DataTable({
		searching: false,
		ordering: false,
		destroy: true,
		scrollY: true,
		scrollX: true,
		scrollCollapse: true,
		processing: true,
		serverSide: true,
		ajax: {

			url: 'confirmOrderDataTable?quotationId=' + $("#srchQuotationId").val().trim() +
				'&dateType=' + $("#srchDateType").val() +
				'&startEndDate=' + $("#srchStartEndDate").val()+
				'&customerId='+$('#supplierId').val() ,
			type: 'POST',
			// parameters for custom backend script demo
			columnsDef: [
				'quotationId', 'representative',
				'reference', 'createdDate', 'finalUploadDate', ''],
		},
		columns: [
			{ data: 'quotationId' },
			{ data: 'representative' },
//			{ data: 'reference' },
			{ data: 'createdDate' },
			{ data: 'finalUploadDate' },
			{ data: 'deliveryDate' },
			{ data: null,className: 'dt-center', render: quotationEditFormatter },
		],
		fixedColumns: {
			rightColumns: 1,
			leftColumns: 0
		}
	});

	//	$('#quotationSearchForm')[0].reset();
}

function bindKeyEvents() {
	$('#srchQuotationId').keypress(function(event) {
		if (event.keyCode === 13) {
			event.preventDefault();
			getConfirmedQTList();
		}
	});
}


function showDetailedOrderLine(subgrid_id, row_id) {


	var detailedOrderLineGrid = subgrid_id + "_table";
	var selRowIds = $("#confirmOrderDataGrid").jqGrid("getGridParam", "selarrrow");
	console.log("detailedOrderLineGrid " + detailedOrderLineGrid);
	pager_id = "pager_" + detailedOrderLineGrid;
	$("#" + subgrid_id).html("<table id='" + detailedOrderLineGrid + "'></table><div id='" + pager_id + "'></div>");
	$("#" + detailedOrderLineGrid).jqGrid({
		//		url: "getOrderLines?quotationLineId=" + row_id,
		//		mtype: 'POST',
		datatype: "local",
		data: map[row_id].rows,
		viewrecords: true,
		colNames: ['Line Id', 'Pip Code', 'Product', 'Required Qty', 'Available Qty', 'Quoted Price', 'Expiry Date'],
		colModel: [
			{ name: 'lineId', hidden: true },
			{ name: 'pipCode' },
			{ name: 'description' },
			{ name: 'quotedQty', align: 'center' },
			{ name: 'supplierQuotedQty', align: 'center' },
			{ name: 'quotedPrice', align: 'center' },
			{ name: 'expiryDate', align: 'center' },
		],
		rowNum: 20,
		pager: "#" + pager_id,
		localReader: { repeatitems: false, id: "lineId" },
		multiselect: true,
		sortorder: "asc",
		height: "auto",
		onSelectAll: function(lineId) {
			var tempObj = map[row_id];
			
			if ($("#cb_confirmOrderDataGrid_" + row_id + "_table").prop('checked') == true) {
				$("#jqg_confirmOrderDataGrid_" + row_id).prop('checked', true);
				for (var i = 0; i < lineId.length; i++) {
					console.log("Array Condition "+jQuery.inArray(lineId[i], orderIds) )
						var rowData = $("#" + detailedOrderLineGrid).jqGrid('getRowData', lineId[i]);
						orderIds.push(parseInt(lineId[i]));
						tempObj.rows[i].lineStatus = "Selected";
				}
				selectOrderLineAll(orderIds, 'Selected');
				orderCalculation(orderIds);
				if(jQuery.inArray(row_id, selRowIds) === -1){
			$("#jqg_confirmOrderDataGrid_" + row_id).prop('checked', true);
			$("#confirmOrderDataGrid").setSelection(row_id, false);
			}
			} else if ($("#cb_confirmOrderDataGrid_" + row_id + "_table").prop('checked') == false) {
				$("#jqg_confirmOrderDataGrid_" + row_id).prop('checked', false);
				var tempArr = [];
				for (var i = 0; i < lineId.length; i++) {
					var rowData = $("#" + detailedOrderLineGrid).jqGrid('getRowData', lineId[i]);
					orderIds = jQuery.grep(orderIds, function(value) {
						tempArr.push(parseInt(lineId[i]));
					return value !=  lineId[i];
				});
				tempObj.rows[i].lineStatus = "SelectionCancelled";
				}
				selectOrderLineAll(tempArr, 'SelectionCancelled');
				orderCalculation(orderIds);
				
					$("#jqg_confirmOrderDataGrid_" + row_id).prop('checked', false);
				$("#confirmOrderDataGrid").resetSelection(row_id, false);
				
				tempArr = [];
			}
		},
		onSelectRow: function(lineId) {
			var tempObj = map[row_id];
			var grid = $('#' + detailedOrderLineGrid);
			var ids = grid.jqGrid('getGridParam', 'selarrrow');
			var totalRecords = $("#" + detailedOrderLineGrid).getGridParam("reccount");
			if (ids.length == totalRecords) {
				$("#cb_confirmOrderDataGrid_" + row_id + "_table").prop('checked', true);
			}
			var rowData = $('#' + detailedOrderLineGrid).jqGrid('getRowData', lineId);
			if ($("#jqg_" + detailedOrderLineGrid + "_" + lineId).prop('checked') == true) {
				orderIds.push(parseInt(rowData.lineId));
				selectOrderLineAll(orderIds, 'Selected');
				$("#" + detailedOrderLineGrid).jqGrid('setCell', lineId, 'lineStatus', 'Selected');
				if(jQuery.inArray(row_id, selRowIds) === -1){
				$("#jqg_confirmOrderDataGrid_" + row_id).prop('checked', true);
				$("#confirmOrderDataGrid").setSelection(row_id, false);
				}
//				tempObj.rows[0].lineStatus = "Selected";
				for (var i = 0; i < tempObj.rows.length; i++) {
					if (tempObj.rows[i].lineId == lineId)
						tempObj.rows[i].lineStatus = "Selected";
				}
				orderCalculation(orderIds);
			} else if ($("#jqg_" + detailedOrderLineGrid + "_" + lineId).prop('checked') == false) {
				var tempArr = [];
				orderIds = jQuery.grep(orderIds, function(value) {
					tempArr.push(parseInt(rowData.lineId));
					return value != rowData.lineId;
				});
				selectOrderLineAll(tempArr, 'SelectionCancelled');
				for (var i = 0; i < tempObj.rows.length; i++) {
					if (tempObj.rows[i].lineId == lineId)
						tempObj.rows[i].lineStatus = "SelectionCancelled";
				}
//				tempObj.rows[0].lineStatus = "SelectionCancelled";
//				$("#jqg_confirmOrderDataGrid_" + row_id).prop('checked', false);
				
				orderCalculation(orderIds);
				
			}

			console.log(orderIds);
			if (ids.length > 0) {
				$("#jqg_confirmOrderDataGrid_" + row_id).prop('checked', true);
			} else {
				$("#confirmOrderDataGrid").resetSelection(row_id, false);
				$("#jqg_confirmOrderDataGrid_" + row_id).prop('checked', false);
			}
		},
		loadComplete: function(data) {
			var rowCounter = 0;
			var totalRows = $("#" + detailedOrderLineGrid).getGridParam("reccount");
			for (var i = 0; i < data.rows.length; i++) {

				if (data.rows[i].lineStatus === "Selected") {
					rowCounter++;
					jQuery(this).setSelection(data.rows[i].lineId,false);
					$("#jqg_" + detailedOrderLineGrid + "_" + data.rows[i].lineId).prop('checked', true);
				}
			}
			if (totalRows == rowCounter)
				$("#cb_confirmOrderDataGrid_" + row_id + "_table").prop('checked', true);
		}
	}).jqGrid('navGrid', "#" + pager_id, { edit: false, add: false, del: false });


	$('#' + detailedOrderLineGrid).jqGrid('setLabel', 'quotedQty', '', { 'text-align': 'center' });
	$('#' + detailedOrderLineGrid).jqGrid('setLabel', 'supplierQuotedQty', '', { 'text-align': 'center' });
	$('#' + detailedOrderLineGrid).jqGrid('setLabel', 'quotedPrice', '', { 'text-align': 'center' });
	$('#' + detailedOrderLineGrid).jqGrid('setLabel', 'expiryDate', '', { 'text-align': 'center' });
}
		
		
function selectOrderLine(lineId, status) {
	$.ajax({
		url: "updatePendingOrderLineStatus",
		data: {
			"ids": lineId,
			"status": status,
			"quotationId": localStorage.getItem("confirmQuotationId"),
		},
		type: "POST",
		dataType: 'JSON',
		success: function(data) {
		},
		error: function() {
			toastr.error("Something went wrong!");
		}
	});
}



function selectOrderLineAll(lineId, status) {
	$.ajax({
		url: "updatePendingOrderLineStatusAll",
		data: {
			"ids": lineId,
			"status": status,
			"quotationId": localStorage.getItem("confirmQuotationId"),
		},
		type: "POST",
		dataType: 'JSON',
		success: function(data) {
		},
		error: function() {
			toastr.error("Something went wrong!");
		}
	});
}

function getLinePendingData(lineId) {
	return new Promise(function(resolve, reject) {
		$.ajax({
			url: "getPendingLineDataRow",
			data: {
				"ids[]": lineId,
			},
			type: "POST",
			dataType: 'JSON',
			async: false,
			success: function(data) {
				console.log(data);
				resolve(data);
			},
			error: function(err) {
				reject(err);
			}
		});
	});
}

function addRowFormatter(cellvalue, options, rowObject) {
	if (rowObject.supplierQuoted > 1) {

		$.ajax({
			url: "getOrderLines",
			data: {
				"quotationLineId": rowObject.quotationLineId,
				"page": 1,
				"rows": 50
			},
			async: false,
			type: "POST",
			dataType: 'JSON',
			success: function(data) {
				$('#preLoader').hide();
				map[rowObject.quotationLineId] = data
				//			console.log(map[rowObject.quotationLineId] = data);
			},
			error: function() {
				$('#preLoader').hide();
				toastr.error("Something went wrong!");
			},
		});
	}
}


function orderCalculation(lineId) {
	if(lineId.length > 0){
	$.ajax({
		url: "calculateOrderLines",
		data: {
			"ids": lineId,
			"quotationId": localStorage.getItem("confirmQuotationId"),
		},
		type: "POST",
		dataType: 'JSON',
		success: function(data) {
			$('#orderTotal').val('£ ' + parseFloat(data.success).toFixed(2));
		},
	});
	}else{
		$('#orderTotal').val('£ ' + 0.0);
	}
}
