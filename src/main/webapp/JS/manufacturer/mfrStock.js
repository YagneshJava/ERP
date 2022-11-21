var lineGridLastSelection;
$(document).ready(function(){
	
	$(".menu-item").removeClass('menu-item-here');
	$("#manufacturerStockPageLI").addClass('menu-item-here');
	
	getDeliveryAddress();
	
	$("#stockGrid").jqGrid({
		url: "getStockGrid?lineType=All&supplierId="+$('#supplierId').val()+"&locationId="+$('#location').val(),
		editurl: "updateStock",
		mtype: "POST",
		datatype: "json",
		//height: 300,
		rowNum: 100,
		rowList: [100, 200, 500],
		colNames: ['Line No', 'Pip Code', 'Product','Supplier Id','Brand', 'Quantity', 'Expiry Date',  'Actions'],
		colModel: [

			{ name: 'id', index: 'id', align: "center", sorttype: "int", hidden: true },
			{ name: 'pipcode', index: 'pipcode', width: '70' },
			{ name: 'description', index: 'description', width: '200'},
			{ name: 'supplierId', index: 'supplierId', hidden: true },
			{ name: 'brand', index: 'brand', editable: true,
			editoptions: {
					dataEvents: [
		      		            {
		    					    type: 'keydown',
		    					    fn: function(e) {
		    					        var key = e.charCode || e.keyCode;
		    					        
										if (key == 13) {
											var nextRowId = $(this).closest('tr').next('tr').attr("id");
											var rowid = parseInt($(this).attr("id"));
											var r = $("#stockGrid").getRowData(rowid);
											var col1 = r.id;
											
											$("#stockGrid").jqGrid("saveRow", col1);
											jQuery('#stockGrid').jqGrid('restoreRow', col1);
											jQuery('#stockGrid').jqGrid('editRow', nextRowId, true);
		    					        }
		    					    }
		    					},
		    					
		          		       ]
				}},
			{ name: 'qty', index: 'qty', align: 'center', editable:true,
			editoptions: {
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
											var r = $("#stockGrid").getRowData(rowid);
											var col1 = r.id;
											
											$("#stockGrid").jqGrid("saveRow", col1);
											jQuery('#stockGrid').jqGrid('restoreRow', col1);
											jQuery('#stockGrid').jqGrid('editRow', nextRowId, true);
		    					        }
		    					    }
		    					},
		    					
		          		       ]
				}
					},
			{
				name: 'expiryDate',
				index: 'expiryDate',
				sortable: false,
				width: 130,
				align: 'center',
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
											var r = $("#stockGrid").getRowData(rowid);
											var col1 = r.id;
											$("#stockGrid").jqGrid("saveRow", col1);
											jQuery('#stockGrid').jqGrid('restoreRow', col1);
											jQuery('#stockGrid').jqGrid('editRow', nextRowId, true);
		    					        }
		    					    }
		    					},
		          		       ]
					
				},
				 formatoptions: { newformat: "d-M-Y" }
			},
			
			{ name: 'action', index: 'action', align: 'center', editable: false, formatter: actionFormatter },
		],
		pager: "#stockGridPager",
		viewrecords: true,
		shrinkToFit: false,
		autowidth: true,
//		cellEdit: true,
//		cellsubmit: 'remote',
//		cellurl: 'updateStock',

		jsonReader: { repeatitems: false, id: "id" },
		guiStyle: "bootstrap",
		iconSet: "fontAwesome",
		rownumbers: true,
		onSelectRow: function(id) {
			if (id && id !== lineGridLastSelection) {
				jQuery('#stockGrid').jqGrid('restoreRow', lineGridLastSelection);
			}
			jQuery('#stockGrid').jqGrid('editRow', id, true);
			lineGridLastSelection = id;
		}
	});
	
	$("#stockGrid").jqGrid('setLabel','rn','#');
		$('#stockGrid').jqGrid('setLabel', 'qty', '', { 'text-align': 'center' });
		$('#stockGrid').jqGrid('setLabel', 'expiryDate', '', { 'text-align': 'center' });
		$('#stockGrid').jqGrid('setLabel', 'action', '', { 'text-align': 'center' });
	
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
			$.getJSON("searchProductForStock", { query: $.trim($(this.element).val()),supplierId:$('#supplierId').val(),locationId:$('#location').val() }, response);
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
			.append("<table><tr><td style='width: 270px;'>" + item.description + "</td><td>" + item.pipcode + "</td></tr></table>")
			.appendTo(ul);
	};
	
	$('#srchMain').keyup(function(event) {
	jQuery("#stockGrid").jqGrid('setGridParam', {
					datatype: 'json', mtype: 'POST', page: 1, rows: 100,
					url : 'getStockGrid?locationId='+$('#location').val()+'&description='+$('#srchMain').val()+'&supplierId='+$('#supplierId').val()
				});
				$('#stockGrid').trigger('reloadGrid');
				});
	
});




