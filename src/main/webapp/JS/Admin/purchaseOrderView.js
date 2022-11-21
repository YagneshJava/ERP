$(document).ready(function(){
	$(".menu-item").removeClass('menu-item-here');
	$("#purchaseOrderViewLI").addClass('menu-item-here');
	
	$('#startEndDate').keydown(function(e) {
	    if ((e.keyCode == 8 || e.keyCode == 46)) {
	        $(this).val("");
	    }
	});	

	$('#purchaseOrderForm').bootstrapValidator({
		submitHandler: function(validator, form, submitButton) {
			getPurchaseOrderViewList();
    	}
	});
	
	$("#purchaseOrderViewGrid").jqGrid({
			url: 'getPurchaseOrderViewList',
			mtype: "POST",
			datatype: "json",
			colModel: [
					{label: 'Quotation ID',name: 'quotationId',align: 'left'},
					{label: 'Order ID',name: 'orderId',align: 'left'},
					{label: 'Supplier ID',name: 'supplierId',align: 'left'},
					{label: 'Supplier Name',name: 'supplierName',align: 'left'},
					{label: 'Customer ID',name: 'customerId',align: 'left'},
					{label: 'Customer Name',name: 'customerName',align: 'left'},
					{label: 'Created Date',name: 'createdDate',align: 'left'},
					{label: 'Status',name: 'status',align: 'center',formatter:statusFormatter},
			],
			pager: "#purchaseOrderViewGridPager",
		viewrecords: true,
		shrinkToFit: false,
		autowidth: true,
			height: 500,
		rowNum: 50,
		rowList: [50, 100, 200],
		guiStyle: "bootstrap",
		iconSet: "fontAwesome",
//			subGrid: true,
//			subGridRowExpanded: showPurchaseOrderLineGrid,
		onSelectRow: function(id) {
			$('#editModal').modal('show');
			var rowData = $(this).jqGrid ('getRowData', id);
			$('#lineOrderId').val('');
			$('#orderStatus').val('');
			$('#lineOrderId').val(rowData.orderId);
			$('#linecustomerName').val(rowData.customerName);
			$('#linesupplierName').val(rowData.supplierName);
			$('#orderStatus').val(rowData.status);
			showPurchaseOrderLineGrid(rowData.quotationId, rowData.supplierId);
    },
			loadComplete:function(){
				$("#searchPurchaseOrderBtn").removeAttr('disabled');
			}
			
		});
		
		$("#purchaseOrderViewGrid").jqGrid ('setLabel', 'quotationId', '', {'text-align':'left'});
		$("#purchaseOrderViewGrid").jqGrid ('setLabel', 'orderId', '', {'text-align':'left'});
		$("#purchaseOrderViewGrid").jqGrid ('setLabel', 'supplierId', '', {'text-align':'left'});
		$("#purchaseOrderViewGrid").jqGrid ('setLabel', 'supplierName', '', {'text-align':'left'});
		$("#purchaseOrderViewGrid").jqGrid ('setLabel', 'customerId', '', {'text-align':'left'});
		$("#purchaseOrderViewGrid").jqGrid ('setLabel', 'customerName', '', {'text-align':'left'});
		$("#purchaseOrderViewGrid").jqGrid ('setLabel', 'createdDate', '', {'text-align':'left'});
		$("#purchaseOrderViewGrid").jqGrid ('setLabel', 'status', '', {'text-align':'center'});
		
		getPurchaseOrderViewList();
		
		$("#supplierId").autocomplete({
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
				$("#supplierId").val(ui.item.id);
				$(".ui-menu-item").removeClass('tt-cursor');
				$(".ui-state-active").parent().addClass('tt-cursor');
				return false;
			},
			select: function(event, ui) {
				getPurchaseOrderViewList();
				return false;
			}
		}).data("ui-autocomplete")._renderItem = function(ul, item) {
			return $("<li></li>").data("ui-autocomplete-item", item)
				.append("<table style='width:100%;'><tr><td style='width:40%;'>" + item.id + "</td><td style='width:60%;'>" + item.name + "</td></tr></table>")
				.appendTo(ul);
		};
		
		$('#srchMain').keyup(function(event) {
		jQuery("#purchaseOrderViewGrid").jqGrid('setGridParam', {
		datatype: 'json', mtype: 'POST',
		page: 1, rowNum: 50, url: 'getPurchaseOrderViewList?quotationId=' + $("#quotationId").val() +
						  '&customerId=' + $("#customerId").val() +
						  '&supplierId=' + $("#supplierId").val()+
						  '&orderId='   +  $("#srchMain").val()+
						  '&startEndDate=' + $("#startEndDate").val()
	});
	jQuery("#purchaseOrderViewGrid").trigger("reloadGrid");
	});
	
	
	$('#purchaseOrderDateRanger').daterangepicker({
		 autoclose: true,
		 buttonClasses: ' btn',
		 applyClass: 'btn-primary',
		 cancelClass: 'btn-secondary',
		 locale: {
			 format: 'DD-MMM-YYYY',
			 cancelLabel: 'Clear'
		 },
        }, function(start, end, label) {
            $('#purchaseOrderDateRanger .form-control').val( start.format('DD-MMM-YYYY') + ' / ' + end.format('DD-MMM-YYYY'));
            
        });
	$('#purchaseOrderDateRanger').on('cancel.daterangepicker', function(ev, picker) {
		$('#startEndDate').val('');
	});
});

