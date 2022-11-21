async = true;
var lineCounter = 0;
var addressId=0;
var makeOfferLineIds = [];

var lineGridLastSelection;

var offerLineMap = {};

$(document).ready(function(){
	
//	getActiveOffersList();

	$(".menu-item").removeClass('menu-item-here');
	$("#customerOffersFromSupplierPageLI").addClass('menu-item-here');
	$("#supplierAsCustMainMenu").addClass('menu-item-here');
	$(".widget ul li").prepend("<i class=\"fas fa-circle mr-1\"></i>");
	getDeliveryAddress();
	
	$('#stockDataTab').click(function(){
		$('#activeOfferGridDiv').hide();
		$('#stockGridDiv').show();
		$('#activeOffersSearchDiv').hide()
		$('#stockSearchDiv').show();
		$('#stockSearch').val('');
		getStockData();
		reloadStockData();
	});
	
	
	getActiveOffersList();
	$('#activOfferTab').click(function(){
		$('#stockGridDiv').hide();
		$('#activeOfferGridDiv').show();
		$('#stockSearchDiv').hide();
		$('#activeOffersSearchDiv').show();
		$('#activeOffersSrch').val('');
		reloadActiveOffersList();
	});
	
	
	$('#makeOfferBtn').click(function(){
			addLinesToOfferTab();
	});
	
	$('#stockSearch').keyup(function(event) {
		jQuery("#stockGrid").jqGrid('setGridParam', {
			datatype: 'json', mtype: 'POST', page: 1, rows: 100,
			url: 'getStockGrid?locationId=' + addressId + '&description=' + $('#stockSearch').val() + '&supplierId=' + $('#supplierId').val()
		});
		$('#stockGrid').trigger('reloadGrid');
	});
	
	$('#activeOffersSrch').keyup(function(event) {
		jQuery("#activeOffersGrid").jqGrid('setGridParam', {
			datatype: 'json', mtype: 'POST', page: 1, rows: 100,
			url: 'getactiveOffersGrid?qry=' + $('#activeOffersSrch').val() + '&supplierId=' + $('#supplierId').val()
		});
		$('#activeOffersGrid').trigger('reloadGrid');
	});
				
//	$("#createOfferModal").on("hidden.bs.modal", function() {
////		$('#createOffersGrid').jqGrid("clearGridData");
//////		$('#createOffersGrid').jqGrid('GridDestroy');
////		$("#createOffersGrid").trigger("reloadGrid");
//	});
	
//	$('#createOfferModal').modal('show');
	$("#createOffersGrid").jqGrid({
		datatype: "local",
//		data: map.rows,
		viewrecords: true,
		colNames: ['Line No', 'Pip Code', 'Product','Supplier Id','Brand', 'Quantity','Price', 'Expiry Date','Min Qty','Max Qty','Offer Price','Offer Start Date','Offer End Date','Location Id','Offer Status'],
		colModel: [

			{ name: 'id', index: 'id', align: "center", sorttype: "int", hidden: true },
			{ name: 'pipcode', index: 'pipcode', hidden: true},
			{ name: 'description', index: 'description'},
			{ name: 'supplierId', index: 'supplierId', hidden: true },
			{ name: 'brand', index: 'brand'},
			{ name: 'qty', index: 'qty'	, hidden: true},
			{ name: 'price', index: 'price', align : 'center' },
			{ name: 'expiryDate', index: 'expiryDate', align : 'center', sortable: false,},
			
			{ name: 'minQty', index: 'minQty', align : 'center', editable:true, editoptions: {
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
											var r = $("#createOffersGrid").getRowData(rowid);
											var col1 = r.id;
//											var data = jQuery('#createOffersGrid').getRowData(rowid);
//											offerLineMap[rowid] = data;
											$("#createOffersGrid").jqGrid("saveRow", col1);
											jQuery('#createOffersGrid').jqGrid('restoreRow', col1);
											jQuery('#createOffersGrid').jqGrid('editRow', nextRowId, true);
		    					        }
		    					    }
		    					}
		          		       ]
				}},
			{ name: 'maxQty', index: 'maxQty', align : 'center', editable:true,editoptions: {
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
											var r = $("#createOffersGrid").getRowData(rowid);
											var col1 = r.quotationLineId;
//											var data = jQuery('#createOffersGrid').getRowData(rowid);
//											offerLineMap[rowid] = data;
											$("#createOffersGrid").jqGrid("saveRow", col1);
											jQuery('#createOffersGrid').jqGrid('restoreRow', col1);
											jQuery('#createOffersGrid').jqGrid('editRow', nextRowId, true);
		    					        }
		    					    }
		    					}
		          		       ]
				}},
			{ name: 'offerPrice', index: 'offerPrice', align : 'center', editable:true,editoptions: {
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
										if ( key == 13) {
											var nextRowId = $(this).closest('tr').next('tr').attr("id");
											var rowid = parseInt($(this).attr("id"));
											var r = $("#createOffersGrid").getRowData(rowid);
											var col1 = r.quotationLineId;
											var data = jQuery('#createOffersGrid').getRowData(rowid);
											if (data.offerStartDate != "" && data.offerEndDate != "") {
													$("#saveOffers").prop("disabled",false);
											}else{
												toastr.error("Kindly set offer start date and end date in order to activate the offer!");
													$('#' + rowid + '_offerStartDate').focus();
													return;
											}
											
											if(data.offerPrice>0){
													$("#saveOffers").prop("disabled",false);
											}else {
												toastr.error("Offer price should be greater than 0!");
													$('#' + rowid + '_offerPrice').focus();
													return;
											}
											offerLineMap[rowid] = data;

											$("#createOffersGrid").jqGrid("saveRow", col1);
											jQuery('#createOffersGrid').jqGrid('restoreRow', col1);
											jQuery('#createOffersGrid').jqGrid('editRow', nextRowId, true);
		    					        }
		    					    }
		    					}
		          		       ]
				}},
				{ name: 'offerStartDate', index: 'offerStartDate', editable:true,editoptions: {
					size: 20,
					maxlengh: 20,
					dataInit: function(element) {
						$(element).datepicker({
							todayHighlight: true,
							autoclose: true,
							format: 'dd-M-yyyy',
							yearRange: 4,
							startDate: new Date(),
						}).on('changeDate', function(selected) {
							$("#"+$(this).attr("id")).focus();
							
						});
					},
					dataEvents: [
		      		            {
		    					    type: 'keydown',
		    					    fn: function(e) {
		    					        var key = e.charCode || e.keyCode;
		    					        
										if (key == 13){
											$(this).datepicker('hide');
//											var nextRowId = $(this).closest('tr').next('tr').attr("id");
//											var rowid = parseInt($(this).attr("id"));
//											var r = $("#createOffersGrid").getRowData(rowid);
//											var col1 = r.quotationLineId;
////											var data = jQuery('#createOffersGrid').getRowData(rowid);
////											offerLineMap[rowid] = data;
//											$("#createOffersGrid").jqGrid("saveRow", col1);
//											jQuery('#createOffersGrid').jqGrid('restoreRow', col1);
//											jQuery('#createOffersGrid').jqGrid('editRow', nextRowId, true);
										}
		    					    }
		    					},
		          		       ]
					
				}},
			{ name: 'offerEndDate', index: 'offerEndDate', editable:true,editoptions: {
					size: 20,
					maxlengh: 20,
					dataInit: function(element) {
						$(element).datepicker({
							todayHighlight: true,
							autoclose: true,
							format: 'dd-M-yyyy',
							yearRange: 4,
							startDate: new Date(),
						}).on('changeDate', function(selected) {
							$("#"+$(this).attr("id")).focus();
						});
					},
					dataEvents: [
		      		            {
		    					    type: 'keydown',
		    					    fn: function(e) {
		    					        var key = e.charCode || e.keyCode;
										if (key == 9 || key == 13) {
											var nextRowId = $(this).closest('tr').next('tr').attr("id");
											$(this).datepicker('hide');
											
											var rowid = parseInt($(this).attr("id"));
											var r = $("#createOffersGrid").getRowData(rowid);
											var col1 = r.id;
											var data = jQuery('#createOffersGrid').getRowData(rowid);
											console.log("Data from grid "+data);
											
											if ((data.minQty != "" && data.maxQty != "")) {
												if (parseInt(data.maxQty) > 0 && parseInt(data.minQty) > 0  && parseInt(data.minQty) > parseInt(data.maxQty)) {
													toastr.error("Minimum Qty needs to be less than Maximum Qty!");
													$('#' + rowid + '_minQty').focus();
													$("#createOffersGrid").setSelection(rowid, false);
													return;
												}
											}
											
											if(data.offerStartDate != "" && data.offerEndDate != ""){
												if(new Date(data.offerStartDate) > new Date(data.offerEndDate)){
													toastr.error("Offer start date can not be after offer end date!");
													$('#' + rowid + '_offerStartDate').focus();
													$("#createOffersGrid").setSelection(rowid, false);
													return;
												}
											}
											
											if(data.offerPrice != "" && parseFloat(data.offerPrice) == 0){
													toastr.error("Offer price need to be greater than 0!");
													$('#' + rowid + '_offerPrice').focus();
													$("#createOffersGrid").setSelection(rowid, false);
													return;
											}
											if(data.offerPrice == ""||data.offerStartDate == ""||data.offerEndDate == ""){
												
												toastr.error("In order to activate offers you need to add Offer Price, Start date, end date");
													$('#' + rowid + '_offerPrice').focus();
													$("#createOffersGrid").setSelection(rowid, false);
													return;
											}
											
												offerLineMap[rowid] = data;
												$("#saveOffers").prop("disabled",false);
											
											console.log("after "+JSON.stringify(offerLineMap));
											$("#createOffersGrid").jqGrid("saveRow", col1);
											jQuery('#createOffersGrid').jqGrid('restoreRow', col1);
											jQuery('#createOffersGrid').jqGrid('editRow', nextRowId, true);
		    					        }
		    					    }
		    					},
		          		       ]
					
				}},
				{ name: 'locationId', index: 'locationId'	, hidden: true},
				{ name: 'offerStatus', index: 'offerStatus'	, hidden: true},
		],
		rowNum: 20,
