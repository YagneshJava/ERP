$(document).ready(function(){
	$(".menu-item").removeClass('menu-item-here');
	$("#quotationViewLI").addClass('menu-item-here');
	
	$('#startEndDate').keydown(function(e) {
	    if ((e.keyCode == 8 || e.keyCode == 46)) {
	        $(this).val("");
	    }
	});
	
	$('#quotationViewForm').bootstrapValidator({
		submitHandler: function(validator, form, submitButton) {
			getQuotationViewListFunc();
    	}
	});
	
	$("#status").change(function(){
		getQuotationViewListFunc();
	});
	
	$("#quotationViewGrid").jqGrid({
			guiStyle: "bootstrap",
	        iconSet: "fontAwesome",
			url: 'getQuotationViewList',
			mtype:'POST',
			datatype: "json",
			colModel: [
				{label: 'Quotation ID',name: 'quotationId',align: "left", width: 105},
				{label: 'Customer ID',name: 'customerId',align: "left", width: 105},
				{label: 'Customer Name',name: 'customerName',align: "left", width: 200},
				{label: 'Representative',name: 'representative',align: "left", width: 130},
				{label: 'Reference',name: 'reference',align: "left", width: 130},
				{label: 'Created Date',name: 'createdDate',align: "left", width: 120},
				{label: 'Final Date',name: 'finalUploadDate',align: "left", width: 120},
				{label: 'Delivery Date',name: 'deliveryDate',align: "left", width: 120},
				{label: 'Status',name: 'status',align: "center",formatter:statusFormatter},
			],
			pager: "#quotationViewGridPager",
			viewrecords: true,
			shrinkToFit: false,
			autowidth: true,
			height:500,
			rowNum: 50,
			rowList: [50, 100, 200],
//			subGrid: true,
//			subGridRowExpanded: showQuotationLineGrid,
			loadComplete:function(){
				$("#searchQuotation").removeAttr('disabled');
			},
			onSelectRow: function(id) {
			$('#editModal').modal('show');
			var rowData = $(this).jqGrid ('getRowData', id);
			$('#modalCustomerName').val('');
			$('#modalDeliveryDate').val('');
			$('#modalStatus').val('');
			$('#modalCustomerName').val(rowData.customerName);
			$('#modalDeliveryDate').val(rowData.deliveryDate);
			$('#modalStatus').val(rowData.status);
			showQuotationLineGrid(rowData.quotationId);
    },
//			subGridOptions: {
//				plusicon: "fas fa-plus",
//				minusicon: "fas fa-minus",
//			},
			ajaxGridOptions:{
				complete:function(response){
					if(response.responseJSON.error != undefined && response.responseJSON.error != "")
						toastr.error(response.responseJSON.error);
				}
			}
		});
		
		$("#quotationViewGrid").jqGrid ('setLabel', 'status', '', {'text-align':'center'});
		
		getQuotationViewListFunc();
		
		
		$("#customerId").autocomplete({
			source: function(request, response) {
				$.ui.autocomplete.prototype._renderMenu = function(ul, items) {
					var self = this;
					$.each(items, function(index, item) {
						self._renderItem(ul, item);
					});
				};
				$.getJSON("searchCustomer", { customerQuery: $.trim($(this.element).val()) }, response);
			},
			position: { offset: '-10 4' },
			minLength: 3,
			focus: function(event, ui) {
				$("#customerId").val(ui.item.id);
				$(".ui-menu-item").removeClass('tt-cursor');
				$(".ui-state-active").parent().addClass('tt-cursor');
				return false;
			},
			select: function(event, ui) {
				getQuotationViewListFunc();
				return false;
			}
		}).data("ui-autocomplete")._renderItem = function(ul, item) {
			return $("<li></li>").data("ui-autocomplete-item", item)
				.append("<table style='width:100%;'><tr><td style='width:40%;'>" + item.id + "</td><td style='width:60%;'>" + item.name + "</td></tr></table>")
				.appendTo(ul);
		};
		
		$('#quotationDateRanger').daterangepicker({
		 autoclose: true,
		 buttonClasses: ' btn',
		 applyClass: 'btn-primary',
		 cancelClass: 'btn-secondary',
		 locale: {
			 format: 'DD-MMM-YYYY',
			 cancelLabel: 'Clear'
		 },
        }, function(start, end, label) {
            $('#quotationDateRanger .form-control').val( start.format('DD-MMM-YYYY') + ' / ' + end.format('DD-MMM-YYYY'));
            
        });
	$('#quotationDateRanger').on('cancel.daterangepicker', function(ev, picker) {
		$('#startEndDate').val('');
	});
	
	$('#srchMain').keyup(function(event) {
		jQuery("#quotationViewGrid").jqGrid('setGridParam', {
		datatype: 'json', mtype: 'POST',
		page: 1, rowNum: 50, url : 'getQuotationViewList?quotationId=' + $("#srchMain").val() +
					  '&customerId=' + $("#customerId").val() +
					  '&dateType=' + $("#dateType").val() +
					  '&startEndDate=' + $("#startEndDate").val() +
					  '&status='  + $("#status").val(),
	});
	jQuery("#quotationViewGrid").trigger("reloadGrid");
	});
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

function showQuotationLineGrid(quotationId) {
	jQuery("#quotationLineGrid").jqGrid({
		url: "getQuotationLineViewList?quotationId=" + quotationId,
		datatype: "json",
		mtype: 'POST',
		colModel: [
			{label:'Pipcode',name: 'pipCode', align: "left", editable: false},
			{label:'Product Name', name: 'description', align: "left", editable: false},
			{ label:'Quantity',name: 'quotedQty', align: "center", editable: false},
			{label:'Price',name: 'quotedPrice',  align: "center", editable: false},
		],
		rowNum: 10,
		height: 300,
		viewrecords: true,
		shrinkToFit: false,
//		autowidth: true,
		width: 1060,
		rowList: [10, 20,50],
		guiStyle: "bootstrap",
	    iconSet: "fontAwesome",
	    pager:"#quotationLineGridPager"
	});
	
	$("#quotationLineGrid").jqGrid ('setLabel', 'quotedQty', '', {'text-align':'center'});
	$("#quotationLineGrid").jqGrid ('setLabel', 'quotedPrice', '', {'text-align':'center'});
	
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
		return '<span class="label label-lg label-light-success label-inline">' + cellvalue + '</span>';
}