function loadStock(){
	
	jQuery("#stockGrid").jqGrid('setGridParam', {
					datatype: 'json', mtype: 'POST', page: 1, rows: 100,
					url : 'getStockGrid?locationId='+$('#location').val()+'&description='+$('#srchProduct').val()+'&supplierId='+$('#supplierId').val()
				});
				$('#stockGrid').trigger('reloadGrid');
}

function actionFormatter(cellvalue, options, rowObject){
	return "<a onclick='editPrice(\"" +options.rowId+ "\");' title='Edit' href='javascript:void(0)'class='btn btn-sm btn-bg-white btn-clean btn-icon-warning  btn-hover-warning  btn-icon mr-2 my-1 my-lg-0' > <i class='la la-pencil'></i></a>";
//	&nbsp<a href="#" class="btn btn-success btn-hover-success btn-icon btn-sm"  data-toggle="tooltip" title=" Offer Details "><i class="icon-lg la la-info-circle"></i></a>
		
}


function editPrice(priceLineId) {

		if (priceLineId && priceLineId !== lineGridLastSelection) {
			var grid = $("#stockGrid");
			grid.jqGrid('restoreRow', lineGridLastSelection);
			grid.jqGrid('editRow', priceLineId, {
				keys: true,
				onEnter: function(rowid, options, event) {
					$(this).jqGrid("saveRow", priceLineId, options);
				},
			});
			lineGridLastSelection = priceLineId;
	}
}



function showRowData(rowId){

	var rowData = $('#stockGrid').jqGrid('getRowData', rowId);
	$("#productName").html(rowData.description);
	$("#pipCode").html(rowData.pipCode);
	$("#sellingPrice").html(rowData.price);
	$("#supplierId").val(rowData.supplierId);
	$("#offerStartEndDate").val(rowData.offerStartDate+"/"+rowData.offerEndDate);
	$("#offerMinQty").val(rowData.minQty >0 ?rowData.minQty:"");
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
		
	
	
	$("#preLoader").show();
	$.ajax({
		url: "updatePriceListForOffer",
		data: {
			"offerStartDate":offerStartDate,
			"offerEndDate":offerEndDate,
			"id":$('#lineId').val(),
			"minQty":$('#offerMinQty').val().trim(),
			"offerPrice":$('#offerPrice').val().trim(),
			"offerStatus":offerStatus,
			"pipCode":$("#pipCode").html(),
			"supplierId":$('#supplierId').val().trim(),
			"brandName":$('#brandName').val().trim()
		},
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
							$('#stockGrid').trigger('reloadGrid');
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

function dropZoneFunction(){
	
	$('#myDropZone').dropzone({
			
			url: "uploadSupplierStock?locationId="+$('#location').val(), // Set the url for your upload script location
			paramName: "stockFile", // The name that will be used to transfer the file
			maxFiles: 1,
			maxFilesize: 10, // MB
			addRemoveLinks: true,
			acceptedFiles: ".xlsx, .xls, .csv",
//			autoProcess : false,
			accept: function(file, done) {
				if (file.name == "justinbieber.jpg") {
					done("Naha, you don't.");
				} else {
					done();
				}
			}, init: function() {
				this.on("error", function(file, response) {
					this.destroy();
					$('#UploadStockModal').modal('hide');
//					alert('Something went wrong');
					loadStock();
				})
				this.on("success", function(file, response) {
					this.destroy();
					$('#UploadStockModal').modal('hide');
					loadStock();
				})
			}
		});
}