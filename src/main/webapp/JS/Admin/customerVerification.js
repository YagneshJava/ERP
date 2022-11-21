var customerId;
var loader = '<div id="preLoader" class="pre-loader-wrap" style="display: none !important;">'
				  +  '<div class="pre-loader triangle">'
				   +  '   <svg viewBox="0 0 86 80">'
				       +  ' <polygon points="43 8 79 72 7 72"></polygon>'
				      +  '</svg>'
				    +  '</div>'
				  +  '</div>';
				  
$(document).ready(function() {
	
	$(".menu-item").removeClass('menu-item-here');
	$("#customerVerificationLI").addClass('menu-item-here');
	
	
	customerTable = $('#customerDataTable').DataTable({
			ordering: false,
			scrollY:true,
			scrollX: true,
			scrollCollapse: true,
			processing: true,
			serverSide: true,
			ajax: {
				url: "getCustomerList?partyType=MANUFACTURER" ,
				type: 'POST',
			},
			columns: [
				{title: 'S.No', data: 'id', render: function (data, type, row, meta) {
			        return meta.row + meta.settings._iDisplayStart + 1;
			    } },
				{title: 'Customer ID',data: 'id',className: 'dt-left', visible: false},
				{title: 'Company Name',data: 'name',className: 'dt-left'},
				{title: 'Trading Name',data: 'tradingName',className: 'dt-left'},
				{title: 'Company ID',data: 'companyRegistrationNo',className: 'dt-left'},
				{title: 'Party',data: 'partyType',className: 'dt-left'},
				{title: 'Email',data: 'email',className: 'dt-left'},
				{title: 'Status',data: 'status',className: 'dt-center',render:statusFormatter},
				{title: 'Action',className: 'dt-center' , data:null,render:actionFormatter},
			],
			
			fixedColumns:   {
	            rightColumns: 2,
	            leftColumns: 0
	        },
	        select: {
                style: 'os',
                className: 'focusedRow',
                selector: 'td:last-child a'
            },
		});
		
		$("#customerHistoryGrid").jqGrid({
			guiStyle: "bootstrap",
	        iconSet: "fontAwesome",
			url: '',
			mtype: "POST",
			datatype: "local",
			colModel: [
				{ label: 'Old Value', name: 'oldValue', width: 300, align: "left",editable:false },
				{ label: 'New Value', name: 'newValue', width: 350, align: "left",editable:false },
				{ label: 'Date', name: 'timeStamp', width: 180, align: "left",editable:false },
				{ label: 'User', name: 'user', width: 140, align: "left",editable:false },
				{ label: 'Action', name: 'operationType', width: 100, align: "left",editable:false },
			],
			pager: "#customerHistoryGridPager",
			viewrecords: true,
			shrinkToFit: false,
			autowidth: true,
			height:'350px',
			rowNum: 50,
			rowList: [50, 100, 200],
			altRows:true
		});
});

function actionFormatter(data, type, row) {
	var buttons = "<div class='text-center'>";
//	if(data.partyType === "WHOLESALECUSTOMER" || data.partyType === "SUPPLIER" || data.partyType === "MANUFACTURER"){
		buttons += "<a data-toggle='tooltip' title ='License Info'  href='javascript:openLicenseVerificationModal(\""+data.loginId+"\",\""+data.partyType+"\");' class='btn btn-sm btn-bg-white btn-clean btn-icon-success  btn-hover-success  btn-icon mr-2 my-1 my-lg-0 mr-4'><i class='la la-drivers-license'></i></a>";
//	}else{
//		buttons += "<a data-toggle='tooltip' disabled='disabled' title ='License Info' class='btn btn-sm btn-bg-white btn-clean btn-icon-muted  btn-hover-muted  btn-icon mr-2 my-1 my-lg-0'><i class='fa fa-eye'></i></a>";
//	}
	if(data.status === "Active"){
		buttons += "<a data-toggle='tooltip' title ='Deactive'  href='javascript:changeCustomerStatus(\""+data.id+"\",\"Deactive\", \""+data.loginId+"\");' class='btn btn-sm btn-bg-white btn-clean  btn-hover-danger btn-icon-danger  btn-icon mr-2 my-1 my-lg-0 mr-4'><i class='la la-times-circle-o'></i></a>";
	}else{
		buttons += "<a  data-toggle='tooltip' title ='Active'  href='javascript:changeCustomerStatus(\""+data.id+"\",\"Active\", \""+data.loginId+"\");' class='btn btn-sm btn-bg-white btn-clean  btn-hover-success btn-icon-success  btn-icon mr-2 my-1 my-lg-0 mr-4'><i class='la la-check-circle-o'></i></a>";
	}
	
//	buttons += "<a title ='Edit' href='javascript:editCustomerProfile(\"" + row + "\");' class='btn btn-sm btn-bg-white btn-clean btn-icon-warning  btn-hover-warning  btn-icon mr-2 my-1 my-lg-0' > <i class='la la-edit'></i>  </a>";
	buttons += "<a   data-toggle='tooltip' title ='History'  href='javascript:openCustomerHistoryModal(\"" + data.id + "\");' class='btn btn-sm btn-bg-white btn-clean btn-icon-primary  btn-hover-primary  btn-icon mr-1 my-1 my-lg-0'>	<i class='la la-history'></i>	</a>"
	
	
	return buttons+"</div>";
}

