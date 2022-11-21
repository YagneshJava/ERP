
function successMsg(message){
	swal.fire("Success",message,"success");
}
function warningMsg(message){
	swal.fire("Warning",message,"warning");
}
function errorMsg(message){
	swal.fire("Error",message,"error");
}
function infoMsg(message){
	swal.fire("Info",message,"info");
}

function resetBNFForm(form){
	$("#"+form).validate().resetForm();
}


$(function(){
	getNotificationFunction();
	$('#downloadQuotation').click(function(){
		downloadQuotation();
	});
	
	$("#uploadQuotationModal").on("hidden.bs.modal", function() {
		$('#uploadQuotationForm')[0].reset();
//		$('#uploadQuotationForm').data('bootstrapValidator').resetForm();
	});
	
	$('#quotationUploadBtn').click(function(){
		uploadQuotation();
	});
	
	$('#location').change(function() {
		$("#fullAddress").html('');
		$("#fullAddress").append(map[$('#location').val()]);
		jQuery("#stockGrid").jqGrid('setGridParam', {
					datatype: 'json', mtype: 'POST', page: 1, rows: 100,
					url : 'getStockGrid?locationId='+$('#location').val()+'&description='+$('#srchProduct').val()+'&supplierId='+$('#supplierId').val()
				});
				$('#stockGrid').trigger('reloadGrid');

	});
	$('#supplierLocation').change(function() {
		$("#supplierFullAddress").html('');
		$("#supplierFullAddress").append(supplierMap[$('#supplierLocation').val()]);
//		supplierQuotationTable

var supplierQuotationTable = $('#quotationHeadDataTable').DataTable();

		supplierQuotationTable.ajax.url( 'qoutationDataForSupplierTable?quotationId=' + $("#srchQuotationId").val().trim() +
				'&dateType=' + $("#srchDateType").val() +
				'&startEndDate=' + $("#srchStartEndDate").val() +
				'&status=' + $("#srchStatus").val() +
				'&supplierId=' + $('#supplierId').val() +
				'&addressId=' + $('#supplierLocation').val()).load();

	});
	openSuggestions();
	
	
});

function getCountry() {
	$("#preLoader").show();
    $.ajax({
		async:false,
        type : "GET",
        url :  "getCountry",
        data : {
            
        },
        success : function(data){
	$("#preLoader").hide();
			$("#country").empty();
            for (var i = 0; i < data.length; i++) {
                $("#country").append(new Option(data[i].description, data[i].description));	
                $("#regBillingCountry").append(new Option(data[i].description, data[i].description));	
                $("#regDipatchCountry").append(new Option(data[i].description, data[i].description));	
            }  
        },error : function(err){
	$("#preLoader").hide();
            console.log("getCountry ::: " + err)
        }
    });
}

function getCurrencyCode() {
    $.ajax({
		async:false,
        type : "GET",
        url :  "getCurrencyCodes",
        success : function(data){
			$("#currencyCode").empty();
            for (var i = 0; i < data.length; i++) {
                	$("#currencyCode").append(new Option(data[i].currencyCode, data[i].currencyCode,
                	data[i].defaultSelected,data[i].selected));	
            }  
        },error : function(err){
            console.log("currencyCode ::: " + err)
        }
    });
}

function getProductCategory() {
    $.ajax({
		async:false,
        type : "GET",
        url :  "getProductCategory",
        success : function(data){
			$("#category").empty();
			$("#category").append(new Option("Select Category",""));
            for (var i = 0; i < data.length; i++) {
                	$("#category").append(new Option(data[i].category, data[i].category));	
            }  
        },error : function(err){
            console.log("currencyCode ::: " + err)
        }
    });
}


