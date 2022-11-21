$(document).ready(function() {
	$(".menu-item").removeClass('menu-item-here');
	$("#productMappingLI").addClass('menu-item-here');
	
	 getProductCategory();
	$("#bnfPipcodeView").jqGrid({
		guiStyle: "bootstrap",
        iconSet: "fontAwesome",
		url: '',
		mtype: "POST",
		datatype: "local",
		colModel: [
			{ label: 'Id', name: 'id', width: 100, align: "left",editable:false, hidden: true },
			{ label: 'Master Pip Code', name: 'masterPipCode', width: 430, align: "left",editable:false , hidden: true },
			{ label: 'Pip Code', name: 'pipCode', width: 200, align: "left",editable:true },
			{ label: 'Supplier', name: 'supplierName', width: 400, align: "left",editable:false },
			{ label: 'Action', name: 'active', width: 100, align: "center",editable:false, formatter: editFormatter },
		],
		pager: "#bnfPipcodeViewPager",
		viewrecords: true,
		shrinkToFit: false,
		autowidth: true,
		height:'auto',
		rowNum: 10,
		rowList: [10, 20, 50],
		cellEdit : true,
		cellsubmit : 'remote',
		cellurl : 'createAlternatePipcode',
		editurl : 'createAlternatePipcode',
		jsonReader: { repeatitems: false, id: "id" },
		guiStyle: "bootstrap",
		iconSet: "fontAwesome",
	});
	
	$("#bnfPipcodeView").jqGrid ('setLabel', 'pipCode', '', {'text-align':'left'});
	$("#bnfPipcodeView").jqGrid ('setLabel', 'supplierName', '', {'text-align':'left'});
	$("#bnfPipcodeView").jqGrid ('setLabel', 'active', '', {'text-align':'center'});

	$("#pipCode").autocomplete({
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
		minLength: 3,
		focus: function(event, ui) {
			$("#pipCode").val(ui.item.pipCode);
			$(".ui-menu-item").removeClass('tt-cursor');
			$(".ui-state-active").parent().addClass('tt-cursor');
			return false;
		},
		select: function(event, ui) {
			fillBnfValues(ui.item);
			return false;
		}
	}).data("ui-autocomplete")._renderItem = function(ul, item) {
		return $("<li></li>").data("ui-autocomplete-item", item)
			.append("<table style='width:100%;'><tr><td style='width:40%;'>" + item.pipCode + "</td><td style='width:60%;'>" + item.description + "</td></tr></table>")
			.appendTo(ul);
	};
	$("#bnfCode").autocomplete({
		source: function(request, response) {
			$.ui.autocomplete.prototype._renderMenu = function(ul, items) {
				var self = this;
				$.each(items, function(index, item) {
					self._renderItem(ul, item);
				});
			};
			$.getJSON("searchBNFCode", { query: $.trim($(this.element).val()) }, response);
		},
		position: { offset: '-10 4' },
		minLength: 3,
		focus: function(event, ui) {
			$("#bnfCode").val(ui.item.bnfCode);
			$('#bnfCodeId').val(ui.item.bnfCodeId);
			$(".ui-menu-item").removeClass('tt-cursor');
			$(".ui-state-active").parent().addClass('tt-cursor');
			return false;
		},
		select: function(event, ui) {
			$('#bnfCodeId').val(ui.item.bnfCodeId);
			$('#bnfCode').val(ui.item.bnfCode);
			return false;
		}
	}).data("ui-autocomplete")._renderItem = function(ul, item) {
		return $("<li></li>").data("ui-autocomplete-item", item)
			.append("<table style='width:100%;'><tr><td style='width:20%;'>" + item.bnfCode + "</td><td style='width:80%;'>" + item.bnfName + "</td></tr></table>")
			.appendTo(ul);
	};
	
	$("#supplier").autocomplete({
		source: function(request, response) {
			$.ui.autocomplete.prototype._renderMenu = function(ul, items) {
				var self = this;
				$.each(items, function(index, item) {
					self._renderItem(ul, item);
				});
			};
			$.getJSON("searchSupplier", { supplierQuery: $.trim($(this.element).val()) }, response);
		},
		position: { offset: '-10 4' },
		minLength: 3,
		focus: function(event, ui) {
			$("#supplier").val(ui.item.name);
			$("#supplierId").val(ui.item.id);
			$(".ui-menu-item").removeClass('tt-cursor');
			$(".ui-state-active").parent().addClass('tt-cursor');
			return false;
		},
		select: function(event, ui) {
//			fillBnfValues(ui.item);
			$("#supplierId").val(ui.item.id);
			$("#supplier").val(ui.item.name);
			$("#alternatePipCode").attr('disabled',false);
			$("#alternatePipCode").focus();
			return false;
		}
	}).data("ui-autocomplete")._renderItem = function(ul, item) {
		return $("<li></li>").data("ui-autocomplete-item", item)
			.append("<table style='width:100%;'><tr><td style='width:40%; display:none;'>" + item.id + "</td><td style='width:60%;'>" + item.name + "</td></tr></table>")
			.appendTo(ul);
	};
	
	$('#bnfForm').bootstrapValidator({
		submitHandler: function(validator, form, submitButton) {
			addEditBNFCode();
    	},
		fields: {
//			bnfCode: {
//					validators: {
//						notEmpty: {
//							message: 'PIP Code is required and cannot be empty'
//						},
//					}
//			},
//			bnfName: {
//					validators: {
//						notEmpty: {
//							message: 'Product description is required and cannot be empty'
//						},
//					}
//			},
			packSize: {
					validators: {
						notEmpty: {
							message: 'Pack Size is required and cannot be empty'
						},
					}
			},
			strength: {
					validators: {
						notEmpty: {
							message: 'Strength is required and cannot be empty'
						},
					}
			},
			category: {
					validators: {
						notEmpty: {
							message: 'Category is required and cannot be empty'
						},
					}
			},
			form: {
					validators: {
						notEmpty: {
							message: 'Form is required and cannot be empty'
						},
					}
			},
			description: {
					validators: {
						notEmpty: {
							message: 'Description is required and cannot be empty'
						},
					}
			},
			pipCode: {
					validators: {
						notEmpty: {
							message: 'Pipcode is required and cannot be empty'
						},
					}
			},
		}
	});
	
	$('#pipcodeForm').bootstrapValidator({
		submitHandler: function(validator, form, submitButton) {
			addAlternatePipCode();
    	},
		fields: {
			alternatePipCode: {
					validators: {
						notEmpty: {
							message: 'Pipcode required and cannot be empty'
						},
					}
			},
			supplier: {
					validators: {
						notEmpty: {
							message: 'Supplier name required and cannot be empty'
						},
					}
			},
		}
	});
	
	$("#pipCode").keyup(function(){
		if($(this).val().trim() === ""){
			$('#bnfForm').trigger('reset');
		}else{
			$('#pip').val($(this).val().toUpperCase());
		}
	});
//	$("#pipCode").keyup(function(){
//		if($(this).val().trim() !== ""){
//			$('#pipCode').val($(this).val().toUpperCase());
//		}
//	});
});

