var lineGridLastSelection;
var supplierMap = {};

$(document).ready(function() {
	
	$(".menu-item").removeClass('menu-item-here');
	$("#manufacturerTenderPageLI").addClass('menu-item-here');
//	getDeliveryAddress();
		removeNotification('QUOTATION_NOTIFICATION');
		
		getSupplierDeliveryAddress();
	if (localStorage.getItem("supplierDivFlag") == "true") {
		localStorage.setItem("supplierDivFlag", true);
		$("#newQuotationSupplierDiv").hide();
		$('#editQuotationSupplierDiv').show();
		$('#kt_sidebar').show();
		getQuotationData(localStorage.getItem("supplierQuotationId"), localStorage.getItem("supplierAddressId"));
	} else {
		$('#editQuotationSupplierDiv').hide();
		$('#kt_sidebar').hide();
		$("#newQuotationSupplierDiv").show();
		console.log("Teste "+localStorage.getItem("supplierAddressId"));
		if(localStorage.getItem("supplierAddressId")!= null && localStorage.getItem("supplierAddressId") != "undefined"){
			$('#supplierLocation').val(localStorage.getItem("supplierAddressId"));
			$("#supplierFullAddress").html('');
			$("#supplierFullAddress").append(supplierMap[localStorage.getItem("supplierAddressId")]);
		}
	}

	getSupplierQTData();

	$('#quotationHeadDataTable tbody').on('dblclick', 'tr', function() {
		var data = $('#quotationHeadDataTable').DataTable().row(this).data();
		getQuotationData(data.quotationId, $('#supplierLocation').val());
	});
	
	bindKeyEvents();
	
	 $('#manufacturerDateRangePicker').daterangepicker({
        autoclose:true,
            buttonClasses: ' btn',
            applyClass: 'btn-primary',
            cancelClass: 'btn-secondary',
            locale: {
                format: 'DD-MMM-YYYY',
                cancelLabel: 'Clear'
            },
        }, function(start, end, label) {
            $('#manufacturerDateRangePicker .form-control').val( start.format('DD-MMM-YYYY') + ' / ' + end.format('DD-MMM-YYYY'));
//            $('#searchDateRangePickerSupplierQt').val('').datepicker('update');
        });
	
	$('#manufacturerDateRangePicker').on('cancel.daterangepicker', function(ev, picker) {
//		$('#searchDateRangePickerSupplierQt').daterangepicker('clearDates');
		$('#srchStartEndDate').val('');
	});

	

$('#srchMain').keyup(function(event) {
	
		var quotationDataTable = $('#quotationHeadDataTable').DataTable();
		quotationDataTable.ajax.url('qoutationGlobalFilterForSupplierTable?qry=' + $("#srchMain").val().trim() +
				'&supplierId='+$('#manufacturerId').val()+
				'&addressId=' + $('#supplierLocation').val()).load();
	});

});

function quotationEditFormatter(cellvalue, options, rowObject) {
	return "<center><a onclick='getQuotationData(\"" + rowObject.quotationId + "\", \"" + $('#supplierLocation').val() + "\");' title='Edit' href='javascript:void(0)' class = 'btn btn-sm btn-bg-white btn-clean btn-icon-warning  btn-hover-warning  btn-icon mr-1 my-1 my-lg-0'><i class='la la-pencil'></i></a></center>";
}

function changeValueFormatter(cellvalue, options, rowObject) {
	if (rowObject.status == "Quoting")
		return '<span class="label label-lg label-light-warning label-inline">Quoted</span>';
	if (rowObject.status == "Opened")
		return '<span class="label label-lg label-light-success label-inline">Opened</span>';
	if (rowObject.status == "New")
		return '<span class="label label-lg label-light-danger label-inline">New</span>';

}

