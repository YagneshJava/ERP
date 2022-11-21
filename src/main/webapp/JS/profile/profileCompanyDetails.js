$(document).ready(function(){
	
	$(".menu-item").removeClass('menu-item-here');
	$("#profileCompanyDetailsPageLI").addClass('menu-item-here');
	
	$(".profileSidebarLI").removeClass("active");
	$("#profileCompanyDetailsPage").addClass("active")
	
		$('.custom-file-input').on('change', function() {
            var fileName = $(this).val();
            $(this).next('.custom-file-label').addClass("selected").html(fileName);
        });

	$("#customerEditBtn").click(function(){
		$("#customerSaveBtn").show();
		$("#customerEditBtn").hide();
		$("#cancelBtn").show();
		$(".form-control").prop('readonly',false);
		$("#wdaRegistrationNo").prop('readonly',true);
		$("#cqcRegistrationNo").prop('readonly',true);
		$("#gphcregistrationNo").prop('readonly',true);
		$(".form-control").removeClass('form-control-solid');
	});
	
	$("#cancelBtn").click(function(){
		$("#customerSaveBtn").hide();
		$("#customerEditBtn").show();
		$("#cancelBtn").hide();
		$(".form-control").prop('readonly',true);
		$(".form-control").addClass('form-control-solid');
	});
	
	
	$('#customerDetailsForm').bootstrapValidator({
		submitHandler: function(validator, form, submitButton) {
			saveCustomerChanges();
    	},
    	trigger:'focusout',
		fields: {
			email:{
				validators: {
					notEmpty: {
						message: 'Email address is required'
					},
					regexp: {
	                    regexp: '[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}',
	                    message: 'Invalid email address',
	                },
                }
			},
			regCompanyName:{
				validators: {
					notEmpty: {
						message: 'Company Name is required'
					},
				}
			},
			tradingName:{
				validators: {
					notEmpty: {
						message: 'Trading Name is required'
					},
				}
			},
			registrationNo:{ 
				validators: {
					notEmpty: {
						message: 'Registration number is required'
					},
					remote: {
                		message: 'Invallid registration number.',
                		type: 'POST',
                		url: 'customerRegValidator',
                    }
				}
			},
			vatRegistrationNo:{
				validators: {
					notEmpty: {
						message: 'VAT Registration No. is required'
					},
				}
			},
//			gphcregistrationNo:{
//				validators: {
//					notEmpty: {
//						message: 'GPHC No. is required'
//					},
//					remote: {
//						name:'gphcRegNo',
//                		message: 'Invalid GPHC number',
//                		type: 'POST',
//                		url:'gphcValidator'
//                    }
//				}
//			},
//			wdaRegistrationNo:{
//				validators: {
//					notEmpty: {
//						message: 'WDA No. is required'
//					},
//					remote: {
//						name:'wdaNo',
//                		message: 'Invalid WDA number',
//                		type: 'POST',
//                		url:'wdaValidatorTab'
//                    }
//				}
//			},
			mobileNo:{
				validators: {
					notEmpty: {
						message: 'Mobile No. is required'
					},
				}
			},
			currencyCode:{
				validators: {
					notEmpty: {
						message: 'Currency code is required'
					},
				}
			}
        }
	});
	
	getCurrencyCode();
});

function saveCustomerChanges(){
	if($("#userType").val() === "SUPPLIER" || $("#userType").val() === "MANUFACTURER")
		url = "saveSupplierDetails";
	else
		url = "saveCustomerDetails";
	var form = $('#customerDetailsForm')[0];
	var data = new FormData(form);
	swal.fire({
	    title: "Are you sure?",
	    text: "You want update your details!",
	    icon: 'question',
		showCancelButton: true,
	  }).then((submit) => {
		 if (submit.isConfirmed) {
			$("#preLoader").show();
			$.ajax({
					url:url,
					type:'POST',
					enctype: 'multipart/form-data',
					dataType: 'JSON',
					processData: false,
					contentType: false,
					data:data,
					success:function(response){
						$("#preLoader").hide();
						if(response.message != undefined && response.message == "error")
							errorMsg(response.error);
						else
							successMsg(response.message);
					},
					error:function(error){
						$("#preLoader").hide();
					}		
			});
		}
	});
}


















