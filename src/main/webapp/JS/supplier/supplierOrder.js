
var lineGridLastSelection;

$(function() {
	
	$(".menu-item").removeClass('menu-item-here');
	$("#supplierOrderConfirmationLI").addClass('menu-item-here');
	removeNotification('ORDERS_NOTIFICATION');
	removeNotification('CHAT_NOTIFICATION');
	if (localStorage.getItem("supplierConfirmOrderDivFlag") == "true") {
		localStorage.setItem("supplierConfirmOrderDivFlag", true);
		$("#supplierConfirmOrderDiv").hide();
		$('#supplierConfirmOrderDataDiv').show();
		$('#kt_sidebar').show();
		getQuotationData(localStorage.getItem("supplierOrderQuotationId"), localStorage.getItem("supplierOrderCustomerId")	,localStorage.getItem("supplierOrderId"),  localStorage.getItem("customerName"), localStorage.getItem("customerDeliveryAddressId"));
	} else {
		$('#supplierConfirmOrderDataDiv').hide();
		$('#kt_sidebar').hide();
		$("#supplierConfirmOrderDiv").show();
	}

	$("#supplierConfirmOrderGrid").jqGrid({
		
		url : 'getUniqueQuotationForSupplier?supplierId='+$('#supplierId').val(),
		mtype: "POST",
		datatype: "json",
		rowNum: 100,
		rowList: [100, 200, 500],
		colNames: ['Quotation ID', 'Order ID','Customer ID','Supplier ID', 'Customer Name','Order ID', 'Order Date','Status', 'Supplier Address ID','Customer Address ID','Action'],
		colModel: [
			{ name: 'quotationId', index: 'quotationId',hidden:true  },
			{ name: 'orderId', index: 'orderId' },
			{ name: 'customerId', index: 'customerId',hidden:true  },
			{ name: 'supplierId', index: 'supplierId',hidden:true },
			{ name: 'customerName', index: 'customerName' },
			{ name: 'orderId', index: 'orderId',hidden:true },
			{ name: 'createdDate', index: 'createdDate' },
			{ name: 'status', index: 'status', align : 'center',  formatter:statusFormatter},
			{ name: 'supplierAddressId', index: 'supplierAddressId',hidden:true },
			{ name: 'customerAddressId', index: 'customerAddressId',hidden:true },
			{ name: 'edit', index: 'edit', align : 'center', editable: false, formatter: quotationEditFormatter },
		],
		pager: "#supplierConfirmOrderPager",
//		shrinkToFit: false,
		autowidth: true,
		height:500,
		guiStyle: "bootstrap",
		iconSet: "fontAwesome",
		jsonReader: { repeatitems: false, id: "orderId" },
		ondblClickRow: function(rowId) {
			var rowData = jQuery(this).getRowData(rowId);
			var quotationId = rowData['quotationId'];
			var customerId = rowData['customerId'];
			var orderId = rowData['orderId'];
			var customerName = rowData['customerName'];
			var customerDelAddress = rowData['customerAddressId'];
			getQuotationData(quotationId, customerId, orderId, customerName, customerDelAddress);
		},
	});
	$('#supplierConfirmOrderGrid').jqGrid('setLabel', 'status', '', { 'text-align': 'center' });
	$('#supplierConfirmOrderGrid').jqGrid('setLabel', 'edit', '', { 'text-align': 'center' });

bindKeyEvents();




 $('#suppOrdDateRange').daterangepicker({
		 autoclose: true,
		 buttonClasses: ' btn',
		 applyClass: 'btn-primary',
		 cancelClass: 'btn-secondary',
		 locale: {
			 format: 'DD-MMM-YYYY',
			 cancelLabel: 'Clear'
		 },
        }, function(start, end, label) {
            $('#suppOrdDateRange .form-control').val( start.format('DD-MMM-YYYY') + ' / ' + end.format('DD-MMM-YYYY'));
            
        });
	$('#suppOrdDateRange').on('cancel.daterangepicker', function(ev, picker) {
//		$('#searchDateRangePickerSupplierQt').daterangepicker('clearDates');
		$('#srchStartEndDate').val('');
	});
	
	$('#srchMain').keyup(function(event) {
					jQuery("#supplierConfirmOrderGrid").jqGrid('setGridParam', {
					datatype: 'json', mtype: 'POST', page: 1, rows: 100,
					url : 'getUniqueQuotationForSupplierGlobalFilter?&qry='+ $("#srchMain").val()+
					  '&supplierId='+$('#supplierId').val()
				});
				$('#supplierConfirmOrderGrid').trigger('reloadGrid');
	});
});

