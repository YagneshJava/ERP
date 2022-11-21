$(document).ready(function(){
	
	$(".menu-item").removeClass('menu-item-here');
	$("#orderHistoryLI").addClass('menu-item-here');
	
	if (localStorage.getItem("orderHistoryDiv") == "true") {
		localStorage.setItem("orderHistoryDiv", true);
		$("#orderHistoryDiv").hide();
		$('#orderHistoryDataDiv').show();
		getQuotationData(localStorage.getItem("historyQuotationId"), localStorage.getItem("historyOrderId"), localStorage.getItem("historySupplierId"));
	} else {
		$('#orderHistoryDataDiv').hide();
		$("#orderHistoryDiv").show();
	}

	$("#historyGrid").jqGrid({
		url: "orderHistory?customerId=" + $("#supplierId").val(),
		mtype: "POST",
		datatype: "json",
		rowNum: 100,
		height:'auto',
		rowList: [100, 200, 500],
		colNames: [ 'Quotation ID', 'Order ID', 'Supplier ID', 'Supplier Name', 'Ordered Date', 'Representative',  'Actions'],
		colModel: [
			{ name: 'quotationId', index: 'quotationId', width:'103' },
			{ name: 'orderId', index: 'orderId',width:'72' },
			{ name: 'supplierId', index: 'supplierId', width:'92' },
			{ name: 'supplierName', index: 'supplierName',  width:'200' },
			{ name: 'createdDate', index: 'createdDate',width:'110' },
			{ name: 'representative', index: 'representative',width:'123' },
			{ name: 'chat', index: 'chat', editable: false, formatter: chatFormatter, frozen:true,width:'200'  },
//			{ name: 'edit', index: 'edit', editable: false, formatter: quotationEditFormatter, frozen:true},
		],
		pager: "#historyGridPager",
		viewrecords: true,
		shrinkToFit: false,
		autowidth: true,
		guiStyle: "bootstrap",
		iconSet: "fontAwesome",
		jsonReader: { repeatitems: false, id: "orderId" },
		ondblClickRow: function(rowId) {
			var rowData = jQuery(this).getRowData(rowId);
			var quotationId = rowData['quotationId'];
			var orderId = rowData['orderId'];
			var supplierId = rowData['supplierId'];
			getQuotationData(quotationId, orderId, supplierId)
		},

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
	
		bindKeyEvents();
		
		 $('#suppOrdHistDateRange').daterangepicker({
		 autoclose: true,
		 buttonClasses: ' btn',
		 applyClass: 'btn-primary',
		 cancelClass: 'btn-secondary',
		 locale: {
			 format: 'DD-MMM-YYYY',
			 cancelLabel: 'Clear'
		 },
        }, function(start, end, label) {
            $('#suppOrdHistDateRange .form-control').val( start.format('DD-MMM-YYYY') + ' / ' + end.format('DD-MMM-YYYY'));
            
        });
	$('#suppOrdHistDateRange').on('cancel.daterangepicker', function(ev, picker) {
//		$('#searchDateRangePickerSupplierQt').daterangepicker('clearDates');
		$('#srchStartEndDate').val('');
	});
	
	$('#srchMain').keyup(function(event) {
			jQuery("#historyGrid").jqGrid('setGridParam', {
					datatype: 'json', mtype: 'POST', page: 1, rows: 100,
					url : 'orderHistory?customerId=' + $("#supplierId").val()+
					  '&startEndDate=' + $("#srchStartEndDate").val() +
					  '&orderId='+ $("#srchMain").val()+
					  '&quotationId='+ $("#srchQuotationId").val()
				});
				$('#historyGrid').trigger('reloadGrid');
	});
});


function chatFormatter(cellvalue, options, rowObject) {
	return "<a href='javascript:void(0)'onclick = 'chatModalOpener(\"" + rowObject.orderId + "\", \"" + rowObject.quotationId + "\", \"" + rowObject.supplierId + "\");' class='btn btn-sm btn-bg-white btn-clean btn-icon-success  btn-hover-success  btn-icon mr-1 my-1 my-lg-0' title='Chat'><i class='la la-comments'></i></a>" + "<a onclick='getQuotationData(\"" + rowObject.quotationId + "\", \"" + rowObject.orderId + "\", \"" + rowObject.supplierId + "\");' title='View' href='javascript:void(0)'class='btn btn-sm btn-bg-white btn-clean btn-icon-warning  btn-hover-warning  btn-icon mr-1 my-1 my-lg-0' > <i class='la la-eye'></i></a>" + "<a title='Download Bill' href='downloadBill?customerId="+$("#supplierId").val()+"&supplierId="+rowObject.supplierId+"&orderId="+rowObject.orderId+"' class='btn btn-sm btn-bg-white btn-clean btn-icon-info  btn-hover-light-info  btn-icon mr-1 my-1 my-lg-0' > <i class='la la-download'></i></a>"+"<a onclick='openLicenseModal(\"" + rowObject.supplierId + "\",\"ROLE_SUPPLIER\");' title='License' href='javascript:void(0)'class = 'btn btn-sm btn-bg-white btn-clean btn-icon-success  btn-hover-success  btn-icon mr-1 my-1 my-lg-0'><i class='la la-drivers-license'></i></a>"+"<a onclick='getReportData(\"" + rowObject.supplierId + "\");' title='Report' href='javascript:void(0)'class = 'btn btn-sm btn-bg-white btn-clean btn-icon-info  btn-hover-info  btn-icon mr-1 my-1 my-lg-0'><i class='la la-info-circle'></i></a>";
}

function chatModalOpener(orderId, quotationId, supplierId){
	localStorage.clear();
	localStorage.setItem("custChatOrderId", orderId);
	localStorage.setItem("custChatQuotationId", quotationId);
	localStorage.setItem("custChatSupplierId", supplierId);
	$('#orderIdLbl').html("Order Id : "+orderId);
	getMsg(orderId, quotationId, supplierId);
	$('#chatModal').modal('show');
}

function sendMsg(){
	
	if(($("#chatMsg").val() != undefined && $("#chatMsg").val().trim() != "" && $("#chatMsg").val() != null)||($("#chatFile")[0].files[0]!= null && $("#chatFile")[0].files[0] != undefined)){
//		appendChatMsg();
	var formdata = new FormData();
	formdata.append("orderId",localStorage.getItem("custChatOrderId"));
	formdata.append("msgBy","Customer");
	formdata.append("quotationId",localStorage.getItem("custChatQuotationId"));
	formdata.append("supplierId",localStorage.getItem("custChatSupplierId"));
	formdata.append("msg",$("#chatMsg").val());
	formdata.append("chatFile",$("#chatFile")[0].files[0]);
	$("#chatMsg").val('');
	$("#chatFile").val('');
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
			setTimeout(function(){
				var messagesEl = document.querySelector('.messages');
				$(".scroll ").scrollTop((messagesEl.scrollHeight));
			},0);
		},error:function(error){
			
		}
	});
}
}