function editFormatter(cellvalue, options, rowObject) {
	if (rowObject.id != undefined && rowObject.id != "") {
		return "<a href='javascript:editQuotationRow(\"" + rowObject.id +"\")' class='btn btn-sm btn-clean btn-icon-warning  btn-hover-warning  btn-icon mr-2 my-1 my-lg-0 mr-4' > <i class='la la-pencil'></i>  </a>"
		+"<a  href='javascript:deleteAlternatePipCode(\"" + rowObject.id +"\")' class='btn btn-sm btn-clean btn-icon-danger  btn-hover-danger  btn-icon mr-2 my-1 my-lg-0' > <i class='la la-trash'></i>  </a>";
	}
}

function fillBnfValues(data) {
	$("#bnfForm").data('bootstrapValidator').resetForm();
	$("#bnfCodeId").val(data.bnfCodeId);
	$("#pipCodeId").val(data.pipCodeId);
//	$("#bnfCode").attr("disabled", true);
	$("#bnfCode").val(data.bnfCode);
	$("#bnfCodeId").val(data.bnfCodeId);
	$("#pipCode").val(data.pipCode);
	$("#description").val(data.description);
	$("#strength").val(data.strength);
	$("#packSize").val(data.packSize);
	$("#category").val(data.category);
	$("#status").val(data.status);
	$("#form").val(data.form);
	jQuery("#bnfPipcodeView").jqGrid('setGridParam', {
		datatype: 'json', mtype: 'POST',
		page: 1, rowNum: 10, url: 'getAlternatePipcodes?pipCode=' + data.pipCode
	});
	jQuery("#bnfPipcodeView").trigger("reloadGrid");
}

function resetBNfForm() {
	$("#bnfCode").attr("disabled", false);
	$("#bnfForm").validate().resetForm();
}