//		shrinkToFit: false,
//		width: '1300',
		shrinkToFit: false,
		autowidth: true,
		pager: "#createOffersGridPager" ,
//		localReader: { repeatitems: false, id: "id" },
		height: "250",
		onSelectRow: function(id) {
			if (id && id !== lineGridLastSelection) {
				jQuery('#createOffersGrid').jqGrid('restoreRow', lineGridLastSelection);
			}
			jQuery('#createOffersGrid').jqGrid('editRow', id, true);
			lineGridLastSelection = id;
		},
		loadComplete: function(data) {
				for(var i = 0; i<data.rows.length; i++){
					if (i == 0) {
//						$('#createOffersGrid').jqGrid('editRow', data.rows[i].id, true);
						$('#' + data.rows[i].id + '_minQty').focus();
					}
				}
//				

		},rowattr: function(rowData) {
			
			if (new Date(formattedDate()) >= new Date(rowData.offerStartDate) &&  new Date(formattedDate()) <= new Date(rowData.offerEndDate)) {
				return { "class": "rowClass" };
			}
		}
		
	}).jqGrid('navGrid', "#createOffersGridPager" , { edit: false, add: false, del: false });
	
	$('#createOffersGrid').jqGrid('setLabel', 'expiryDate', '', { 'text-align': 'center' });
	$('#createOffersGrid').jqGrid('setLabel', 'price', '', { 'text-align': 'center' });
	$('#createOffersGrid').jqGrid('setLabel', 'offerPrice', '', { 'text-align': 'center' });
	$('#createOffersGrid').jqGrid('setLabel', 'minQty', '', { 'text-align': 'center' });
	$('#createOffersGrid').jqGrid('setLabel', 'maxQty', '', { 'text-align': 'center' });
	
});


