$(document).ready(function(){
	getCompanyAddressList();
	getCountry();
	$(".menu-item").removeClass('menu-item-here');
	$("#profileCompanyDetailsPageLI").addClass('menu-item-here');
	
	$(".profileSidebarLI").removeClass("active");
	$("#profileAddressDeatailsPage").addClass("active")
	
	
	$('#companyAddressForm').bootstrapValidator({
		submitHandler: function(validator, form, submitButton) {
			saveCompanyAddress();
    	},
    	trigger:'focusout',
		fields: {
			zipCode:{
				validators: {
					notEmpty: {
						message: 'Postcode is required'
					},
                }
			},
			country:{
				validators: {
					notEmpty: {
						message: 'Country Name is required'
					},
				}
			},
			address1:{
				validators: {
					notEmpty: {
						message: 'Address Line 1 is required'
					},
				}
			},
			county:{
				validators: {
					notEmpty: {
						message: 'County code is required'
					},
				}
			}
        }
	});
});

function addAddressDivShow(){
	$("#AddAddressDiv").show();
	$("#viewAddressDiv").hide();
}

function viewAddressDivShow(){
	$("#companyAddressForm").trigger('reset');
	$("#AddAddressDiv").hide();
	$("#viewAddressDiv").show();
}

function saveCompanyAddress(){
	
	if($("#id").val() == ""){
		$("#id").val(0);
	}
	swal.fire({
	    title: "Are you sure?",
	    text: "You want save address!",
	    icon: 'question',
		showCancelButton: true,
	  }).then((submit) => {
		 if (submit.isConfirmed) {
			$("#preLoader").show();
			$.ajax({
				url:'saveCompanyAddress',
				async:false,
				data:$("#companyAddressForm").serialize(),
				type:'POST',
				dataType:'JSON',
				success:function(response){
					$("#preLoader").hide();
					if(response.message != undefined && response.message == "error"){
						errorMsg(response.error);
					}else{
						swal.fire({
							 icon: 'success',
						    text: response.message,
						    type: "success"
						}).then(function() {
						   viewAddressDivShow();
							getCompanyAddressList();
						});
					}
					$("#companyAddressForm").trigger('reset');
				},
				error:function(error){
					$("#preLoader").hide();
				}
			});
		}
	});
}

function getCompanyAddressList(){
	$("#preLoader").show();
			$.ajax({
				url:'getCompanyAddressList',
				type:'GET',
				dataType:'JSON',
				success:function(response){
					$("#preLoader").hide();
					$("#CompanyBillingAddressesList").empty();
					$("#CompanyDeliveryAddressesList").empty();
					$("#defaultSpan").empty();
					for(var i=0;i< response.length;i++){
							var fullAddress = (response[i].address1 != null && response[i].address1 != "" ? response[i].address1 + ","  : "")
											+ (response[i].address2 != null && response[i].address2 != "" ? response[i].address2 + ","  : "")
											+ (response[i].address3 != null && response[i].address3 != "" ? response[i].address3 + ","  : "")
											+ (response[i].city != null && response[i].city != "" ? response[i].city + ","  : "")
											+ (response[i].county != null && response[i].county != "" ? response[i].county + ","  : "")
											+ (response[i].country != null && response[i].country != "" ? response[i].country + ","  : "")
											+ (response[i].zipCode != null && response[i].zipCode != "" ? response[i].zipCode  : "");
							var addresstype = response[i].addressTypeValue[0].addressType === "BILLING" ? "Billing Address" : "Delivery Address";
							appendCompanyAddress(fullAddress,response[i].addressId,addresstype,response[i].addressTypeValue[0].default_, response[i].zipCode);
					}
				},
				error:function(error){
					$("#preLoader").hide();
				}
			});
}


function appendCompanyAddress(fullAddress,addressId,addresstype,isDefalut, postCode){

	var addressListDiv = '<label class="option">'
					 +' <span class="option-label">'
					  +' <span class="option-head">'
					   +' <span class="option-title">'
//					   +addresstype 
						+postCode
					   + '<span id="defaultSpan'+addressId+'">  </span>'
					 +'   </span>'
					  +'  <span class="option-focus">'
					    +'    <a href="javascript:editCompanyAddress(\''+addressId+'\');" class="btn btn-icon btn-sm btn-hover-light-warning mr-1 btn-icon-warning" data-card-tool="toggle" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit" aria-describedby="tooltip129522">'
					    +'        <i class="icon-xl la la-pencil-alt"></i>'
					    +'    </a>'
					    +'    <a href="javascript:deleteCompanyAddress(\''+addressId+'\');" class="btn btn-icon btn-sm btn-hover-light-danger mr-1 btn-icon-danger" data-card-tool="reload" data-toggle="tooltip" data-placement="top" title="" data-original-title="Del." aria-describedby="tooltip78948">'
					     +'       <i class="icon-xl la la-trash"></i>'
					      +'  </a>'
					    +' </span>'
					  +' </span>'
					 +'  <div class="separator separator-dashed my-2"></div>'
					 +'  <span class="option-body">'
					 +   fullAddress
					+'   </span>'
					+'  </span>'
					+' </label>';
					
					if(addresstype === "Billing Address"){
						$("#CompanyBillingAddressesList").append(addressListDiv );
					}else{
						$("#CompanyDeliveryAddressesList").append(addressListDiv );
					}
					
					if(isDefalut){
						$("#defaultSpan"+addressId).append('<span class="ml-1 label label-sm font-weight-boldlabel-light-success label-light-info  label-inline"> Default </span>');
					}
	
}

function editCompanyAddress(addressId){
	$("#preLoader").show();
	$.ajax({
			url:'getCompanyAddress',
			type:'GET',
			dataType:'JSON',
			data:{
				addressId: addressId
			},
			success:function(response){
				$("#preLoader").hide();
				fillCompanyAddressValues(response);
			},
			error:function(error){
				$("#preLoader").hide();
			}
		});
}

function fillCompanyAddressValues(data){
	$("#id").val(data.addressTypeValue[0].id);
	$("#addressID").val(data.addressTypeValue[0].addressId);
	$("#companyId").val(data.addressTypeValue[0].companyId);
	$("#identity").val(data.addressTypeValue[0].identity);
	
	$("#addressType").val(data.addressTypeValue[0].addressType);
	$("#address1").val(data.address1);
	$("#address2").val(data.address2);
	$("#address3").val(data.address3);
	$("#country").val(data.country);
	$("#city").val(data.city);
	$("#county").val(data.county);
	$("#zipCode").val(data.zipCode);
	if(data.addressTypeValue[0].default_ === true){
		$("#default_").prop('checked',true);
	}else{
		$("#default_").prop('checked',false);
	}
	addAddressDivShow();
}

function deleteCompanyAddress(addressId){
	swal.fire({
	    title: "Are you sure?",
	    text: "You want delete address!",
	    icon: 'question',
		showCancelButton: true,
	  }).then((submit) => {
		 if (submit.isConfirmed) {
			$("#preLoader").show();
			$.ajax({
				url:'deleteCompanyAddress',
				data:{
					addressId : addressId,
				},
				type:'POST',
				dataType:'JSON',
				success:function(response){
					$("#preLoader").hide();
					if(response.message != undefined && response.message == "error")
						errorMsg(response.error);
					else
						successMsg(response.message);
						
					$("#companyAddressForm").trigger('reset');
					getCompanyAddressList();
				},
				error:function(error){
					$("#preLoader").hide();
				}
			});
		}
	});
}