function changeCustomerStatus(customerId,status, loginId) {
	var warningMessage;
	if(status === "Active"){
		warningMessage = "You want to Activate customer!"
	}
	if(status === "Deactive"){
		warningMessage = "You want to Deactivate customer!"
	}
	swal.fire({
	    title: "Are you sure?",
	    text: warningMessage,
	    icon: 'question',
		showCancelButton: true,
	  }).then((submit) => {
	  if(submit.dismiss === "cancel"){
	  	return false;
	  }
	  	$("#preLoader").show();
		$.ajax({
			url: "customerVerification",
			data: {
				'customerId':customerId,
				'status':status,
				'loginId':loginId
			},
			type: "POST",
			dataType: 'JSON',
			secureuri: false,
			success: function(data) {
				$("#preLoader").hide();
				if (data.error != undefined && data.error != "") {
					errorMsg(data.error);
					return;
				}
				if (data.success != undefined) {
					if(data.success == "Account has not been verified")
						warningMsg(data.success);
					else if(data.success == "Account has been verified"){
						successMsg(data.success);
						customerTable.ajax.reload();
					} else if(data.success == "Customer has been Deactivated successfully"){
						successMsg(data.success);
						customerTable.ajax.reload();
					}else
						warningMsg(data.success);
				}
//				else{
//					errorMsg(data.success);
//				}
				if (data.licExpired != undefined) {
					errorMsg(data.licExpired);
					customerTable.ajax.reload();
				}
			},
			error:function(error){
				$("#preLoader").hide();
			}
		});
	});
}

function editCustomerProfile(rowId){
	localStorage.clear();
	localStorage.setItem("customerId", jQuery("#customerList").jqGrid('getCell', rowId, 'id'));
	localStorage.setItem("companyId", jQuery("#customerList").jqGrid('getCell', rowId, 'companyId'));
	localStorage.setItem("partyType", jQuery("#customerList").jqGrid('getCell', rowId, 'partyType'));
	window.location.replace(location.origin + "/TenderMangement/profilePage");
}

function openCustomerHistoryModal(customerid){
		$("#ViewCustomerHistoryModal").modal('show');
		jQuery("#customerHistoryGrid").jqGrid('setGridParam', {
			datatype: 'json', mtype: 'POST',
			page: 1, rowNum: 10, url: 'getCustomerHistoryList?customerId='+customerid
		});
		$("#customerHistoryGrid").trigger("reloadGrid");
}

function openLicenseVerificationModal(loginId,userType){
	$("#LicenseVerificationModal").modal('show');
	console.log(loginId);
	console.log(userType);
	getLicenseInfoView(loginId,userType);
}

function licenseFileDownload(loginId) {
	console.log('Login Id from licenseFileDownload '+loginId);
	var form = document.createElement("form");
	form.setAttribute("method", "GET");
	form.setAttribute("target", "_blank");
	form.setAttribute("action", "getLicenseFile");
	var hiddenField = document.createElement("input");
	hiddenField.setAttribute("type", "hidden");
	hiddenField.setAttribute("name", "loginId");
	hiddenField.setAttribute("value", loginId);
	form.appendChild(hiddenField);
	document.body.appendChild(form);
	form.submit();
}

function statusFormatter(cellvalue, options, rowObject) {
	if (cellvalue == 'Active')
		return '<span data-toggle="tooltip" title="Active"></span><span class="label label-lg label-light-success label-inline" >' + cellvalue + '</span>';
	else if (cellvalue == 'Deactive')
		return '<span data-toggle="tooltip" title="Deactive"></span><span class="label label-lg label-light-danger label-inline">' + cellvalue + '</span>';
	else if (cellvalue == 'Pending')
		return '<span data-toggle="tooltip" title="Pending"></span><span class="label label-lg label-light-warning label-inline">' + cellvalue + '</span>';
}

function getLicenseInfoView(loginId,userType){
	$("#preLoader").show();
			$.ajax({
				url:'getLicenseInfoView',
				type:'POST',
				dataType:'JSON',
				data:{
					loginId :loginId,
					userType:userType
				},
				success:function(response){
					$("#preLoader").hide();
					fillCompanyLicenseInfo(response,loginId);
				},
				error:function(error){
					$("#preLoader").hide();
				}
			});
}

function fillCompanyLicenseInfo(data,loginId){
//	var licenseNo = data.licenseNos.split(";");
//	var licenseExpiryDate = data.licenseExpiryDates.split(";");
	console.log(data.wdaLicenseFileName);
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
	$("#licenseFileDownload").attr('href',"javascript:licenseFileDownload("+loginId+")");
	$("#wdalicenseFile").html(data.wdaLicenseFileName);
	$("#wdalicenseFileDownload").attr('href',"javascript:wdaFileDownload("+loginId+")");
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

function getCustomerVerificationList(partyType){
	
		customerTable = $('#customerDataTable').DataTable();
		customerTable.ajax.url( "getCustomerList?partyType="+partyType).load();

}