function getActiveOffersList(){
	
	$("#activeOffersGrid").jqGrid({
		url: "getactiveOffersGrid?supplierId="+$('#supplierId').val()+"&locationId="+addressId,
		mtype: "POST",
		datatype: "JSON",
		//height: 300,
		rowNum: 100,
		rowList: [100, 200, 500],
		colNames: ['Line Id','Line No', 'Pip Code', 'Product','Supplier Id','Brand', 'Quantity', 'Expiry Date','Price', 'Offer Price', 'Offer Start Date', 'Offer Start Date','Min Qty','Max Qty','Action','location Id'],
		colModel: [

			{ name: 'lineId', index: 'lineId', align: "center", sorttype: "int", hidden: true },
			{ name: 'id', index: 'id', align: "center", sorttype: "int", hidden: true },
			{ name: 'pipcode', index: 'pipcode', width: '70', hidden: true  },
			{ name: 'description', index: 'description', width: '200'},
			{ name: 'supplierId', index: 'supplierId', hidden: true },
			{ name: 'brand', index: 'brand', editable: false},
			{ name: 'qty', index: 'qty', editable:false, hidden: true ,align:'center' 	},
			{ name: 'expiryDate',index: 'expiryDate', sortable: false, width: 130,align:'center' },
			{ name: 'price', index: 'price', editable:false,align:'center' 	},
			{ name: 'offerPrice', index: 'offerPrice', editable:false,align:'center' 	},
			{ name: 'offerStartDate', index: 'offerStartDate', editable:false	},
			{ name: 'offerEndDate', index: 'offerEndDate', editable:false	},
			{ name: 'minQty', index: 'minQty', editable:false,align:'center' 	},
			{ name: 'maxQty', index: 'maxQty', editable:false,align:'center' 	},
			{ name: 'action', index: 'action', editable: false, formatter: actionFormatter,align:'center' },
			{ name: 'locationId', index: 'locationId', hidden:true},
			
//			{ name: 'action', index: 'action', editable: false, formatter: actionFormatter,  frozen: true  },
		],
		pager: "#activeOffersPager",
		viewrecords: true,
		shrinkToFit: false,
		autowidth: true,
		jsonReader: { repeatitems: false, id: "lineId" },
		guiStyle: "bootstrap",
		iconSet: "fontAwesome",
		rownumbers: true,
		onSelectRow: function(id) {
			if (id && id !== lineGridLastSelection) {
				jQuery('#activeOffersGrid').jqGrid('restoreRow', lineGridLastSelection);
			}
			jQuery('#activeOffersGrid').jqGrid('editRow', id, true);
			lineGridLastSelection = id;
		}
	});
	$('#activeOffersGrid').jqGrid('setLabel', 'action', '', { 'text-align': 'center' });
	$('#activeOffersGrid').jqGrid('setLabel', 'expiryDate', '', { 'text-align': 'center' });
	$('#activeOffersGrid').jqGrid('setLabel', 'price', '', { 'text-align': 'center' });
	$('#activeOffersGrid').jqGrid('setLabel', 'offerPrice', '', { 'text-align': 'center' });
	$('#activeOffersGrid').jqGrid('setLabel', 'minQty', '', { 'text-align': 'center' });
	$('#activeOffersGrid').jqGrid('setLabel', 'maxQty', '', { 'text-align': 'center' });
}
function getDeliveryAddress(){
	$("#preLoader").show();
	var id;
	$.ajax({
		type: "POST",
		async:false,
		url: 'getDeliveryAddress',
		dataType: 'JSON',
		data: {
			customerId: $('#supplierId').val()

		},
		success:function(data){
			for (var i = 0; i < data.length ; i++) {
				if (i == 0) {
					id = data[i].addressId;
				}
			}
		}
		
	})
	$("#preLoader").hide();
	return id;
}

