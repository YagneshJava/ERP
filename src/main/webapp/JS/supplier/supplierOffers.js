var total = 0.0;
var checkedLines = [];
var unCheckedLines = [];
var allLines = [];
var totalObj = [];
var backLineId = 0;
var totalCountFlag = 0;
var invalidQty = 0;
var lineGridLastSelection;
$(document).ready(function() {
	
	$(".menu-item").removeClass('menu-item-here');
	$("#supplierOffersPageLI").addClass('menu-item-here');

	$('#orderTotal').val('');
	$("#offerListGrid").jqGrid({
		url: "getOffersList",
		mtype: "POST",
		datatype: "json",
		updateurl: "",
		height: 'auto',
		rowNum: 100,
		rowList: [100, 200, 500],
		colNames: ['Line No', 'Pip Code', 'Product', 'Brand' , 'Price','Expiry Date', 'Offer Price', 'Offer Status', 'Min Qty.','Max Qty.', 'Start Date', 'End Date', 'Supplier Id', 'Qty.'],
		colModel: [

			{ name: 'id', index: 'id', align: "center", sorttype: "int", hidden: true },
			{ name: 'pipcode', index: 'pipcode', width: '80', hidden: true },
			{ name: 'description', index: 'description', frozen: true, width: '200' },
			{ name: 'brand', index: 'brand' },
			{ name: 'price', index: 'price', editable: false, sorttype: "float", width: '60',align:'center' },
			{ name: 'expiryDate', index: 'expiryDate', editable: false, align:'center' },
			{ name: 'offerPrice', index: 'offerPrice', width: '90', align:'center' },
			{ name: 'offerStatus', index: 'offerStatus', hidden: true },
			{ name: 'minQty', index: 'minQty', width: '70', align:'center' },
			{ name: 'maxQty', index: 'maxQty', width: '70', align:'center' },
			{ name: 'offerStartDate', index: 'offerStartDate', hidden: true },
			{ name: 'offerEndDate', index: 'offerEndDate', width: '150' },
			{ name: 'supplierId', index: 'supplierId', hidden: true },
			{
				name: 'orderQty', index: 'orderQty', editable: true, editoptions: {
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
											var rowData = $('#offerListGrid').jqGrid('getRowData', rowid);
											if (rowData.orderQty != "" && rowData.orderQty > 0) {
												if ($('#jqg_offerListGrid_' + rowid).prop("checked") == true) {
													total = total + parseFloat(rowData.offerPrice) * parseFloat(rowData.orderQty);
													checkedLines.push(rowid);
													$('#orderTotal').val('£ ' + total.toFixed(2));
													unCheckedLines = $.grep(unCheckedLines, function(value) {
														return value != rowid;
													});
												} else if ($('#jqg_offerListGrid_' + rowid).prop("checked") == false) {
													total = total - parseFloat(rowData.offerPrice) * parseFloat(rowData.orderQty);

													if (total > 0)
														$('#orderTotal').val('£ ' + total.toFixed(2));
													else {
														total = 0;
														$('#orderTotal').val('£ ' + total);
													}


													checkedLines = $.grep(checkedLines, function(value) {
														return value != rowid;
													});
													unCheckedLines.push(rowid);
												}
											}
											
											var nextRowId = $(this).closest('tr').next('tr').attr("id");
											
											
											$("#offerListGrid").jqGrid("saveRow", rowid);
											jQuery('#offerListGrid').jqGrid('restoreRow', rowid);
											jQuery('#offerListGrid').jqGrid('editRow', nextRowId, true);
											jQuery('#offerListGrid').jqGrid('setSelection', nextRowId, false);
											
		    					        }
		    					    }
		    					},
		    					
		          		       ]
				},
				editrules: { minValue: 1 }, width: '55'
			},
		],
		pager: "#offerListGridPager",
		viewrecords: true,
		shrinkToFit: false,
		autowidth: true,
		multiselect: true,