function getQuotationData(quotationId, addressId) {

	$("#newQuotationSupplierDiv").hide();
	$("#editQuotationSupplierDiv").show();
	$('#kt_sidebar').show();
	$('#backBtn').show();
	localStorage.removeItem("supplierQuotationId");
	localStorage.removeItem("supplierAddressId");
	localStorage.setItem("supplierQuotationId", quotationId);
	localStorage.setItem("supplierAddressId", addressId);
	localStorage.setItem("supplierDivFlag", true);
	$("#preLoader").show();
	$.ajax({
		url: "getQoutationData",
		data: {
			"quotationId": quotationId,
		},
		type: "POST",
		dataType: 'JSON',
		success: function(data) {
			if (data.error != undefined && data.error != "") {
				toastr.error(data.error)
				return;
			}
			if (data.success != undefined) {
				$("#preLoader").hide();
				if (data.success === "Incorrect") {
					toastr.error("Please enter correct current password");
				} else {
					$('#savedQtId').val(data.quotationId);
					$('#savedQtRep').val(data.rep);
					$('#savedQtRef').val(data.ref);
					$('#savedFinalDate').val(data.lastDate);
					$('#savedDeliveryDate').val(data.delDate);
					$('#savedQtType').val(data.type);
					$('#savedStatus').val(data.status);
					$('#savedAddressId').val(addressId);
					$("#qtInfoId").html(" "+data.quotationId+" | ");
					if (data.status == "Submitted" || $('#savedStatus').val() == "PartiallyConfirmed") {
						$('#confirmQtBtn').attr('disabled', false);
					}
					//					$("#quotationGrid").trigger("reloadGrid");
					loadQuotationLineGrid(data.quotationId, addressId);
				}
			}
		},error:function(){
			$("#preLoader").hide();
			toastr.error("Something went wrong!");
		}
	});
}

