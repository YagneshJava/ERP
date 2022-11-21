var lineGridLastSelection;
$(document).ready(function(){
	
	$(".menu-item").removeClass('menu-item-here');
	$("#supplierPriceListPageLI").addClass('menu-item-here');
	bindKeyEvents();
	$("#priceListGrid").jqGrid({
		url: "getPriceList?lineType=All&supplierId="+$('#supplierId').val(),
		editurl: "updatePrice",
		mtype: "POST",
		datatype: "json",
		//height: 300,
		rowNum: 100,
		rowList: [100, 200, 500],
		colNames: ['Line No', 'Pip Code', 'Product', 'Price', 'Offer Price', 'Offer Status','Offer Min Qty','Offer Max Qty','Offer Start Date', 'Offer End Date','Supplier Id','Brand', 'Lead Time', 'Location',  'Expiry Date', 'Actions'],
		colModel: [

			{ name: 'id', index: 'id', align: "center", sorttype: "int", hidden: true },
			{ name: 'pipCode', index: 'pipCode', width: '70' },
			{ name: 'description', index: 'description', width: '300'},
			{ name: 'price', index: 'price' , editable: true, sorttype: "float", editoptions: {
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
											var r = $("#priceListGrid").getRowData(rowid);
											var col1 = r.id;
											
											$("#priceListGrid").jqGrid("saveRow", col1);
											jQuery('#priceListGrid').jqGrid('restoreRow', col1);
											jQuery('#priceListGrid').jqGrid('editRow', nextRowId, true);
		    					        }
		    					    }
		    					},
		    					
		          		       ]
				},
				editrules: { minValue: 0.01 } },
			{ name: 'offerPrice', index: 'offerPrice', editable: false, editoptions: {
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
											var r = $("#priceListGrid").getRowData(rowid);
											var col1 = r.id;
											
											$("#priceListGrid").jqGrid("saveRow", col1);
											jQuery('#priceListGrid').jqGrid('restoreRow', col1);
											jQuery('#priceListGrid').jqGrid('editRow', nextRowId, true);
		    					        }
		    					    }
		    					},
		    					
		          		       ]
				},
				editrules: { minValue: 0.01 }, formatter:blankFormatter },
			{ name: 'offerStatus', index: 'offerStatus', hidden: true },
			{ name: 'minQty', index: 'minQty', hidden: true },
			{ name: 'maxQty', index: 'maxQty', hidden: true },
			{ name: 'offerStartDate', index: 'offerStartDate', hidden: true },
			{ name: 'offerEndDate', index: 'offerEndDate', hidden: true },
			{ name: 'supplierId', index: 'supplierId', hidden: true },
			{ name: 'brandName', index: 'brandName', editable: true,
			editoptions: {
					dataEvents: [
		      		            {
		    					    type: 'keydown',
		    					    fn: function(e) {
		    					        var key = e.charCode || e.keyCode;
		    					        
										if (key == 13) {
											var nextRowId = $(this).closest('tr').next('tr').attr("id");
											var rowid = parseInt($(this).attr("id"));
											var r = $("#priceListGrid").getRowData(rowid);
											var col1 = r.id;
											
											$("#priceListGrid").jqGrid("saveRow", col1);
											jQuery('#priceListGrid').jqGrid('restoreRow', col1);
											jQuery('#priceListGrid').jqGrid('editRow', nextRowId, true);
		    					        }
		    					    }
		    					},
		    					
		          		       ]
				}
				},
			{ name: 'leadTime', index: 'leadTime',editable: true,
			editoptions: {
					dataEvents: [
		      		            {
		    					    type: 'keydown',
		    					    fn: function(e) {
		    					        var key = e.charCode || e.keyCode;
		    					        
										if (key == 13) {
											var nextRowId = $(this).closest('tr').next('tr').attr("id");
											var rowid = parseInt($(this).attr("id"));
											var r = $("#priceListGrid").getRowData(rowid);
											var col1 = r.id;
											
											$("#priceListGrid").jqGrid("saveRow", col1);
											jQuery('#priceListGrid').jqGrid('restoreRow', col1);
											jQuery('#priceListGrid').jqGrid('editRow', nextRowId, true);
		    					        }
		    					    }
		    					},
		    					
		          		       ]
				}
				},
			
			{ name: 'location', index: 'location', editable: true,
			editoptions: {
					dataEvents: [
		      		            {
		    					    type: 'keydown',
		    					    fn: function(e) {
		    					        var key = e.charCode || e.keyCode;
		    					        
										if (key == 13) {
											var nextRowId = $(this).closest('tr').next('tr').attr("id");
											var rowid = parseInt($(this).attr("id"));
											var r = $("#priceListGrid").getRowData(rowid);
											var col1 = r.id;
											
											$("#priceListGrid").jqGrid("saveRow", col1);
											jQuery('#priceListGrid').jqGrid('restoreRow', col1);
											jQuery('#priceListGrid').jqGrid('editRow', nextRowId, true);
		    					        }
		    					    }
		    					},
		    					
		          		       ]
				}
				},
			{ name: 'expiryDate', index: 'expiryDate',
				sortable: false,
				width: 100,
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
											var r = $("#priceListGrid").getRowData(rowid);
											var col1 = r.id;
											
											$("#priceListGrid").jqGrid("saveRow", col1);
											jQuery('#priceListGrid').jqGrid('restoreRow', col1);
											jQuery('#priceListGrid').jqGrid('editRow', nextRowId, true);
		    					        }
		    					    }
		    					},
		          		       ]
				}
			},
			{ name: 'action', index: 'action', editable: false, formatter: actionFormatter },
		],
		pager: "#priceListGridPager",
		viewrecords: true,