function getConfirmedOrderData() {
	
	jQuery("#supplierConfirmOrderGrid").jqGrid('setGridParam', {
					datatype: 'json', mtype: 'POST', page: 1, rows: 100,
					url : 'getUniqueQuotationForSupplier?quotationId=' + $("#srchQuotationId").val().trim() +
					  '&dateType=' + $("#srchDateType").val() +
					  '&startEndDate=' + $("#srchStartEndDate").val() +
					  '&supplierId='+$('#supplierId').val()+
					  '&customerId='+ $("#srchCustomerId").val()+
					  '&orderId='+ $("#srchOrderId").val()
				});
				$('#supplierConfirmOrderGrid').trigger('reloadGrid');
	
}

function getQuotationData(quotationId, customerId, orderId, customerName, customerDelAddress) {

	$("#supplierConfirmOrderDiv").hide();
	$("#kt_sidebar").show();
	$("#backBtn").show();
	$("#supplierConfirmOrderDataDiv").show();
	localStorage.removeItem("supplierOrderQuotationId");
	localStorage.removeItem("supplierOrderId");
	localStorage.removeItem("supplierOrderCustomerId");
	localStorage.setItem("supplierOrderQuotationId", quotationId);
	localStorage.setItem("supplierOrderId", orderId);
	localStorage.setItem("supplierOrderCustomerId", customerId);
	localStorage.removeItem("customerDeliveryAddressId");
	localStorage.setItem("customerDeliveryAddressId", customerDelAddress);
	localStorage.removeItem("customerName");
	localStorage.setItem("customerName", customerName);
	$('#savedCustomerName').val(customerName);
	localStorage.setItem("supplierConfirmOrderDivFlag", true);
	getCustomerDeliveryAddress(customerDelAddress);
	$("#preLoader").show();
	$.ajax({
		url: "getQoutationData",
		data: {
			"quotationId": quotationId
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
					$('#savedFinalDate').val(data.lastDate);
					$('#savedDeliveryDate').val(data.delDate);
					$('#savedQtType').val(data.type);
					$("#customerInfoId").html(" "+customerId);
					$("#orderInfoId").html(" "+orderId);
					
					if (data.status === "Submitted") {
						$("#draftQtBtn").attr("disabled", true);
						$("#submitQtBtn").attr("disabled", true);
						$("#addLineBtn").attr("disabled", true);
					}
					$("#supplierConfirmOrderDataGrid").trigger("reloadGrid");
					loadConfirmOrderData(data.quotationId);
				}
			}
		},
		error:function(){
			$("#preLoader").hide();
			toastr.error("Something went wrong!");
		}
	});

}


function manageView() {
	localStorage.setItem("supplierConfirmOrderDivFlag", false);
	$("#backBtn").hide();
	location.reload();
}


function quotationEditFormatter(cellvalue, options, rowObject) {
	return "<a href='javascript:void(0)'onclick = 'chatModalOpener(\"" + rowObject.orderId + "\", \"" + rowObject.quotationId + "\", \"" + rowObject.supplierId + "\");' class='btn btn-sm btn-bg-white btn-clean btn-icon-success  btn-hover-success  btn-icon mr-1 my-1 my-lg-0 mr-4' title='Chat'><i class='la la-comments'></i></a>"+"<a onclick='getQuotationData(\"" + rowObject.quotationId + "\",\"" + rowObject.customerId + "\",\"" + rowObject.orderId + "\",\"" + rowObject.customerName + "\",\"" + rowObject.customerAddressId + "\");' title='View' href='javascript:void(0)'class = 'btn btn-sm btn-bg-white btn-clean btn-icon-warning  btn-hover-warning  btn-icon mr-1 my-1 my-lg-0 mr-4'><i class='la la-eye'></i></a>"+"<a onclick='openLicenseModal(\"" + rowObject.customerId + "\",\"ROLE_CUSTOMER\");' title='License' href='javascript:void(0)'class = 'btn btn-sm btn-bg-white btn-clean btn-icon-success  btn-hover-success  btn-icon mr-1 my-1 my-lg-0 mr-4'><i class='la la-drivers-license'></i></a>"+"<a onclick='getReportData(\"" + rowObject.customerId + "\");' title='Report' href='javascript:void(0)'class = 'btn btn-sm btn-bg-white btn-clean btn-icon-info  btn-hover-info  btn-icon mr-1 my-1 my-lg-0'><i class='la la-info-circle'></i></a>";
}