function loadQuotationLineGrid(quotationId, addressId) {
	
	$("#quotationGrid").jqGrid({
		url: "qoutationLineForSupplier?quotationId=" + quotationId + "&supplierId=" + $('#manufacturerId').val()+"&addressId="+addressId,
		editurl: "updateSupplierLineData",
		mtype: "POST",
		datatype: "json",
		height: 'auto',
		rowNum: 100,
		rowList: [100, 200, 500],
		colNames: ['Line No', 'Pip Code', 'Product', 'Quoted Qty', 'Available Qty', 'Quotaion Status', 'Price', 'Potential', 'Brand', 'Lead Time', 'Location', 'Expiry Date', 'Actions'],
		colModel: [
			//				{ name: 'edit', index: 'edit', width: 60, align: "left", formatter: lineEditFormatter },
			{ name: 'supplierQuotationLineId', index: 'supplierQuotationLineId', sorttype: "int", hidden: true },
			{ name: 'pipCode', index: 'pipCode',  },
			{ name: 'description', index: 'description' },
			{ name: 'quotedQty', index: 'quotedQty',align:'center' },
			{
				name: 'supplierQuotedQty', index: 'supplierQuotedQty', align:'center', editable: true, editoptions: {
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
										if (key == 13) {
											var nextRowId = $(this).closest('tr').next('tr').attr("id");
											var rowid = parseInt($(this).attr("id"));
											var r = $("#quotationGrid").getRowData(rowid);
											var col1 = r.supplierQuotationLineId;
											
											$("#quotationGrid").jqGrid("saveRow", col1);
											jQuery('#quotationGrid').jqGrid('restoreRow', col1);
											jQuery('#quotationGrid').jqGrid('editRow', nextRowId, true);
											jQuery('#quotationGrid').jqGrid('setSelection', nextRowId, false);
		    					        }
		    					    }
		    					},
		    					
		          		       ]
				}, editrules: {
					custom_func: validateQty,
					custom: true,
					required: true
				},
			},
			{ name: 'quotationStatus', index: 'quotationStatus', sorttype: "String", hidden: true },
			{
				name: 'quotedPrice', index: 'quotedPrice', editable: true, formatter: blankFormatter,align:'center', editoptions: {
					dataInit: function(element) {
						$(element).keypress(function(e) {
							if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57) && e.which != 46) {
								return false;
							}
						});
					},
				dataEvents: [
		      		            {
		    					    type: 'keydown',
		    					    fn: function(e) {
		    					        var key = e.charCode || e.keyCode;
										if (key == 13) {
											var nextRowId = $(this).closest('tr').next('tr').attr("id");
											var rowid = parseInt($(this).attr("id"));
											var r = $("#quotationGrid").getRowData(rowid);
											var col1 = r.supplierQuotationLineId;
											
											$("#quotationGrid").jqGrid("saveRow", col1);
											jQuery('#quotationGrid').jqGrid('restoreRow', col1);
											jQuery('#quotationGrid').jqGrid('editRow', nextRowId, true);
											jQuery('#quotationGrid').jqGrid('setSelection', nextRowId, false);
		    					        }
		    					    }
		    					},
		    					
		          		       ]
				},
				editrules: { minValue: 0.01, required: true }, formatoptions: { decimalPlaces: 2 }, 
			},
			{ name: 'sellOverview', index: 'sellOverview', editable: false, formatter: sellOverviewFormatter,align:'center' },
			{ name: 'brandName', index: 'brandName',editable : true,
			 editoptions:{
				dataEvents: [
		      		            {
		    					    type: 'keydown',
		    					    fn: function(e) {
		    					        var key = e.charCode || e.keyCode;
										if (key == 13) {
											var nextRowId = $(this).closest('tr').next('tr').attr("id");
											var rowid = parseInt($(this).attr("id"));
											var r = $("#quotationGrid").getRowData(rowid);
											var col1 = r.supplierQuotationLineId;
											
											$("#quotationGrid").jqGrid("saveRow", col1);
											jQuery('#quotationGrid').jqGrid('restoreRow', col1);
											jQuery('#quotationGrid').jqGrid('editRow', nextRowId, true);
											jQuery('#quotationGrid').jqGrid('setSelection', nextRowId, false);
		    					        }
		    					    }
		    					},
		    					
		          		       ]
			} },
			{ name: 'leadTime', index: 'leadTime',editable:true,
			 editoptions:{
				dataEvents: [
		      		            {
		    					    type: 'keydown',
		    					    fn: function(e) {
		    					        var key = e.charCode || e.keyCode;
										if (key == 13) {
											var nextRowId = $(this).closest('tr').next('tr').attr("id");
											var rowid = parseInt($(this).attr("id"));
											var r = $("#quotationGrid").getRowData(rowid);
											var col1 = r.supplierQuotationLineId;
											
											$("#quotationGrid").jqGrid("saveRow", col1);
											jQuery('#quotationGrid').jqGrid('restoreRow', col1);
											jQuery('#quotationGrid').jqGrid('editRow', nextRowId, true);
											jQuery('#quotationGrid').jqGrid('setSelection', nextRowId, false);
		    					        }
		    					    }
		    					},
		    					
		          		       ]
			}
			},
			{ name: 'location', index: 'location',hidden:true },
			{ name: 'expiryDate',
				index: 'expiryDate',
//				formatter: 'date',
				sortable: false,
				align: 'centre',
				editable: true,
				editoptions: {
					size: 20,
					maxlengh: 20,
					dataInit: function(element) {
						$(element).datepicker({
							todayHighlight: true,
							autoclose: true,
							format: 'dd-M-yyyy',
							yearRange: 4,
							setDate:$(this).val(),
						}).on('changeDate', function(selected) {
							$("#"+$(this).attr("id")).focus();
						});
					},
					dataEvents: [
		      		            {
		    					    type: 'keydown',
		    					    fn: function(e) {
		    					        var key = e.charCode || e.keyCode;
										if (key == 9 ||key == 13) {
											var nextRowId = $(this).closest('tr').next('tr').attr("id");
											$(this).datepicker('hide');
											var rowid = parseInt($(this).attr("id"));
											var r = $("#quotationGrid").getRowData(rowid);
											var col1 = r.supplierQuotationLineId;
											
											$("#quotationGrid").jqGrid("saveRow", col1);
											jQuery('#quotationGrid').jqGrid('restoreRow', col1);
											jQuery('#quotationGrid').jqGrid('editRow', nextRowId, true);
											jQuery('#quotationGrid').jqGrid('setSelection', nextRowId, false);
		    					        }
		    					    }
		    					},
		          		       ]
				},
//				editrules: {
//					date: true,
//					minValue: 0
//				},
				 formatoptions: { newformat: "d-M-Y" }
			},

			{ name: 'action', index: 'action', align :'center', editable: false, formatter: lineEditFormatter },

		],
		pager: "#quotationPager",
		viewrecords: true,
		shrinkToFit: false,