//		shrinkToFit: false,
		autowidth: true,
//		cellEdit: true,
//		cellsubmit: 'remote',
//		cellurl: 'updatePrice',
		jsonReader: { repeatitems: false, id: "id" },
		guiStyle: "bootstrap",
		iconSet: "fontAwesome",
		rownumbers: true,
		onSelectRow: function(id) {
			//			debugger;
			if (id && id !== lineGridLastSelection) {
				jQuery('#priceListGrid').jqGrid('restoreRow', lineGridLastSelection);
			}
			jQuery('#priceListGrid').jqGrid('editRow', id, true);
			lineGridLastSelection = id;

    },
	});
	
	$("#priceListGrid").jqGrid('setLabel','rn','#');
	
	$('#offerMinQty').keypress(myFunction);
	$('#offerPrice').keypress(myFunction);
	$("#MakeOfferModal").on("hidden.bs.modal", function() {
		$('#offerForm')[0].reset();
	});
	
	$("#srchProduct").autocomplete({
		source: function(request, response) {
			$.ui.autocomplete.prototype._renderMenu = function(ul, items) {
				var self = this;
				$.each(items, function(index, item) {
					self._renderItem(ul, item);
				});
			};
			$.getJSON("searchProductForPriceList", { query: $.trim($(this.element).val()),supplierId:$('#supplierId').val() }, response);
		},
		position: { offset: '-10 4' },
		minLength:3,
		focus: function(event, ui) {
			$("#srchProduct").val(ui.item.description);
			$(".ui-menu-item").removeClass('tt-cursor');
			$(".ui-state-active").parent().addClass('tt-cursor');
			return false;
		},
		select: function(event, ui) {
			$("#srchProduct").val(ui.item.description);
			return false;
		}
	}).data("ui-autocomplete")._renderItem = function(ul, item) {
		return $("<li></li>").data("ui-autocomplete-item", item)
			.append("<table><tr><td style='width: 270px;'>" + item.description + "</td><td>" + item.pipCode + "</td></tr></table>")
			.appendTo(ul);
	};
	
	
	$('#offersDateRangePicker').daterangepicker({
       		autoclose:true,
            buttonClasses: ' btn',
            applyClass: 'btn-primary',
            cancelClass: 'btn-secondary',
            startDate: new Date(),
            locale: {
			 format: 'DD-MMM-YYYY',
			 cancelLabel: 'Clear'
		 },
        }, function(start, end, label) {
            $('#offersDateRangePicker .form-control').val( start.format('DD-MMM-YYYY') + ' / ' + end.format('DD-MMM-YYYY'));
        });
	$('#offersDateRangePicker').on('cancel.daterangepicker', function(ev, picker) {
//		$('#searchDateRangePickerSupplierQt').daterangepicker('clearDates');
		$('#offerStartEndDate').val('');
	});
	
});