var today = true;
var yesterday = true;
var previousDate = '';
function showChatMessage (data){
	var msgType = "sent";
	var readFlag ='';
	if(data.msgBy === "Supplier"){
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

function getMsg(orderId, quotationId, supplierId){
//	selectedRowId = $("#historyGrid").jqGrid ('getGridParam', 'selrow'),
//	orderId = $("#historyGrid").jqGrid('getCell', orderId, 'orderId');	
//	quotationId = $("#historyGrid").jqGrid('getCell', orderId, 'quotationId');	
//	supplierId = $("#historyGrid").jqGrid('getCell', orderId, 'supplierId');	
	
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
			msgBy:"Supplier"
		},
		success:function(response){
			window.open(response.fileUrl);
		},error:function(error){
		}
	});
}

function manageView() {
	localStorage.setItem("orderHistoryDiv", false);
	$('#backBtn').hide();
	location.reload();
}

function getQuotationData(quotationId, orderId, supplierId) {
	
	$('#preLoader').show();
	$('#backBtn').show();
	$("#orderHistoryDiv").hide();
	$("#orderHistoryDataDiv").show();
	localStorage.removeItem("historyQuotationId");
	localStorage.removeItem("historyOrderId");
	localStorage.removeItem("historySupplierId");
	localStorage.setItem("historyQuotationId", quotationId);
	localStorage.setItem("historyOrderId", orderId);
	localStorage.setItem("historySupplierId", supplierId);
	localStorage.setItem("orderHistoryDiv", true);

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
				$('#preLoader').hide();
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
					$("#qtInfoStatus").html(" " + orderId);

				}
				loadConfirmOrderData(quotationId, orderId, supplierId);
			}
		},
		error:function(e){
			$('#preLoader').hide();
					swal.fire({
						title: 'Error',
						text: 'Something went wrong.',
						icon: 'error',
					}).then(function(submit) {
						
					});
		}
		
	});

}