//		autowidth: true,
//		cellEdit: true,
//		cellsubmit: 'remote',
//		cellurl: 'updateSupplierLineData',
		multiselect: true,
		jsonReader: { repeatitems: false, id: "supplierQuotationLineId" },
		guiStyle: "bootstrap",
		iconSet: "fontAwesome",
		loadonce: true,
		rownumbers: true,
		ariacellprop : "aria-labelledby",
		loadonce: true,
		loadComplete: function(data) {
			for (var i = 0; i < data.rows.length; i++) {
				if (data.rows[i].lineStatus == 'Confirmed') {
					$('#jqg_quotationGrid_' + data.rows[i].supplierQuotationLineId).prop('checked', true);
				}
			}
		}, onSelectRow: function(id) {
			//			debugger;
			if (id && id !== lineGridLastSelection) {
				jQuery('#quotationGrid').jqGrid('restoreRow', lineGridLastSelection);
			}
			jQuery('#quotationGrid').jqGrid('editRow', id, true);
			lineGridLastSelection = id;

    },
		afterSaveCell: function(rowid) {
			checkBoxCheck(rowid);
		},
	});
	
	$("#quotationGrid").jqGrid('setLabel','rn','#');
	$('#quotationGrid').jqGrid('setLabel', 'supplierQuotedQty', '', { 'text-align': 'center' });
	$('#quotationGrid').jqGrid('setLabel', 'quotedQty', '', { 'text-align': 'center' });
	$('#quotationGrid').jqGrid('setLabel', 'quotedQty', '', { 'text-align': 'center' });
	$('#quotationGrid').jqGrid('setLabel', 'quotedPrice', '', { 'text-align': 'center' });
	$('#quotationGrid').jqGrid('setLabel', 'sellOverview', '', { 'text-align': 'center' });
	$('#quotationGrid').jqGrid('setLabel', 'action', '', { 'text-align': 'center' });
	
	if($('#savedStatus').val() == "Submitted" || $('#savedStatus').val() == "PartiallyConfirmed"){
		var cm = jQuery("#quotationGrid").jqGrid('getColProp', 'quotedPrice');
		cm.editable = true;
	}else {
		var cm = jQuery("#quotationGrid").jqGrid('getColProp', 'quotedPrice');
		cm.editable = false;
	}
	
//	$("#quotationGrid").jqGrid('bindKeys');
	$("#quotationGrid").jqGrid("setAriaGrid", {
		onEnterCell : function( rowid, iRow, iCol, event) {
			alert( "rowid="+rowid+" rowIndex=" + iRow +"columnIndex="+iCol)
		}
	});
	
}



function editQuotationRow(quotationLineid) {

	var rowData = $('#quotationGrid').jqGrid('getRowData', quotationLineid);
	if (rowData.quotationStatus != "Submitted") {
		if (quotationLineid && quotationLineid !== lineGridLastSelection) {
			var grid = $("#quotationGrid");
			grid.jqGrid('restoreRow', lineGridLastSelection);
			grid.jqGrid('editRow', quotationLineid, {
				keys: true,
				onEnter: function(rowid, options, event) {
					$(this).jqGrid("saveRow", quotationLineid, options);
				},
			});
			lineGridLastSelection = quotationLineid;
		}
	}
}


function lineEditFormatter(cellvalue, options, rowObject) {
//	if(rowObject.brandName != ''){
//		var cm = $("#quotationGrid").jqGrid('getColProp','brandName');
//        cm.editable = false;
//	}
	if ($('#savedStatus').val() == "Submitted" || $('#savedStatus').val() == "PartiallyConfirmed") {
		return "<a onclick='editQuotationRow(\"" + rowObject.supplierQuotationLineId + "\");' title='Edit' href='javascript:void(0)' class='btn btn-sm btn-bg-white btn-clean btn-icon-warning  btn-hover-warning  btn-icon mr-2 my-1 my-lg-0' > <i class='la la-pencil'></i></a>";
	} else {
		return "<a title='Edit' href='javascript:void(0)' class='btn btn-sm btn-bg-white btn-clean   btn-hover-light-warning  btn-icon mr-2 my-1 my-lg-0' > <i class='la la-pencil'></i></a>";
	}
}