function editPrice(priceLineId) {

		if (priceLineId && priceLineId !== lineGridLastSelection) {
			var grid = $("#priceListGrid");
			grid.jqGrid('restoreRow', lineGridLastSelection);
			grid.jqGrid('editRow', priceLineId, {
				keys: true,
				onEnter: function(rowid, options, event) {
					$(this).jqGrid("saveRow", priceLineId, options);
				},
			});
			lineGridLastSelection = quotationLineid;
	}
}



function loadPriceList(){
	
	jQuery("#priceListGrid").jqGrid('setGridParam', {
					datatype: 'json', mtype: 'POST', page: 1, rows: 100,
					url : 'getPriceList?lineType='+$('#srchLineType').val()+'&description='+$('#srchProduct').val()+'&supplierId='+$('#supplierId').val()
				});
				$('#priceListGrid').trigger('reloadGrid');
}

function actionFormatter(cellvalue, options, rowObject){
	return '<a onclick=showRowData("'+options.rowId+'") class="btn btn-light-primary  btn-icon btn-hover-primary btn-sm"  data-toggle="tooltip" title=" Make it Offer"><i class="icon-lg la la-tags"></i></a>'+"&nbsp <a onclick='editPrice(\"" +options.rowId+ "\");' title='Edit' href='javascript:void(0)'class='btn btn-sm btn-bg-white btn-clean btn-icon-warning  btn-hover-warning  btn-icon mr-2 my-1 my-lg-0' > <i class='la la-edit'></i></a>";
//	&nbsp<a href="#" class="btn btn-success btn-hover-success btn-icon btn-sm"  data-toggle="tooltip" title=" Offer Details "><i class="icon-lg la la-info-circle"></i></a>
		
}