//		cellEdit: true,
		cellsubmit: 'clientArray',
		jsonReader: { repeatitems: false, id: "id" },
		guiStyle: "bootstrap",
		iconSet: "fontAwesome",
		rownumbers: true,
		onSelectRow: makeTotal,
		onSelectAll: makeAllTotal,
		loadonce: true,
		afterSaveCell: function(rowid) {
			checkBoxCheck(rowid);
		},
	});

	$("#offerListGrid").jqGrid('setLabel', 'rn', '#');
	$('#offerListGrid').jqGrid('setLabel', 'price', '', { 'text-align': 'center' });
	$('#offerListGrid').jqGrid('setLabel', 'offerPrice', '', { 'text-align': 'center' });
	$('#offerListGrid').jqGrid('setLabel', 'minQty', '', { 'text-align': 'center' });
	$('#offerListGrid').jqGrid('setLabel', 'maxQty', '', { 'text-align': 'center' });
	$('#offerListGrid').jqGrid('setLabel', 'orderQty', '', { 'text-align': 'center' });
	$('#offerListGrid').jqGrid('setLabel', 'expiryDate', '', { 'text-align': 'center' });
	$("#offerListGrid").jqGrid('bindKeys', {});

	$('#srchMain').keyup(function(event) {
					jQuery("#offerListGrid").jqGrid('setGridParam', {
					datatype: 'json', mtype: 'POST', page: 1, rows: 100,
					url : 'getOffersList?&description='+ $("#srchMain").val()
				});
				$('#offerListGrid').trigger('reloadGrid');
	});

});

function offerFilter() {
	jQuery("#offerListGrid").jqGrid('setGridParam', {
		datatype: 'json', mtype: 'POST', page: 1, rows: 100,
		url: 'getPriceList?description=' + $('#srchPipCode').val()
	});
	$('#offerListGrid').trigger('reloadGrid');
}

function makeTotal(rowid) {

	if (rowid && rowid !== lineGridLastSelection) {
		jQuery('#offerListGrid').jqGrid('restoreRow', lineGridLastSelection);
	}
	jQuery('#offerListGrid').jqGrid('editRow', rowid, true);
	lineGridLastSelection = rowid;
	
	
	var rowData = $('#offerListGrid').jqGrid('getRowData', rowid);
	if (rowData.orderQty != "" && rowData.orderQty > 0) {
		if ($('#jqg_offerListGrid_' + rowid).prop("checked") == true) {
			total = total + parseFloat(rowData.offerPrice) * parseFloat(rowData.orderQty);
			checkedLines.push(rowid);
			$('#orderTotal').val('£ ' + total.toFixed(2));
			unCheckedLines = $.grep(unCheckedLines, function(value) {
				return value != rowid;
			});
		} else if ($('#jqg_offerListGrid_' + rowid).prop("checked") == false) {
			total = total - parseFloat(rowData.offerPrice) * parseFloat(rowData.orderQty);

			if (total > 0)
				$('#orderTotal').val('£ ' + total.toFixed(2));
			else {
				total = 0;
				$('#orderTotal').val('£ ' + total);
			}


			checkedLines = $.grep(checkedLines, function(value) {
				return value != rowid;
			});
			unCheckedLines.push(rowid);
		}
	}
											
}


function makeAllTotal(lineId) {
	if (allLines.length != 0 && unCheckedLines.length != 0) {
		allLines = unCheckedLines;
	} else {
		allLines = lineId;
	}

	for (var i = 0; i < checkedLines.length; i++) {
		for (var j = 0; j < allLines.length; j++) {
			if (checkedLines[i] == allLines[j]) {
				allLines = $.grep(allLines, function(value) {
					return value != checkedLines[i];
				});
			}
		}
	}
	if ($('#cb_offerListGrid').prop("checked") == true) {
		for (var i = 0; i < allLines.length; i++) {
			var rowData = $('#offerListGrid').jqGrid('getRowData', allLines[i]);
			if (rowData.orderQty != "" && rowData.orderQty > 0) {
				if ($('#jqg_offerListGrid_' + allLines[i]).prop("checked") == true) {
					total = total + parseFloat(rowData.offerPrice) * parseFloat(rowData.orderQty);
					$('#orderTotal').val('£ ' + total.toFixed(2));
				}
			}
		}

	} else if ($('#cb_offerListGrid').prop("checked") == false) {
		total = 0;
		$('#orderTotal').val('£ ' + total);
	}
	checkedLines = [];
	unCheckedLines = [];
	//	allLines = [];
}