function uploadPriceList() {
	var form = $('#supplierPriceList')[0];
	var data = new FormData(form);
	$.ajax({
		url: "uploadSupplierPriceList",
		data: data,
		type: "POST",
		enctype: 'multipart/form-data',
		dataType: 'JSON',
		processData: false,
		contentType: false,
		success: function(data) {

			if (data.error != undefined && data.error != "") {
				toastr.error(data.error)
				return;
			}
			if (data.success != undefined) {
				if (data.success === "Incorrect") {
					toastr.error("Please enter correct current password");
				} else {
					toastr.success(data.success);
				}
			}
		},
		error:function(){
			toastr.error("Something went wrong!");
		}

	});

}

function confirmQtPopUp() {

	var grid = $('#quotationGrid');
	var ids = grid.jqGrid('getGridParam', 'selarrrow');
	if (ids.length > 0) {

		for (i = 0; i < ids.length; i++) {
			var rowData = grid.jqGrid('getRowData', ids[i]);
			if (rowData.quotedPrice === '') {
				toastr.error("Kindly add price for " + rowData.description + " with pipcode " + rowData.pipCode);
				return;
			}else{
				$("#quotationGrid").jqGrid("saveRow", ids[i]);
			}
		}

		swal.fire({
			title: "Are you sure?",
			text: "You want to confirm the selected Lines!",
			icon: 'question',
			showCancelButton: true,
		}).then(function(submit) {
			if (submit.isConfirmed) {
				updateLineStatus('Confirmed');
			}
		});
	} else {
		toastr.error("Kindly select a line for confirmation!");
	}
}


function updateLineStatus(status) {
	var grid = $('#quotationGrid');
	var ids = grid.jqGrid('getGridParam', 'selarrrow');
	$('#preLoader').show();
	$.ajax({
		url: "udateLineStatus",
		data: {
			"ids": ids,
			"status": status,
			"quotationId": $('#savedQtId').val(),
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
						text: 'Lines successfully Confirmed',
						icon: 'success',
					}).then(function(submit) {
						if (submit.isConfirmed) {
							manageView();
						}
					});
				}
		},
		error:function(){
			$("#preLoader").hide();
			toastr.error("Something went wrong!");
		}
	});
}

function manageView() {
	localStorage.setItem("supplierDivFlag", false);
	$('#backBtn').hide();
	location.reload();
}

function blankFormatter(cellvalue, options, rowObject) {
	if (cellvalue === undefined || cellvalue == 0)
		return cellvalue = '';
	else {
		return $.fn.fmatter.call(this, "currency", cellvalue, options);
	}
}

function getSupplierQTData(){
	
	if($("#srchDateType").val() != '' && $("#srchStartEndDate").val() == ''){
		toastr.error("Kindly select the date");
		return;
	}
//	if($("#srchDateType").val() == '' && $("#srchStartEndDate").val() != ''){
//		toastr.error("Kindly select the date type");
//		return;
//	}
	
	$('#quotationHeadDataTable').DataTable({
		ordering: false,
		destroy:true,
		searching:false,
		scrollY: true,
//		scrollX: true,
		scrollCollapse: true,
		processing: true,
		serverSide: true,
		ajax: {
			
			url : 'qoutationDataForSupplierTable?quotationId=' + $("#srchQuotationId").val().trim() +
					  '&dateType=' + $("#srchDateType").val() +
					  '&startEndDate=' + $("#srchStartEndDate").val() +
					  '&status='  + $("#srchStatus").val() +
					  '&supplierId='+$('#manufacturerId').val()+
					  '&addressId=' + $('#supplierLocation').val(),
			type: 'POST',
			// parameters for custom backend script demo
			columnsDef: ['quotationId', 'createdDate', 'finalUploadDate', 'deliveryDate', 'Status', ''],
		},
		columns: [
			{ data: 'quotationId' },
			{ data: 'createdDate' },
			{ data: 'finalUploadDate' },
			{ data: 'deliveryDate' },
//			{ data: 'status'},
			{ data: 'status',  className: 'dt-center', render: changeValueFormatter },
			{ data: null,  className: 'dt-center', render: quotationEditFormatter },
		],
		fixedColumns: {
			rightColumns: 1,
			leftColumns: 0
		}, createdRow: function(row, data, dataIndex) {
			if (data.status == 'New')  {
				$('td', row).addClass('dataTableColorClass');
			}
		}
	});

}