function loadConfirmOrderData(quotationId, orderId, manufacturerId) {

	$("#orderLineGrid").jqGrid({
		url: "orderDetails?quotationId=" + quotationId +"&orderId="+orderId+"&supplierId="+manufacturerId,
		mtype: "POST",
		datatype: "json",
		height: 'auto',
		rowNum: 100,
		rowList: [100, 200, 500],
		colNames: ['Line No', 'Product', 'Pip Code', 'Quantity', 'Quotaion Status', 'Ordered Price'],
		colModel: [
			{ name: 'quotationLineId', index: 'quotationLineId', sorttype: "int", hidden: true },
			{ name: 'description', index: 'description' , width:'200' },
			{ name: 'pipCode', index: 'pipCode' , width:'150'},
			{ name: 'orderedQty', index: 'orderedQty', sorttype: "int", width: '90',align:'center'},
			{ name: 'quotationStatus', index: 'quotationStatus', hidden: true },
			{ name: 'orderedPrice', index: 'orderedPrice', width: '150', align:'center'},
		],
		pager: "#orderLineGridPager",
		viewrecords: true,
		shrinkToFit: false,
		autowidth: true,
		guiStyle: "bootstrap",
		iconSet: "fontAwesome",
		autowidth: true,
		rownumbers: true,
		jsonReader: { repeatitems: false, id: "quotationLineId" },
	});
	$("#orderLineGrid").jqGrid('setLabel','rn','#');
	
	$('#orderLineGrid').jqGrid('setLabel', 'orderedQty', '', { 'text-align': 'center' });
	$('#orderLineGrid').jqGrid('setLabel', 'orderedPrice', '', { 'text-align': 'center' });
}


function srchOrderHistory(){
	$('#load_historyGrid').show();
	jQuery("#historyGrid").jqGrid('setGridParam', {
					datatype: 'json', mtype: 'POST', page: 1, rows: 100,
					url : 'orderHistory?customerId=' + $("#supplierId").val()+
					  '&startEndDate=' + $("#srchStartEndDate").val() +
					  '&orderId='+ $("#srchOrderId").val()+
					  '&quotationId='+ $("#srchQuotationId").val()
				});
				$('#historyGrid').trigger('reloadGrid');
}

function downloadBill(customerId, supplierId, orderId) {
	var $form = $("<form>");

	var customer = $("<input type='text' >").attr("name", "customerId").val(customerId);
		$form.append(customer);
	var supplier = $("<input type='text' >").attr("name", "supplierId").val(supplierId);
		$form.append(supplier);
	var order = $("<input type='text' >").attr("name", "orderId").val(orderId);
		$form.append(order);



	$.ajax({
		url:'downloadBill',
		type:'POST',
		async:true,
		dataType: 'JSON',
		data:$form.serialize(),
		success:function(response){
			
		},error:function(error){
			
		}
	});

	$('body').append($form);
    
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
//			var reader = new FileReader();
//			reader.onloadstart = function(e) {
//				fileThumbile = '<img src="'+e.target.result+'" alt="Attachment" >';
//				
//			}
			 fileThumbile = '<img src="data:image/'+fileType+';base64,'+data.messageFile+'" alt="Attachment">';
			
		}

		var messageLi =	'<li class="media '+msgType+'"><div class="media-body"><div class="msg-box">'+
						'<div>'+
							'<div class="chat-msg-attachments">'+
								'<div class="chat-attachment">'+fileThumbile +
//									'<a href="javascript:void(0)" class="chat-attach-download">'+
//										'<i class="fas fa-download"></i>'+
//									'</a>'+
								'</div>'+
							'</div>'+
							'<ul class="chat-msg-info">'+
								'<li>'+
									'<div class="chat-attach-caption-doc ellipsis ">'+file.name+'</div>'+
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


function bindKeyEvents() {
	$('#srchQuotationId').keypress(function(event) {
		if (event.keyCode === 13) {
			event.preventDefault();
			srchOrderHistory();
		}
	});
	$('#srchOrderId').keypress(function(event) {
		if (event.keyCode === 13) {
			event.preventDefault();
			srchOrderHistory();
		}
	});
	
	
}