function statusFormatter(cellvalue, options, rowObject) {
	if (cellvalue == 'Confirmed')
		return '<span class="label label-lg label-light-success label-inline">' + cellvalue + '</span>';
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
	});
}

function orderPopUp() {
	swal.fire({
		title: "Are you sure?",
		text: "You want to place the Order!",
		icon: 'question',
		showCancelButton: true,
	}).then(function(submit) {
		if (submit.isConfirmed) {
			udateCustomerLineStatus('Confirmed')
		}
	});
}

function lineEditFormatter(cellvalue, options, rowObject) {
	if (rowObject.quotationStatus != "Submitted")
		return "<center><a onclick='editQuotationRow(\"" + rowObject.quotationId + "\");' title='Edit' href='javascript:void(0)'><i class='material-icons dp48'>edit</i></a></center>";
	else
		return "<center><a title='Edit' href='javascript:void(0)' ><i class='material-icons dp48' style = 'color: #bfc0ff'>edit</i></a></center>";
}


function loadConfirmOrderData(quotationId) {
	$("#supplierConfirmOrderDataGrid").jqGrid({
		url: "getOrderLinesForSupplier?quotationId=" + quotationId + "&supplierId="+$('#supplierId').val(),
		mtype: "POST",
		datatype: "json",
		rowNum: 100,
		rowList: [100, 200, 500],
		colNames: ['Line No', 'Order Id', 'Pip Code', 'Product',  'Ordered Qty', 'Quotaion Status', 'Ordered Price'],
		colModel: [
			{ name: 'quotationLineId', index: 'quotationLineId', sorttype: "int", hidden: true },
			{ name: 'orderId', index: 'orderId',hidden:true },
			{ name: 'pipCode', index: 'pipCode' },
			{ name: 'description', index: 'description', },
			{ name: 'orderedQty', index: 'orderedQty', sorttype: "int",align:'center'  },
			{ name: 'quotationStatus', index: 'quotationStatus', hidden: true },
			{ name: 'orderedPrice', index: 'orderedPrice',align:'center'  },
		],
		pager: "#supplierConfirmOrderDataPager",
		viewrecords: true,
		hidegrid: false,
		shrinkToFit: false,
		autowidth: true,
		guiStyle: "bootstrap",
		iconSet: "fontAwesome",
		jsonReader: { repeatitems: false, id: "quotationLineId" },
		rownumbers:true,
	});
	$("#supplierConfirmOrderDataGrid").jqGrid('setLabel','rn','#');
	
	$('#supplierConfirmOrderDataGrid').jqGrid('setLabel', 'orderedQty', '', { 'text-align': 'center' });
	$('#supplierConfirmOrderDataGrid').jqGrid('setLabel', 'orderedPrice', '', { 'text-align': 'center' });
}

function makeTotal(quotationLineid) {

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
				//				successfunc: function(data) {
				//					if (data.statusText !== "success")
				//						toastr.error(data);
				//				}

			});
			lineGridLastSelection = quotationLineid;
		}
	}
}