function bindKeyEvents(){
	$('#srchQuotationId').keypress(function(event) {
		if (event.keyCode === 13) {
			event.preventDefault();
				getSupplierQTData();
		}
	});
}


function sellOverviewFormatter(cellvalue, options, rowObject) {
	if ($('#savedStatus').val() == "Submitted" || $('#savedStatus').val() == "PartiallyConfirmed") {
		return "<a onclick='getSellOverview(\"" + rowObject.pipCode + "\");' title='Potential' href='javascript:void(0)'class='btn btn-sm btn-bg-white btn-clean btn-icon-info  btn-hover-info  btn-icon mr-2 my-1 my-lg-0' ><i class='fa la-info text-info'></i> </a>"+"<a style=' display:none;' onclick='getSupplierSellOverview(\"" + rowObject.pipCode + "\");' title='Sell Data' href='javascript:void(0)'class='btn btn-sm btn-bg-white btn-clean btn-icon-success  btn-hover-success  btn-icon mr-2 my-1 my-lg-0' ><i class='flaticon2-chart text-success'></i> </a>";
	} else {
		return "<a title='Edit' href='javascript:void(0)'title='Potential' href='javascript:void(0)'class='btn btn-sm btn-bg-white btn-clean btn-icon-info  btn-hover-info  btn-icon mr-2 my-1 my-lg-0' ><i class='fa la-info text-info'></i> </a>"+"<a style=' display:none;' title='Edit' href='javascript:void(0)'title='Sell Data' href='javascript:void(0)'class='btn btn-sm btn-bg-white btn-clean btn-icon-success  btn-hover-success  btn-icon mr-2 my-1 my-lg-0' ><i class='flaticon2-chart text-success'></i> </a>";
	}
}

function getSellOverview(pipCode){
//	$('#statModal').modal('show');
	$('#preLoader').show();
	$.ajax({
		url: "getSellOverview",
		data: {
			"pipcode": pipCode,
			"quotationId": $('#savedQtId').val(),
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
				$('#customerBuy').html(data.rep.customerUsage);
				$('#totalBuy').html(data.rep.totalUsage);
				$('#avgPrice').html(data.rep.minPrice+" - "+data.rep.maxPrice);
				$('#statModal').modal('show');
				}
		},
		error: function(data) {
			$('#preLoader').hide();
			toastr.error("Something went wrong!")
		}
	});
}

function checkBoxCheck(rowId) {
//	alert(rowId);

	var r = $("#quotationGrid").getRowData(rowid);
	var price = r.quotedPrice;
	if(parseInt(price)>0){
		$('#jqg_quotationGrid_' + rowId).prop("checked", true);
		$("#quotationGrid").jqGrid('setSelection', rowId);
	}
	
}

function validateQty(value, column) {

	var id = jQuery('#quotationGrid').jqGrid('getGridParam', 'selrow');
	var rowData = $('#quotationGrid').jqGrid('getRowData', id);
	if (parseInt(value) > parseInt(rowData.quotedQty))
		return [false, "Please enter quantity less then or equal to " + rowData.quotedQty + "."];
	else
		return [true, ""];
} 

function getSupplierSellOverview(pipCode){
//	$('#statModal').modal('show');
	$('#preLoader').show();
	$.ajax({
		url: "getSupplierSellOverview",
		data: {
			"pipcode": pipCode,
			"supplierId": $('#manufacturerId').val(),
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
				$('#supplierTotalBuy').html(data.rep.totalUsage);
				$('#pcaSellData').html(data.rep.customerUsage);
				$('#supplierAvgPrice').html(data.rep.minPrice+" - "+data.rep.maxPrice);
				$('#supplierStatModal').modal('show');
				}
		},
		error: function(data) {
			$('#preLoader').hide();
			toastr.error("Something went wrong!")
		}
	});
}