function showPurchaseOrderLineGrid(quotationId, supplierId) {
	jQuery("#purchaseOrderLineGrid").jqGrid({
		url: "getPurchaseOrderLineViewList?quotationId=" + quotationId +"&supplierId="+supplierId,
		datatype: "json",
		mtype: 'POST',
		colModel: [
			{label:'Pipcode',name: 'pipCode',  align: "left", editable: false},
			{label:'Product Name', name: 'description',  align: "left", editable: false},
			{ label:'Quantity',name: 'quotedQty',  align: "center", editable: false},
			{label:'Price',name: 'quotedPrice', align: "center", editable: false},
		],
		rowNum: 10,
		height: 300,
		viewrecords: true,
		shrinkToFit: false,
//		autowidth: true,
		width: 1060,
		rowList: [10, 20,50],
		pager: '#purchaseOrderLineGridPager',
		guiStyle: "bootstrap",
	    iconSet: "fontAwesome",
	});
	
	$("#purchaseOrderLineGrid").jqGrid ('setLabel', 'quotedQty', '', {'text-align':'center'});
	$("#purchaseOrderLineGrid").jqGrid ('setLabel', 'quotedPrice', '', {'text-align':'center'});
	
//	$('#' + purchaseOrderLineGridID).jqGrid('filterToolbar', { clearSearch: false, searchOperators: false });
//	jQuery("#" + purchaseOrderLineGridID).jqGrid('navGrid', '#' + purchaseOrderLineGridPagerID, { edit: false, add: false, del: false, back: false, search: false, refresh: true, beforeRefresh: function() { refreshCustomerGrid(); } });
	
}

function getPurchaseOrderViewList(){
	jQuery("#purchaseOrderViewGrid").jqGrid('setGridParam', {
		datatype: 'json', mtype: 'POST',
		page: 1, rowNum: 50, url: 'getPurchaseOrderViewList?quotationId=' + $("#quotationId").val() +
						  '&customerId=' + $("#customerId").val() +
						  '&supplierId=' + $("#supplierId").val()+
						  '&orderId='   +  $("#orderId").val()+
						  '&startEndDate=' + $("#startEndDate").val()
	});
	jQuery("#purchaseOrderViewGrid").trigger("reloadGrid");
//	$('.g-search-form').toggleClass("d-none"); 
}

function statusFormatter(cellvalue, options, rowObject) {
	if (cellvalue == 'Confirmed')
		return '<span class="label label-lg label-light-success label-inline">' + cellvalue + '</span>';
}