function showRowData(rowId){

	$("#"+rowId).addClass('not-editable-row');
	var rowData = $('#priceListGrid').jqGrid('getRowData', rowId);
	console.log(rowData.minQty);
	$("#productName").html(rowData.description);
	$("#pipCode").html(rowData.pipCode);
	$("#sellingPrice").html(rowData.price);
	$("#supplierId").val(rowData.supplierId);
	$("#offerStartEndDate").val(rowData.offerStartDate+"/"+rowData.offerEndDate);
	$("#offerMinQty").val(rowData.minQty >0 ?rowData.minQty:"");
	$("#offerMaxQty").val(rowData.maxQty >0 ?rowData.maxQty:"");
	$("#offerPrice").val(rowData.offerPrice>0?rowData.offerPrice:"");
	$("#brandName").val(rowData.brandName);
	$("#lineId").val(rowId);
	
	if(rowData.offerStatus == "Active")
		$('#status').attr('checked', true);
	else
		$('#status').attr('checked', false);

	$("#MakeOfferModal").modal('show');
}
function updatePriceList(){
	
//	if($('#status').is(':checked')){
		if($('#offerStartEndDate').val() == '' || $('#offerStartEndDate').val() == undefined || $('#offerStartEndDate').val() == '/'){
			toastr.error("Kindly select the offer start and end date");
			return;
		}if($('#offerPrice').val() == '' || $('#offerPrice').val() == undefined || $('#offerPrice').val() <= 0){
			toastr.error("Offer price should be greater than zero");
			return;
		}
		$('#offerMinQty').val().trim()
		
		
	var offerStatus;
	var dates = $('#offerStartEndDate').val().split('/');
	var offerStartDate = dates[0];
	var offerEndDate = dates[1];
	
	if ($('#status').is(':checked')) {
		if(new Date(offerEndDate) < new Date(formattedDate())){
			console.log(new Date(offerEndDate) < new Date());
			toastr.error("Offer Must stay available for today");
			return;
		}
		offerStatus = 'Active';
	}else {
		offerStatus = 'InActive';
	}
		
		var dataObj = {
			"offerStartDate":offerStartDate,
			"offerEndDate":offerEndDate,
			"id":$('#lineId').val(),
			"offerPrice":$('#offerPrice').val().trim(),
			"offerStatus":offerStatus,
			"pipCode":$("#pipCode").html(),
			"supplierId":$('#supplierId').val().trim(),
			"brandName":$('#brandName').val().trim()
		}
	if($('#offerMinQty').val().trim() !== "" && $('#offerMaxQty').val().trim() !== ""){
			dataObj["minQty"]=$('#offerMinQty').val().trim();
			dataObj["maxQty"]=$('#offerMaxQty').val().trim();
		}else if($('#offerMinQty').val().trim() !== "" && $('#offerMaxQty').val().trim() === ""){
			dataObj["minQty"]=$('#offerMinQty').val().trim();
		}else if($('#offerMinQty').val().trim() === "" && $('#offerMaxQty').val().trim() !== ""){
			dataObj["maxQty"]=$('#offerMaxQty').val().trim();
		}
	
	$("#preLoader").show();
	$.ajax({
		url: "updatePriceListForOffer",
		data: dataObj,
		type: "POST",
		dataType: 'JSON',
		success: function(data) {
			$("#preLoader").hide();
			$("#MakeOfferModal").modal('hide');
			if (data.error != undefined && data.error != "") {
				toastr.error(data.error)
				return;
			}
			if (data.success != undefined) {
				
				var text;
				if(offerStatus =='Active')
					text = 'Offer successfully Activated.'
				else
					text = 'Offer successfully In-Activated.'
					
					swal.fire({
						title: 'Success',
						text: text,
						icon: 'success',
					}).then(function(submit) {
						if (submit.isConfirmed) {
//							jQuery("#priceListGrid").jqGrid('setGridParam', {
//								datatype: 'json', mtype: 'POST', page: 1, rows: 100,
//								url: 'getPriceList?lineType=All&supplierId='+$('#supplierId').val()
//							}).trigger('reloadGrid');
							$('#priceListGrid').trigger('reloadGrid');
						}
					});
			}
		},
		error: function() {
			$("#preLoader").hide();
			toastr.error("Something went wrong!");
			return;
		}

	});
	
	$("#"+$('#lineId').val()).removeClass('not-editable-row');
}


var myFunction = function(evt) {
	
	evt = (evt) ? evt : window.event;
	var charCode = (evt.which) ? evt.which : evt.keyCode;
	if (charCode > 31 && charCode != 46 && (charCode < 48 || charCode > 57)) {
		return false;
	}
	return true;
}

function blankFormatter(cellvalue, options, rowObject) {
	if (cellvalue === undefined || cellvalue == 0)
		return cellvalue = '';
	else {
		return $.fn.fmatter.call(this, "currency", cellvalue, options);
	}
}

function bindKeyEvents(){
	$('#srchProduct').keypress(function(event) {
		if (event.keyCode === 13) {
			event.preventDefault();
				jQuery("#priceListGrid").jqGrid('setGridParam', {
					datatype: 'json', mtype: 'POST', page: 1, rows: 100,
					url : 'getPriceList?lineType='+$('#srchLineType').val()+'&description='+$('#srchProduct').val()+'&supplierId='+$('#supplierId').val()
				});
				$('#priceListGrid').trigger('reloadGrid');
		}
	});
	
}