function getStockData(){
	addressId = getDeliveryAddress();

	$("#stockGrid").jqGrid({
		url: "getStockGrid?supplierId="+$('#supplierId').val()+"&locationId="+addressId,
		mtype: "POST",
		datatype: "json",
		rowNum: 100,
		rowList: [100, 200, 500],
		colNames: ['Line No', 'Pip Code', 'Product','Supplier Id','Brand', 'Quantity','Price', 'Expiry Date','Offer Start Date','Offer End Date','Min Qty','Max Qty','Offer Price','Location Id','Offer Status'],
		colModel: [

			{ name: 'id', index: 'id', align: "center", sorttype: "int", hidden: true },
			{ name: 'pipcode', index: 'pipcode'},
			{ name: 'description', index: 'description'},
			{ name: 'supplierId', index: 'supplierId', hidden: true },
			{ name: 'brand', index: 'brand'},
			{ name: 'qty', index: 'qty'	, align: 'center'},
			{ name: 'price', index: 'price', align: 'center' },
			{ name: 'expiryDate', index: 'expiryDate',  align:'center', sortable: false, },
			{ name: 'offerStartDate', index: 'offerStartDate', hidden: true},
			{ name: 'offerEndDate', index: 'offerEndDate', hidden: true},
			{ name: 'minQty', index: 'minQty', hidden: true},
			{ name: 'maxQty', index: 'maxQty', hidden: true},
			{ name: 'offerPrice', index: 'offerPrice', hidden: true},
			{ name: 'locationId', index: 'locationId', hidden: true},
			{ name: 'offerStatus', index: 'offerStatus', hidden: true},
		],
		pager: "#stockGridPager",
		viewrecords: true,
		multiselect: true,
		autowidth:true,
		onSelectRow: function(id) {
			var count = lineCounter;
			if ($('#jqg_stockGrid_' + id).prop("checked") == true) {
				makeOfferLineIds.push(id);
				count = ++lineCounter;
			} else {
				makeOfferLineIds = jQuery.grep(makeOfferLineIds, function(value) {
					return value != id;
				});
				count = --lineCounter;
			}
			console.log(makeOfferLineIds);
			$('#lineCounter').html(count);

		},
		onSelectAll: changeCounterAll,
		jsonReader: { repeatitems: false, id: "id" },
		guiStyle: "bootstrap",
		iconSet: "fontAwesome",
		rownumbers: true,
		loadComplete: function(data) {
			for (var i = 0; i < data.rows.length; i++) {
				
				for (var j = 0; j < makeOfferLineIds.length; j++) {
					if (data.rows[i].id == makeOfferLineIds[j]) {
						$('#jqg_stockGrid_' + data.rows[i].id).prop('checked', true);
						$("#stockGrid").setSelection(data.rows[i].id, false);
					}
				}

			}
		},
		rowattr: function(rowData) {
			if(rowData.offerStatus != 'Inactive'){
			if (new Date(formattedDate()) >= new Date(rowData.offerStartDate) &&  new Date(formattedDate()) <= new Date(rowData.offerEndDate)) {
				return { "class": "rowClass" };
			}
		}
		}
	});
		$('#stockGrid').jqGrid('setLabel', 'expiryDate', '', { 'text-align': 'center' });
		$('#stockGrid').jqGrid('setLabel', 'price', '', { 'text-align': 'center' });
		$('#stockGrid').jqGrid('setLabel', 'qty', '', { 'text-align': 'center' });
}