function addPipCode() {
	if($("#bnfCode").val().trim() === null || $("#bnfCode").val().trim() === ""){
		$('#bnfForm').data('bootstrapValidator').validate();
		return;
	}
	var requestData = {
		pipCodeId: null,
		bnfCode: $("#bnfCode").val(),
		bnfCodeId: $("#bnfCodeId").val(),
		pipCode: $("#pipCode").val().toUpperCase(),
		supplierId: $("#supplierId").val(),
		supplierName: $("#supplier").val(),
		description: $("#bnfName").val(),
		packSize: $("#packSize").val(),
	}
	$('#preLoader').show();
	$.ajax({
		url: "createPipcode",
		data: requestData,
		type: "POST",
		dataType: 'JSON',
		secureuri: false,
		success: function(data) {
			$('#preLoader').hide();
			$("#pipCode").val("").change();
			$("#supplier").val("");
			$("#supplierId").val("");
			$("#supplier").focus();
			$("#pipCode").attr('disabled',true);
			if (data.error != undefined && data.error != "") {
				errorMsg(data.error);
			}
			if (data.message != undefined && data.message != "") {
				successMsg(data.message);
			}
			jQuery("#bnfPipcodeView").trigger("reloadGrid");
		},
		error:function(error){
			$('#preLoader').show();
		}
	});
}
function deletePipCode(pipcodeId) {
	$('#preLoader').show();
	$.ajax({
		url: "deletePipcode",
		data: {
			pipCodeId:pipcodeId
		},
		type: "POST",
		dataType: 'JSON',
		secureuri: false,
		success: function(data) {
			$('#preLoader').hide();
			if (data.error != undefined && data.error != "") {
				errorMsg(data.error);
			}
			if (data.message != undefined) {
				successMsg(data.message);
			}
			jQuery("#bnfPipcodeView").trigger("reloadGrid");
		},
		error:function(error){
			$('#preLoader').hide();
		}
	});
}
function addEditBNFCode() {
	swal.fire({
	    title: "Are you sure?",
	    text: "Do you want save Pip code!",
	    icon: 'question',
		showCancelButton: true,
		focusConfirm:true
	  }).then((submit) => {
		 if (submit.isConfirmed) {
			$('#preLoader').show();
			$.ajax({
				url: "createPipcode",
				data: $("#bnfForm").serialize(),
				type: "POST",
				dataType: 'JSON',
				secureuri: false,
				success: function(data) {
					$('#preLoader').hide();
					$("#bnfCodeId").val(data.bnfCodeId);
					
					if (data.error != undefined && data.error != "") {
						errorMsg(data.error);
						jQuery("#bnfPipcodeView").trigger("reloadGrid");
						return;
					}
					successMsg("Pip Code has been successfuly saved");
					jQuery("#bnfPipcodeView").trigger("reloadGrid");
				},error:function(data){
					$('#preLoader').hide();
				}
			});
		}
	});
}

var lastRowId;
function editQuotationRow(rowId) {
//	if(rowId && rowId !== lastRowId){
		var grid = $("#bnfPipcodeView");
		grid.jqGrid('restoreRow', lastRowId);
		lastRowId = rowId;
		grid.jqGrid('editRow', rowId, {
			
			keys: true,
			onEnter: function(rowid, options, event) {
					$(this).jqGrid("saveRow", rowId, options);
				},

			});
				lastRowId = rowId;
//	}
}


function getMappedPipcodeDatatble(){
	
}

function addAlternatePipCode() {
	if($("#pipCode").val().trim() === null || $("#pipCode").val().trim() === ""){
		$('#bnfForm').data('bootstrapValidator').validate();
		return;
	}
	
	var requestData = {
		pipCode: $("#alternatePipCode").val(),
		supplierId: $("#supplierId").val(),
		supplierName: $("#supplier").val(),
		masterPipCodeId:$("#pipCodeId").val(),
		masterPipCode:$("#pipCode").val()
	}
	$('#preLoader').show();
	$.ajax({
		url: "createAlternatePipcode",
		data: requestData,
		type: "POST",
		dataType: 'JSON',
		secureuri: false,
		success: function(data) {
			$('#preLoader').hide();
			$("#alternatePipCode").val("").change();
			$("#supplier").val("");
			$("#supplierId").val("");
			$("#supplier").focus();
			$("#pipCode").attr('disabled',true);
			jQuery("#bnfPipcodeView").trigger("reloadGrid");
			if (data.error != undefined && data.error != "") {
				errorMsg(data.error);
				return;
			}
			if (data.message != undefined && data.message != "") {
				successMsg(data.message);
				return;
			}
			
		},
		error:function(error){
			$('#preLoader').show();
		}
	});
}


function deleteAlternatePipCode(id) {
	$('#preLoader').show();
	$.ajax({
		url: "deleteAlternatePipcode",
		data: {
			id:id
		},
		type: "POST",
		dataType: 'JSON',
		secureuri: false,
		success: function(data) {
			$('#preLoader').hide();
			if (data.error != undefined && data.error != "") {
				errorMsg(data.error);
			}
			if (data.message != undefined) {
				successMsg(data.message);
			}
			jQuery("#bnfPipcodeView").trigger("reloadGrid");
		},
		error:function(error){
			$('#preLoader').hide();
		}
	});
}