function makeOrder() {
	var grid = $('#offerListGrid');
	var ids = grid.jqGrid('getGridParam', 'selarrrow');
//	debugger
	if (ids.length > 0) {
		for (i = 0; i < ids.length; i++) {
			var rowData = grid.jqGrid('getRowData', ids[i]);
			if (rowData.orderQty === '') {
				$('#jqg_offerListGrid_' + rowData.id).prop("checked", false);
				$("#offerListGrid").jqGrid('resetSelection', rowData.id);
				makeCheckedTotal(rowData.id);
				toastr.error("Kindly add Quantity for " + rowData.description + " with pipcode " + rowData.pipcode);
				return;
			}
			if (parseInt(rowData.orderQty) < parseInt(rowData.minQty)) {
				console.log(rowData.orderQty)
				console.log(rowData.minQty)	
				$('#jqg_offerListGrid_' + rowData.id).prop("checked", false);
				$("#offerListGrid").jqGrid('resetSelection', rowData.id);
				makeCheckedTotal(rowData.id);
				toastr.error("Order Quantity for " + rowData.description + " with pipcode " + rowData.pipcode + " should be greater than or equal to " + rowData.minQty);
				return;
			}
			if (parseInt(rowData.maxQty) > 0 && parseInt(rowData.orderQty) > parseInt(rowData.maxQty)) {
				console.log(rowData.orderQty)
				console.log(rowData.minQty)	
				$('#jqg_offerListGrid_' + rowData.id).prop("checked", false);
				$("#offerListGrid").jqGrid('resetSelection', rowData.id);
				makeCheckedTotal(rowData.id);
				toastr.error("Order Quantity for " + rowData.description + " with pipcode " + rowData.pipcode + " should be less than or equal to " + rowData.maxQty);
				return;
			}
		}
		swal.fire({
			title: "Are you sure?",
			text: "You want to Order the selected Lines!",
			icon: 'question',
			showCancelButton: true,
		}).then(function(submit) {
			if (submit.isConfirmed) {
				offersOrder();
			}
		});
	} else {
		toastr.error("Kindly select a line for confirmation!");
		return;
	}
}


function offersOrder() {
	$("#preLoader").show();
	var orderLines = [];
	var grid = $('#offerListGrid');
	var ids = grid.jqGrid('getGridParam', 'selarrrow');
	var customerId = $('#customerId').val();
	if (ids.length > 0) {
		for (i = 0; i < ids.length; i++) {
			var rowData = grid.jqGrid('getRowData', ids[i]);

			orderLines.push({
				"supplierId": rowData.supplierId,
				"priceListId": rowData.id,
				"description": rowData.description,
				"pipcode": rowData.pipcode,
				"price": rowData.price,
				"offerPrice": rowData.offerPrice,
				"minQty": rowData.minQty,
				"offerStartDate": rowData.offerStartDate,
				"offerEndDate": rowData.offerEndDate,
				"orderQty": rowData.orderQty,
				"customerId": customerId
			});

		}
		$.ajax({
			url: "generateOfferOrder",
			data: JSON.stringify(orderLines),
			type: "POST",
			dataType: 'JSON',
			contentType: 'application/json',
			success: function(data) {
				$("#preLoader").hide();
				if (data.success != undefined) {
					if (data.success === "Incorrect") {
						toastr.error("Please enter correct current password");
					} else {
						swal.fire({
							title: 'Success',
							text: 'Your Order has been submitted to respective Supplier.',
							icon: 'success',
						}).then(function(submit) {
							if (submit.isConfirmed) {
								location.reload();
							}
						});
					}
				}
			},
			error: function() {
				$("#preLoader").hide();
			}
		});
	} else {
		toastr.error("Kindly select a line for confirmation!");
		return;
	}
}