function changeCounterAll(ids) {

	makeOfferLineIds = [];
	lineCounter = 0;
	var count = lineCounter;
	if ($('#cb_stockGrid').prop("checked") == true) {
		for (var i = 0; i < ids.length; i++) {
			makeOfferLineIds.push(ids[i]);
			count = ++lineCounter;
		}
	} else {
		makeOfferLineIds = [];
		lineCounter = 0;
	}
	
	$('#lineCounter').html(count);

}


//function addLinesToOfferTab(){
//	
//	if(makeOfferLineIds.length < 1){
//		toastr.error("Kindly select a line!");
//		return;
//	}
//	
//	$("#preLoader").show();
//	$.ajax({
//		type: "POST",
//		async:false,
//		url: 'addLinesToOfferTab',
//		dataType: 'JSON',
//		data: {
//			supplierId: $('#supplierId').val(),
//			"ids[]":makeOfferLineIds
//		},
//		success:function(data){
//			$("#preLoader").hide();
//			
//		},
//		error:function(){
//			$("#preLoader").hide();
//		}
//		
//	})
//}


function addLinesToOfferTab(){
	
	if(makeOfferLineIds.length < 1){
		toastr.error("Kindly select a line!");
		return;
	}
	console.log('TATA '+makeOfferLineIds);
	var rows = [];
	var map = {};
	$("#preLoader").show();
	var grid = jQuery('#stockGrid');
	for (var i = 0; i < makeOfferLineIds.length; i++) {
		var rowId = makeOfferLineIds[i];
		var rowData = grid.jqGrid('getRowData', rowId);
		rowData.description = rowData.description.replace('&nbsp;','');
		rows.push(rowData);
		console.log("rows "+rows);
	}
	
	map['page']=1;
	map['total']=1;
	map['records']=makeOfferLineIds.length;
	map['rows'] = rows;
	console.log('addLinesToOfferTab '+map.rows);
$('#createOfferModal').modal('show');
$("#createOffersGrid").clearGridData();

jQuery("#createOffersGrid").jqGrid('setGridParam', {
					data: map.rows, datatype: 'local', page: 1, rows: 100,
				}).trigger('reloadGrid');
				$("#preLoader").hide();
	$(window).on("resize", function () {
    var $grid = $("#createOffersGrid"),
        newWidth = $grid.closest(".ui-jqgrid").parent().width();
    $grid.jqGrid("setGridWidth", newWidth, true);
    
//    $("#createOffersGrid").setSelection(makeOfferLineIds[0], false);
	
});
}