function formattedDate(){
	const monthNames = ["Jan", "Feb", "Mar", "Apr", "May", "Jun","Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];
					let dateObj = new Date();
					let month = monthNames[dateObj.getMonth()];
					let day = String(dateObj.getDate()).padStart(2, '0');
					let year = dateObj.getFullYear();
					let output = day + '-' + month + '-' + year;
					return output;
}


function openLicenseModal(id, customerType){
	
	$("#preLoader").show();
			$.ajax({
				url:'getLicenseDetailView',
				type:'POST',
				dataType:'JSON',
				data:{
					"id" :id,
				},
				success:function(data){
					$("#preLoader").hide();
					if(data.success != undefined && data.success != ""){
						fillCompanyLicenseDetails(data.success, customerType);	
					}
					$("#licenseInfoModal").modal('show');
				},
				error:function(error){
					$("#preLoader").hide();
					toastr.error("License Data not found for this customer!");
				}
			});
}

function fillCompanyLicenseDetails(data, customerType){
	$("#license2").html(data.license2);
	$("#license3").html(data.license3);
	$("#license41").html(data.license41);
	$("#license42").html(data.license42);
	$("#license5").html(data.license5);
	
	$("#license2DatePicker").html(data.license2ExpiryDates);
	$("#license3DatePicker").html(data.license3ExpiryDates);
	$("#license41DatePicker").html(data.license41ExpiryDates);
	$("#license42DatePicker").html(data.license42ExpiryDates);
	$("#license5DatePicker").html(data.license5ExpiryDates);
	$("#licenseFile").html(data.licenseFileName);
	$("#licenseFileDownload").attr('href',"javascript:licenseFileDownload("+data.loginId+",'"+customerType+"')");
	$("#wdalicenseFile").html(data.wdaLicenseFileName);
	$("#wdalicenseFileDownload").attr('href',"javascript:wdaFileDownload("+data.loginId+")");
}


function wdaFileDownload(loginId) {

	var form = document.createElement("form");
	form.setAttribute("method", "GET");
	form.setAttribute("target", "_blank");
	form.setAttribute("action", "getwdaLicenseFile");
	var hiddenField = document.createElement("input");
	hiddenField.setAttribute("type", "hidden");
	hiddenField.setAttribute("name", "loginId");
	hiddenField.setAttribute("value", loginId);
	form.appendChild(hiddenField);
	
	var custType = document.createElement("input");
	custType.setAttribute("type", "hidden");
	custType.setAttribute("name", "customerType");
	custType.setAttribute("value", "");
	form.appendChild(custType);
	
	document.body.appendChild(form);
	form.submit();
}

function licenseFileDownload(loginId, customerType) {
	var form = document.createElement("form");
	form.setAttribute("method", "GET");
	form.setAttribute("target", "_blank");
	form.setAttribute("action", "getLicenseFile");
	var hiddenField = document.createElement("input");
	hiddenField.setAttribute("type", "hidden");
	hiddenField.setAttribute("name", "loginId");
	hiddenField.setAttribute("value", loginId);
	form.appendChild(hiddenField);
	
	var custType = document.createElement("input");
	custType.setAttribute("type", "hidden");
	custType.setAttribute("name", "customerType");
	custType.setAttribute("value", customerType);
	form.appendChild(custType);
	
	document.body.appendChild(form);
	form.submit();
}

function getReportData(id){
	
	$("#preLoader").show();
			$.ajax({
				url:'getReportData',
				type:'POST',
				dataType:'JSON',
				data:{
					"id" :id,
				},
				success:function(data){
					$("#preLoader").hide();
					console.log(data.success);
					if(data.success != undefined && data.success != null){
					fillCompanyReportDetails(data.success);
					$("#creditReportModal").modal('show');
					}else{
						toastr.error("Credit report not found!");
					}
				},
				error:function(error){
					console.log(error);
					$("#preLoader").hide();
					toastr.error("Credit report not found!");
				}
			});
	
}

function fillCompanyReportDetails(data){
	$("#companyStatus").html(data.companyStatus);
	$("#companyVatNumber").html(data.vatNo);
	$("#companyRegNumber").html(data.regNo);
	$("#exactRegistered").html(data.exactRegistered);
	$("#possibleRegistered").html(data.possibleRegistered);
	$("#numberOfExact").html(data.numberOfExact);
	$("#numberOfPossible").html(data.numberOfPossible);
	$("#numberOfSatisfied").html(data.numberOfSatisfied);
	$("#numberOfWrits").html(data.numberOfWrits);
	$("#negCurrency").html(data.currency);
	$("#commonValue").html(data.creditScoreValue);
	$("#commonDescription").html(data.creditScoreDescription);
	$("#creditCurrency").html(data.creditLimitCurrency);
	$("#latestRatingChangeDate").html(data.latestRatingChangeDate);
	$("#directorName").html(data.currentDirector);
	$("#shareHolderName").html(data.shareHolderName);
}

function downloadQuotation(){
	
	var form = $("#downloadQuotationFileForm");
	
	form.append("<input type='hidden' name='quotationId' value='"+$('#savedQtId').val()+"'>")
	form.append("<input type='hidden' name='finalDate' value='"+$('#savedFinalDate').val()+"'>")
	form.append("<input type='hidden' name='deliveryDate' value='"+$('#savedDeliveryDate').val()+"'>")
	form.append("<input type='hidden' name='quotationType' value='"+$('#savedQtType').val()+"'>")
	form.append("<input type='hidden' name='addressId' value='"+$('#savedAddressId').val()+"'>")

	var id ;
	if ($('#supplierId').val() != undefined && $('#supplierId').val() != '')
		id = $('#supplierId').val();
	else
		id = $('#manufacturerId').val()
	 
	form.append("<input type='hidden' name='supplierId' value='"+id+"'>")
	
	form.submit();
	
}


function resestUploadQtForm() {
	$('#uploadQuotationForm')[0].reset();
//	$('#uploadQuotationForm').data('bootstrapValidator').resetForm();
}

function uploadQuotation(){
	
	if($('#uploadedQuotationFile').val()== undefined || $('#uploadedQuotationFile').val()== '' ){
		toastr.error("Kindly select a file to upload!");
		return;
	}
	
	$('#uploadQuotationModal').modal('hide');
	$("#preLoader").show();
	
	$('#quotationId').val($('#savedQtId').val());
	$('#fileSupplierId').val($('#supplierId').val());
	$('#qtType').val($('#savedQtType').val());
	$('#deliveryDate').val($('#savedDeliveryDate').val());
	$('#finalDate').val($('#savedFinalDate').val());
	$('#addressId').val($('#savedAddressId').val());
	
	var form = $('#uploadQuotationForm')[0];
	var data = new FormData(form);
	
	console.log(data);
	$.ajax({
		url: "uploadQuotationFile",
		data: data,
		type: "POST",
		enctype: 'multipart/form-data',
		dataType: 'JSON',
		async:false,
		processData: false,
		contentType: false,
		success: function(data) {
			console.log(data);
			$("#preLoader").hide();
			if (data.msg != null && data.msg.length > 0 && data.msg != undefined) {

				console.log(data.msg);
				if (data.msg.includes("Success")) {
					$('#statusModalHeader').show();
				} else {
					$('#statusModalBody').show();
					$('#failedRowsStatus').html('');
					for (var i = 0; i < data.msg.length; i++) {
						$('#failedRowsStatus').append('<span>'+data.msg+'</span><br>');
					}
				}	
				
				
//				var failedRows="Issues in Row No. ";
//				for(var i = 0; i < data.lines.length; i++){
//					failedRows += '(' +data.lines[i].quotationLineId+ ') ';
//				}
//				$('#failedRows').html(failedRows);
//				$('#failedTotalLine').html(data.lines.length);
				$('#fileUploadStatusModal').modal('show');
				
				jQuery("#quotationGrid").jqGrid('setGridParam', {
									datatype: 'json', mtype: 'POST', page: 1, rows: 100,
									url: "qoutationLineForSupplier?quotationId=" + $('#savedQtId').val() + "&supplierId="+$('#supplierId').val()+ "&addressId="+$('#addressId').val()
								});
				$('#quotationGrid').trigger( 'reloadGrid' );
			}
		},
		error:function(error){
			console.log(error);
			$("#preLoader").hide();
			$('#uploadQuotationModal').modal('hide');
			toastr.error("Something went wrong!");
		}

	});
	$("#uploadQuotationForm")[0].reset();
	
}

function getDeliveryAddress(){
	
	$("#fullAddress").html('');
	$.ajax({
		type: "POST",
		async:false,
		url: 'getDeliveryAddress',
		dataType: 'JSON',
		data: {
			customerId: $('#customerId').val()

		},
		success:function(data){
			for (var i = 0; i < data.length ; i++) {
				console.log(data);
				map[data[i].addressId] = data[i].address1+',<br>'+data[i].address2+',<br>'+data[i].city+' - '+data[i].city+',<br>'+data[i].zipCode;
				if (i == 0) {
					$("#dashBoardAddressId").val(data[i].addressId);
					$('#location').append('<option value="' + data[i].addressId + '">' + data[i].zipCode + '</option>');
					$("#fullAddress").append(data[i].address1+',<br>'+data[i].address2+',<br>'+data[i].city+' - '+data[i].city+',<br>'+data[i].zipCode);
				} else {
					$('#location').append('<option value="' + data[i].addressId + '" >' + data[i].zipCode + '</option>');
					
				}
			}
		}
		
	})
}


function getCustomerDeliveryAddress(addressId){
	
//	$("#fullAddress").html('');
	$.ajax({
		type: "POST",
		url: 'getCustomerDeliveryAddress',
		dataType: 'JSON',
		data: {
			addressId: addressId

		},
		success:function(data){
			$("#savedAddress").append(data.address1+',<br>'+data.address2+',<br>'+data.city+' - '+data.city+',<br>'+data.zipCode);
			}
		
	})
}


function getSupplierCount(quotationId) {
	$('#preLoader').show();
		$.ajax({
			url: "getSupplierQuotedCount",
			data: {
				"quotationId": quotationId,
			},
			type: "POST",
			dataType: 'JSON',
			success: function(data) {
				$('#totalSupplierQuotedCount').html(data.count);
			},
			error: function(err) {
			}
		});
		$('#preLoader').hide();
}

function sendAcknowledgementEmail(quotationId){
	
	$.ajax({
			url: "sendAcknowledgement",
			data: {
				"quotationId": quotationId,
			},
			type: "POST",
			dataType: 'JSON',
			success: function(data) {
				
			},
			error: function(err) {
			}
		});
}

function getAISuggestions(pipCode) {
	$('#ViewCustomerSuggestionModal').modal('show');
	jQuery("#customerSuggestion").jqGrid('setGridParam', {
									url: "getSuggestion?pipCode="+pipCode, mtype: 'POST', page: 1, rows: 10,
									
								});
				$('#customerSuggestion').trigger( 'reloadGrid' );
}

function openSuggestions(){
	$("#customerSuggestion").jqGrid({
		guiStyle: "bootstrap",
        iconSet: "fontAwesome",
		url: '',
		mtype: "",
		dataType:'JSON',
		colModel: [
			{ label: 'Id', name: 'pipCodeId', align: "left",editable:false, hidden: true },
			{ label: 'BNF Code', name: 'bnfCode',  align: "left",editable:false , hidden: true },
			{ label: 'Pip Code', name: 'pipCode',align: "left",width:100,editable:false },
			{ label: 'Product', name: 'description', align: "left", width:500,editable:false },
			{ label: 'Pack Size', name: 'packSize', align: "center", width:450,editable:false},
		],
		pager: "#customerSuggestionPager",
		viewrecords: true,
		shrinkToFit: false,
		autowidth: true,
		height:'auto',
		rowNum: 10,
		rowList: [10, 20, 50],
		jsonReader: { repeatitems: false, id: "pipCodeId" },
		guiStyle: "bootstrap",
		iconSet: "fontAwesome",
	});
	
	$("#customerSuggestion").jqGrid ('setLabel', 'packSize', '', {'text-align':'center'});
}


function getSupplierDeliveryAddress(){
//	debugger;
	$("#supplierFullAddress").html('');
	$.ajax({
		type: "POST",
		async:false,
		url: 'getDeliveryAddress',
		dataType: 'JSON',
		data: {
			customerId: $('#customerId').val()

		},
		success:function(data){
			for (var i = 0; i < data.length ; i++) {
				supplierMap[data[i].addressId] = data[i].address1+',<br>'+data[i].address2+',<br>'+data[i].city+' - '+data[i].city+',<br>'+data[i].zipCode;
				if (i == 0) {
//					$("#dashBoardAddressId").val(data[i].addressId);
					$('#supplierLocation').append('<option value="' + data[i].addressId + '" selected>' + data[i].zipCode + '</option>');
					$("#supplierFullAddress").append(data[i].address1+',<br>'+data[i].address2+',<br>'+data[i].city+' - '+data[i].city+',<br>'+data[i].zipCode);
				} else {
					$('#supplierLocation').append('<option value="' + data[i].addressId + '" >' + data[i].zipCode + '</option>');
					
				}
			}
		}
		
	})
}