function statusFormatter(cellvalue, options, rowObject) {
	return '<span class="font-weight-bold text-success">' + cellvalue + '</span>';
}

function checkBoxCheck(rowId) {
	$('#jqg_offerListGrid_' + rowId).prop("checked", false);
	$("#offerListGrid").jqGrid('resetSelection', rowId);
	$('#jqg_offerListGrid_' + rowId).prop("checked", true);
	$("#offerListGrid").jqGrid('setSelection', rowId);
	makeCheckedTotal(rowId);
}

function makeCheckedTotal(lineId) {

	var rowData = $('#offerListGrid').jqGrid('getChangedCells');
	for (var i = 0; i < rowData.length; i++) {
		if (rowData[i].id == lineId) {
			if (backLineId == lineId) {
				totalCountFlag++;
			} else {
				backLineId = lineId;
				totalCountFlag = 0;
				invalidQty = 0;
			}

			if (rowData[i].orderQty != "" && rowData[i].orderQty > 0 && parseInt(rowData[i].orderQty) >= parseInt(rowData[i].minQty)) {
				
				if ($('#jqg_offerListGrid_' + lineId).prop("checked") == true) {
					var flag = 0;
					for (var k = 0; k < totalObj.length; k++) {
						if (totalObj[k].lineId == lineId) {
							flag = 1;
						}
					}
					if (flag == 0) {
						var obj = { "lineId": lineId, "amt": parseFloat(rowData[i].offerPrice) * parseFloat(rowData[i].orderQty) };
						totalObj.push(obj);
					}

					for (var j = 0; j < totalObj.length; j++) {
						if (totalObj[j].lineId == lineId) {
							if (total == 0) {
								total = parseFloat(rowData[i].offerPrice) * parseFloat(rowData[i].orderQty);
							} else {
								var nestFlag = 0;
								if (totalCountFlag > 0 && invalidQty == 0) {
									total = total - parseFloat(totalObj[j].amt);
									totalObj[j].amt = parseFloat(rowData[i].offerPrice) * parseFloat(rowData[i].orderQty);
									nestFlag = 1;
								}
								if (totalObj[j].updateFlag == 1 && nestFlag == 0 && invalidQty == 0) {
									total = total - parseFloat(totalObj[j].amt);
									totalObj[j].amt = parseFloat(rowData[i].offerPrice) * parseFloat(rowData[i].orderQty);
								}
								total = total + parseFloat(rowData[i].offerPrice) * parseFloat(rowData[i].orderQty);
							}
							totalObj[j].updateFlag = 1;
							invalidQty = 0;
						}
					}

					checkedLines.push(lineId);
					$('#orderTotal').val('£ ' + total.toFixed(2));
					unCheckedLines = $.grep(unCheckedLines, function(value) {
						return value != lineId;
					});

				} else if ($('#jqg_offerListGrid_' + lineId).prop("checked") == false) {

					total = total - parseFloat(rowData[i].offerPrice) * parseFloat(rowData[i].orderQty);

					if (total > 0)
						$('#orderTotal').val('£ ' + total.toFixed(2));
					else
						$('#orderTotal').val('£ ' + 0);

					checkedLines = $.grep(checkedLines, function(value) {
						return value != lineId;
					});
					unCheckedLines.push(lineId);
				}
			} else {
				for (var j = 0; j < totalObj.length; j++) {
					if (totalObj[j].lineId == lineId) {
						total = total - parseFloat(totalObj[j].amt);
						totalObj[j].amt = 0;
						totalObj[j].updateFlag = 1;
						
					}
				}
				invalidQty = 1;

				if (total > 0)
					$('#orderTotal').val('£ ' + total.toFixed(2));
				else
					$('#orderTotal').val('£ ' + 0);

				$('#jqg_offerListGrid_' + lineId).prop("checked", false);
				$("#offerListGrid").jqGrid('resetSelection', lineId);
				toastr.error("Order Quantity for " + rowData[i].description + " with pipcode " + rowData[i].pipCode + " should be greater than or equal to " + rowData[i].minQty);
				return;
			}
		}
	}
}