function saveOffers(){
	$("#preLoader").show();
	var arrayObj = [];
	var temp = {};
	for(var i = 0; i< makeOfferLineIds.length; i++){
		if (offerLineMap[makeOfferLineIds[i]] != undefined) {
			if (makeOfferLineIds[i] == offerLineMap[makeOfferLineIds[i]].id) {
				temp = offerLineMap[makeOfferLineIds[i]];
				arrayObj.push(temp);
			}
		}
	}
	console.log("array obj "+arrayObj);
	
	
	$.ajax({
		type: "POST",
		url: 'addLinesToOfferTab',
		dataType: 'JSON',
		contentType: 'application/json',
		data: JSON.stringify(arrayObj),
		success:function(data){
			$('#createOfferModal').modal('hide');
			if(data.success != undefined && data.success != null && data.success != ""){
				makeOfferLineIds= [];
				swal.fire({
							title: 'Offers created.',
							text: 'You have successfully created offer lines.',
							icon: 'success',
						}).then(function(submit) {
							if (submit.isConfirmed) {
								$('#lineCounter').html('')
								$('#lineCounter').html(0);
								$("#stockGrid").trigger('reloadGrid');
							}
						});
			}
		},
		error:function(data){
			makeOfferLineIds= [];
			toastr.error(data.error);
		}
		
	})
	$("#preLoader").hide();
	
	console.log(arrayObj);
}


Date.prototype.toShortFormat = function() {

    var monthNames =["Jan","Feb","Mar","Apr",
                      "May","Jun","Jul","Aug",
                      "Sep", "Oct","Nov","Dec"];
    
    var day = this.getDate();
    
    var monthIndex = this.getMonth();
    var monthName = monthNames[monthIndex];
    
    var year = this.getFullYear();
    
    return `${day}-${monthName}${year}`;  
}

function actionFormatter(cellvalue, options, rowObject) {
	return "<a onclick='deleteOfferLine(\"" + rowObject.lineId + "\",\"" + rowObject.pipcode+ "\",\"" + rowObject.supplierId + "\",\"" + rowObject.id + "\",\"" + rowObject.locationId + "\");' title='Delete' href='javascript:void(0)'class='btn btn-sm btn-bg-white btn-clean btn-icon-danger  btn-hover-danger  btn-icon mr-2 my-1 my-lg-0' > <i class='la la-trash'></i></a>";
}


function deleteOfferLine(lineId, pipcode, supplierId, id, locationId){
	
	$.ajax({
		type: "POST",
		url: 'deleteOfferLine',
		dataType: 'JSON',
		data: {
			lineId:lineId,
			pipcode:pipcode,
			supplierId:supplierId,
			id:id,
			locationId:locationId

		},
		success: function(data) {
			jQuery("#activeOffersGrid").jqGrid('setGridParam', {
			datatype: 'json', mtype: 'POST', page: 1, rows: 100,
			url: 'getactiveOffersGrid?qry=' + $('#activeOffersSrch').val() + '&supplierId=' + $('#supplierId').val()
		});
		$('#activeOffersGrid').trigger('reloadGrid');
			}
		});
	
}

function reloadActiveOffersList(){
jQuery("#activeOffersGrid").jqGrid('setGridParam', {
			datatype: 'json', mtype: 'POST', page: 1, rows: 100,
			url: 'getactiveOffersGrid?qry=' + $('#activeOffersSrch').val() + '&supplierId=' + $('#supplierId').val()
		});
		$('#activeOffersGrid').trigger('reloadGrid');	
}

function reloadStockData(){
	jQuery("#stockGrid").jqGrid('setGridParam', {
			datatype: 'json', mtype: 'POST', page: 1, rows: 100,
			url: 'getStockGrid?locationId=' + addressId + '&description=' + $('#stockSearch').val() + '&supplierId=' + $('#supplierId').val()
		});
		$('#stockGrid').trigger('reloadGrid');
}