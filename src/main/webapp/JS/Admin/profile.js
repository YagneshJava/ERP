$(document).ready(function(){
	getCustomerDetails();
});

function getCustomerDetails(){
	var data = {
		customerId:localStorage.getItem("customerId"),
		companyId:localStorage.getItem("companyId"),
		partyType:localStorage.getItem("partyType")
	}
	$.ajax({
			url: "getCustomerDetails",
			data: data,
			type: "POST",
			dataType: 'JSON',
			secureuri: false,
			success: function(data) {
				fillCustomerDetails(data);
			},error:function(data){
				
			}
		});
}



function fillCustomerDetails(data){
	if(data != null && data != ""){
		$("#companyName").val(data.custmerInfo.name);
		$("#cqcName").val("");
		$("#companyRegistrationNo").val(data.custmerInfo.companyRegistrationNo);
		$("#vatRegistrationNo").val(data.custmerInfo.vatRegistrationNo);
		$("#gphcRegistrationNo").val(data.custmerInfo.gphcregistrationNo);
		$("#mobileNo").val(data.custmerInfo.mobileNo);
		$("#phoneNo").val(data.custmerInfo.phoneNo);
		$("#alternativeEmail").val(data.custmerInfo.email);
		$("#currencyCode").val(data.custmerInfo.currencyCode);
		
		if(data.address != null && data.address.length > 0 ){
			for(var i=0;i<data.address.length;i++){
				if(data.address[i].addressTypeValue != null 
					&& data.address[i].addressTypeValue[0].addressType === "BILLING"){
						$("#billPostcode").val(data.address[i].zipCode);
						$("#billHouseNo").val(data.address[i].houseNo);
						$("#billFlatNo").val(data.address[i].flatNo);
						$("#billAddressLine1").val(data.address[i].address1);
						$("#billAddressLine2").val(data.address[i].address2);
						$("#billCity").val(data.address[i].city);
						$("#county").val(data.address[i].county);
						$("#billCountry").val(data.address[i].country);
				}else if(data.address[i].addressTypeValue != null 
					&& data.address[i].addressTypeValue[0].addressType === "DELIVERY"){
						$("#delPostcode").val(data.address[i].zipCode);
						$("#delHouseNo").val(data.address[i].houseNo);
						$("#delFlatNo").val(data.address[i].flatNo);
						$("#delAddressLine1").val(data.address[i].address1);
						$("#delAddressLine2").val(data.address[i].address2);
						$("#delCity").val(data.address[i].city);
						$("#county").val(data.address[i].county);
						$("#delCountry").val(data.address[i].country);
				}
			}
		}
	}
	M.updateTextFields();
}