function udateCustomerLineStatus(status) {
	var ids = $('#confirmOrderDataGrid').jqGrid('getGridParam', 'selarrrow');
	$.ajax({
		url: "udateCustomerLineStatus",
		data: {
			"ids": ids,
			"status": status,
			"quotationId": localStorage.getItem("quotationId"),
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
	});
}

function bindKeyEvents(){
	$('#srchQuotationId').keypress(function(event) {
		if (event.keyCode === 13) {
			event.preventDefault();
				getConfirmedOrderData();
		}
	});
	$('#srchCustomerId').keypress(function(event) {
		if (event.keyCode === 13) {
			event.preventDefault();
				getConfirmedOrderData();
		}
	});
	$('#srchOrderId').keypress(function(event) {
		if (event.keyCode === 13) {
			event.preventDefault();
				getConfirmedOrderData();
		}
	});
	$('#chatMsg').keypress(function(event) {
		if (event.keyCode === 13) {
			event.preventDefault();
			var data = {"msg":$('#chatMsg').val()};
			var messagesEl = document.querySelector('.messages');
			$(".scroll ").scrollTop(messagesEl.scrollHeight);
			sendMsg();
		}
	});
	$("#chatFile").change(function(){
		sendMsg();
	});
}






function chatModalOpener(orderId, quotationId, supplierId ){
	localStorage.clear();
	localStorage.setItem("suppChatOrderId", orderId);
	localStorage.setItem("suppChatQuotationId", quotationId);
	localStorage.setItem("suppChatSupplierId", supplierId);
	$('#orderIdLbl').html("Order Id : "+orderId);
	getMsg(orderId, quotationId, supplierId);
	$('#chatModal').modal('show');
}

var today = true;
var yesterday = true;
var previousDate='';
function showChatMessage (data){
	var msgType = "sent";
	var readFlag ='';
	if(data.msgBy === "Customer"){
		msgType = "received";
	}else{
		if(data.flag === true){
			readFlag = '<i class="la la-check-double ml-2  text-primary"></i>';
		}else{
			readFlag = '<i class="la la-check ml-2 text-muted"></i>';
		}
	}
	var chatDateAndTime = new Date(data.chatDate + " " + data.time);
		var chatMonth = parseInt(chatDateAndTime.getMonth()) + 1 < 10 ? "0"+(parseInt(chatDateAndTime.getMonth()) +1).toString() : (parseInt(chatDateAndTime.getMonth()) +1).toString();
	   var chatDate =  chatDateAndTime.getDate();
	   var chatYear = parseInt(chatDateAndTime.getFullYear()).toString();
	   
	   var chatFullDate = (chatDate).toString()+'-' + chatMonth +'-' + chatYear;
		 var format ="AM";
		  var hour=chatDateAndTime.getHours();
		  var min=chatDateAndTime.getMinutes();
		  if(hour>11){format="PM";}
		  if (hour   > 12) { hour = hour - 12; }
		  if (hour   == 0) { hour = 12; }  
		  if (min < 10){min = "0" + min;}
		  
	   var currentDateAndTime = new Date();
	   var currentMonth = parseInt(currentDateAndTime.getMonth()) + 1 < 10 ? "0"+(parseInt(currentDateAndTime.getMonth()) +1).toString() : (parseInt(currentDateAndTime.getMonth()) +1).toString();
	   var currentDate =  currentDateAndTime.getDate();
	   var currentYear = parseInt(currentDateAndTime.getFullYear()).toString();
	  var dateLi ='';
	  
	  if((chatYear +"-" + chatMonth +"-" + (chatDate).toString()) === (currentYear +"-" + currentMonth +"-" + currentDate)){
		if(today){
			dateLi = '<li class="chat-date text-muted">Today</li>';
			today = false;
		}
	  }else if((chatYear +"-" + chatMonth +"-" + (chatDate).toString()) === (currentYear +"-" + currentMonth +"-" + (currentDate - 1).toString())){
		if(yesterday){
			dateLi = '<li class="chat-date text-muted">Yesterday</li>';
			yesterday = false;
		}
	  }else{
		if(previousDate !== chatFullDate){
			dateLi = '<li class="chat-date text-muted">'+(chatDate).toString()+'-' + chatMonth +'-' + chatYear+'</li>';
			previousDate = chatFullDate;
		}
	  }
	$('#messageSentDiv').append(dateLi);
	if(data.messageFileName != null && data.messageFileName.trim() != ""){
		var getfileType = data.messageFileName.split(".");
		var fileTypeLength = getfileType.length;
		var fileType = getfileType[parseInt(fileTypeLength)-1].toLowerCase();
		if(fileType === "pdf"){
			 fileThumbile = '<i class=" icon-8x text-danger  fas  fa-file-pdf"></i>';
		}else if(fileType === "xlsx" || fileType === "xls"){
			 fileThumbile = '<i class=" icon-8x text-success  fas  fa-file-excel"></i>';
		}else if(fileType === "csv"){
			 fileThumbile = '<i class=" icon-8x text-muted  fas  fa-file-csv"></i>';
		}else if(fileType === "doc" || fileType === "docx"){
			 fileThumbile = '<i class=" icon-8x text-primary  fas  fa-file-word"></i>';
		}else if(fileType === "png" || fileType === "jpeg" || fileType === "jpg"){
			 fileThumbile = '<img src="data:image/'+fileType+';base64,'+data.messageFile+'" alt="Attachment">';
		}

		var messageLi =	'<li class="media '+msgType+'"><div class="media-body"><div class="msg-box">'+
						'<div>'+
							'<div class="chat-msg-attachments">'+
								'<div class="chat-attachment">'+fileThumbile +
									'<a href="downloadChatFile/'+data.id+'" class="chat-attach-download">'+
										'<i class="fas fa-download"></i>'+
									'</a>'+
								'</div>'+
							'</div>'+
							'<ul class="chat-msg-info">'+
								'<li>'+
									'<div class="chat-attach-caption-doc ellipsis ">'+data.messageFileName+'</div>'+
								'</li>'+
							'</ul>'+
							'<ul class="chat-msg-info">'+
								'<li>'+
									'<div class="chat-time">'+
										'<span>'+hour+':'+min+" "+format+'</span>' +
										readFlag+
									'</div>'+
								'</li>'+
							'</ul>'+
						'</div>'+
					'</div></li>';
		$('#messageSentDiv').append(messageLi);
	}else if(data.msg != null && data.msg != ""){
		var messageLi = '<li class="media '+msgType+'">'+
					'<div class="media-body">'+
								'<div class="msg-box"><div>'+
										'<p>'+data.msg+'</p>' +
										'<ul class="chat-msg-info">' +
											'<li>' +
												'<div class="chat-time">' +
													'<span>'+hour+':'+min+" "+format+'</span>' +
													readFlag+
												'</div>' +
											'</li>' +
										'</ul>'
								'</div>'+
							'</div>'+
							'</div></li>';
	$('#messageSentDiv').append(messageLi);
	}
	
}

function sendMsg(){
	if(($("#chatMsg").val() != undefined && $("#chatMsg").val().trim() != "" && $("#chatMsg").val() != null)||($("#chatFile")[0].files[0]!= null && $("#chatFile")[0].files[0] != undefined)){
//	appendChatMsg();
	var formdata = new FormData();
	formdata.append("orderId",localStorage.getItem("suppChatOrderId"));
	formdata.append("msgBy","Supplier");
	formdata.append("quotationId",localStorage.getItem("suppChatQuotationId"));
	formdata.append("supplierId",localStorage.getItem("suppChatSupplierId"));
	formdata.append("msg",$("#chatMsg").val());
	formdata.append("chatFile",$("#chatFile")[0].files[0]);
	$("#chatMsg").val("");
	
	$.ajax({
		url:'sendMessage',
		type:'POST',
		enctype: 'multipart/form-data',
		dataType: 'JSON',
		processData: false,
		contentType: false,
		data:formdata,
		success:function(response){
//			$("#chatMsg").val("");
////			var data = {"id":response.id,"msgBy":response.msgBy,"msg":response.msg,"messageFileName":response.messageFileName,"messageFile":response.messageFile};
			showChatMessage(response);
			$("#chatFile").val('');
			setTimeout(function(){
				var messagesEl = document.querySelector('.messages');
				$(".scroll ").scrollTop((messagesEl.scrollHeight));
			},0);
		},error:function(error){
			
		}
	});
	}
}

function getMsg(orderId, quotationId, supplierId){
//	selectedRowId = $("#supplierConfirmOrderGrid").jqGrid ('getGridParam', 'selrow'),
//	orderId = $("#supplierConfirmOrderGrid").jqGrid('getCell', orderId, 'orderId');	
//	quotationId = $("#supplierConfirmOrderGrid").jqGrid('getCell', orderId, 'quotationId');	
//	supplierId = $("#supplierConfirmOrderGrid").jqGrid('getCell', orderId, 'supplierId');	
	
	$.ajax({
		url:'getMessage',
		type:'GET',
		async:true,
		dataType: 'JSON',
		data:{
			orderId :orderId,
			quotationId:quotationId,
			supplierId:supplierId
		},
		success:function(response){
			today = true;
			 yesterday = true;
			 previousDate = '';
			$('#messageSentDiv').empty();
			for(var i = 0;i<response.length;i++){
				showChatMessage(response[i]);
			}
			setTimeout(function(){
				var messagesEl = document.querySelector('.messages');
				$(".scroll ").scrollTop((messagesEl.scrollHeight));
			},0);
			updateReadFlag(orderId,quotationId,supplierId);
		},error:function(error){
			
		}
	});
}

function updateReadFlag(orderId,quotationId,supplierId){
	$.ajax({
		url:'updateReadUnreadFlag',
		type:'POST',
		async:true,
		dataType: 'JSON',
		data:{
			orderId :orderId,
			quotationId:quotationId,
			supplierId:supplierId,
			msgBy:"Customer"
		},
		success:function(response){
		},error:function(error){
		}
	});
}

function appendChatMsg(){
	var msgType = "sent";
	var chatDateAndTime = new Date();
	var format = "AM";
	var hour = chatDateAndTime.getHours();
	var min = chatDateAndTime.getMinutes();
	if (hour > 11) { format = "PM"; }
	if (hour > 12) { hour = hour - 12; }
	if (hour == 0) { hour = 12; }
	if (min < 10) { min = "0" + min; }
//$('#messageSentDiv').append('<li class="chat-date text-muted">Today</li>');
var file = $("#chatFile")[0].files[0];
var msg = $("#chatMsg").val();

 if(msg != null && msg != ""){
		var messageLi = '<li class="media '+msgType+'">'+
					'<div class="media-body">'+
								'<div class="msg-box"><div>'+
										'<p>'+msg+'</p>' +
										'<ul class="chat-msg-info">' +
											'<li>' +
												'<div class="chat-time">' +
													'<span>'+hour+':'+min+" "+format+'</span>' +
													'<i class="la la-check ml-2 text-muted"></i>'+
												'</div>' +
											'</li>' +
										'</ul>'
								'</div>'+
							'</div>'+
							'</div></li>';
	$('#messageSentDiv').append(messageLi);
	var messagesEl = document.querySelector('.messages');
	$(".scroll ").scrollTop((messagesEl.scrollHeight));
	}else if(file.name != null && file.name != ""){
		var getfileType = file.name.split(".");
		var fileTypeLength = getfileType.length;
		var fileType = getfileType[parseInt(fileTypeLength)-1].toLowerCase();
		if(fileType === "pdf"){
			 fileThumbile = '<i class=" icon-8x text-danger  fas  fa-file-pdf"></i>';
		}else if(fileType === "xlsx" || fileType === "xls"){
			 fileThumbile = '<i class=" icon-8x text-success  fas  fa-file-excel"></i>';
		}else if(fileType === "csv"){
			 fileThumbile = '<i class=" icon-8x text-muted  fas  fa-file-csv"></i>';
		}else if(fileType === "doc" || fileType === "docx"){
			 fileThumbile = '<i class=" icon-8x text-primary  fas  fa-file-word"></i>';
		}else if(fileType === "png" || fileType === "jpeg" || fileType === "jpg"){
			 fileThumbile = '<img src="data:image/'+fileType+';base64,'+data.messageFile+'" alt="Attachment">';
		}

		var messageLi =	'<li class="media '+msgType+'"><div class="media-body"><div class="msg-box">'+
						'<div>'+
							'<div class="chat-msg-attachments">'+
								'<div class="chat-attachment">'+fileThumbile +
									'<a href="javascript:void(0)" class="chat-attach-download">'+
										'<i class="fas fa-download"></i>'+
									'</a>'+
								'</div>'+
							'</div>'+
							'<ul class="chat-msg-info">'+
								'<li>'+
									'<div class="chat-attach-caption-doc ellipsis ">'+file.Name+'</div>'+
								'</li>'+
							'</ul>'+
							'<ul class="chat-msg-info">'+
								'<li>'+
									'<div class="chat-time">'+
										'<span>'+hour+':'+min+" "+format+'</span>' +
										'<i class="la la-check ml-2 text-muted"></i>'+
									'</div>'+
								'</li>'+
							'</ul>'+
						'</div>'+
					'</div></li>';
		$('#messageSentDiv').append(messageLi);
		var messagesEl = document.querySelector('.messages');
		$(".scroll ").scrollTop((messagesEl.scrollHeight));
	}
	
}