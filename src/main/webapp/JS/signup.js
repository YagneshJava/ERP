$(document).ready(function(){
	
	$('body').bind('cut copy paste', function (e) {
      e.preventDefault();
   });
//	$('#OtpVerificationModal_btn').click(function() {
//					KTApp.block('#OtpVerificationModal .modal-content', {
//						overlayColor: '#000000',
//						state: 'primary',
//						message: 'please wait verifying your OTP'
//					});
//
//					setTimeout(function() {
//						KTApp.unblock('#OtpVerificationModal .modal-content');
//					}, 2000);
//				});
				
			$(".otp-inputbar").keypress(function (e) {
				if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
					$("#errmsg").html("Digits Only").show().fadeOut("slow");
					return false;
				}
			});
			$(".otp-inputbar").on("keyup", function (e) {
				if ($(this).val()) {
					$(this).next().focus();
				}
				var KeyID = e.keyCode;
				switch (KeyID) {
					case 8:
						$(this).val("");
						$(this).prev().focus();
						break;
					case 46:
						$(this).val("");
						$(this).prev().focus();
						break;
					default:
						break;
				}
				var otpValues = $("#otp1").val().trim() +
							   $("#otp2").val().trim() +
							   $("#otp3").val().trim() +
							   $("#otp4").val().trim() +
							   $("#otp5").val().trim() +
							   $("#otp6").val().trim() ;
					if(otpValues.trim().length == 6){
						$("#validateOTPBTN").prop("disabled",false);
					}else{
						$("#validateOTPBTN").prop("disabled",true);
					}	   
			});
			$("#wdaNo").inputmask({mask: 'AA AAA(A) 99999'});

// KTLogin.init();
	 $("#regUserType").change(function(){
	 		$("#cqcNODiv").hide();
	 		$("#gphcRegistrationNoDiv").hide();
	 		$("#WDANoDiv").hide();
	 		$("#cqcNo").val("");
	 		$("#wdaNo").val("UK WDA H");
	 		$("#gphcRegNo").val("");
	 	if($(this).val() === "Dispensing Doctor"){
	 		$("#cqcNODiv").show();
	 	}else if($(this).val() === "Pharmacy"){
	 		$("#gphcRegistrationNoDiv").show();
	 	}else{
	 		$("#WDANoDiv").show();
	 	}
	 });
	 
	 $('#addNewUserForm').bootstrapValidator({
		submitHandler: function(validator, form, submitButton) {
			submitUserDetails();
    	},
//    	feedbackIcons: {
//		        valid: 'fa fa-map-marker-alt',
//		        invalid: 'fa fa-map-marker-alt',
//		        validating: 'fa fa-map-marker-alt'
//   		 },
    	trigger:'focusout',
		fields: {
			regUserType: {
				validators: {
					notEmpty: {
						message: 'User Type Select is required'
					}
				}
			},
			wdaNo: {
				validators: {
					callback:{
						message: 'WDA No. is required',
						callback: function(value, validator, $field){
	                       if(($("#regUserType").val() === "Wholesale" || $("#regUserType").val() === "Supplier") && value.trim() === ""){
								return false;
						   }
							return true;
                   		 }
					},
					remote: {
                		message: 'Invalid WDA number or it is already registered.',
                		type: 'POST',
//                		delay:3,
                		url:'wdaValidator'
                    },
//                    remote: {
//                		message: 'WDA number is already registered.',
//                		type: 'POST',
////                		delay:3,
//                		url:'wdaSystemValidator'
//                    }
				}
			},
			gphcRegNo: {
				validators: {
					callback:{
						message: 'GPhC Registration No. is required',
						callback: function(value, validator, $field){
	                       if(($("#regUserType").val() === "Pharmacy") && value.trim() === ""){
								return false;
						   }
							return true;
                   		 }
					},
					remote: {
                		message: 'Invallid GPhC registration number or it is already registered.',
                		type: 'POST',
                		url: 'gphcValidator',
                    }
				}
			},
			cqcNo: {
				validators: {
					callback:{
						message: 'CQC No. is required',
						callback: function(value, validator, $field){
	                       if(($("#regUserType").val() === "Dispensing Doctor") && value.trim() === ""){
								return {
									enabled:true
								};
						   }
							return {
									enabled:false
								};
                   		 }
					},
				}
			},
			 regUserEmailId: {
				validators: {
					notEmpty: {
						message: 'Email address is required'
					},
					regexp: {
                        regexp: '[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}',
                        message: 'Invalid email address',
                    },
//					emailAddress: {
//                        message: 'Invalid email address'
//                    },
                    remote: {
                		message: 'Email address is allready registered with us.',
                		type: 'POST',
                		url:'emailIdValidator'
                    }
				}
			},
			regUserName:{
				validators: {
					notEmpty: {
						message: 'User name is required'
					},
//					emailAddress: {
//                        message: 'Invalid email address'
//                    },
                    remote: {
                		message: 'The username is not available.',
                		type: 'POST',
                		url:'userNameValidator'
                    }
				}
			},
            regUserPassword: {
                validators: {
					notEmpty: {
						message: 'Password is required'
					},
					stringLength: {
                        min: 6,
                        max: 16,
                        message: 'The password must be more than 6 and less than 16 characters'
                    },
//                    identical: {
//                        field: 'regUserConfirmPassword',
//                        message: 'The password and its confirm are not the same'
//                    }
                }
            },
            regUserConfirmPassword: {
                validators: {
					notEmpty: {
						message: 'Confirm password is required'
					},
                    identical: {
                        field: 'regUserPassword',
                        message: 'The password and its confirm are not the same'
                    }
                }
            },
           
        }
	});
});

function submitUserDetails(){
		KTApp.block('#OtpVerificationModal .modal-content', {
						overlayColor: '#000000',
						state: 'primary',
						message: 'please wait resending OTP'
					});
	$("#preLoader").show();
		$.ajax({
			url : "newRegistration",
			data : $("#addNewUserForm").serialize(),
			type : "POST",
			dataType : 'JSON',
			secureuri : false,
			success : function(data) {
				$("#preloader").hide();
				$("#invalidOTP").html("");
				if(data.error !=undefined &&  data.error !=""){
					toastr.error(data.error)
					return;
				}
				if(data.message !=undefined ){
					$("#preLoader").hide();
					$("#OtpVerificationModal").modal('show');
					$("#showEmail").html($("#regUserEmailId").val())
					$("#referenceNo").html(data.message)
					$(".otp-inputbar").val("");
					setTimer();
				}
				KTApp.unblock('#OtpVerificationModal .modal-content');
			},error:function(data){
				$("#preLoader").hide();
				KTApp.unblock('#OtpVerificationModal .modal-content');
			}
		});
	}
	
	function velidateOTP(){
		var otpValue = $("#otp1").val().trim() +
		$("#otp2").val().trim() +
		$("#otp3").val().trim() +
		$("#otp4").val().trim() +
		$("#otp5").val().trim() +
		$("#otp6").val().trim() ;
		$("#invalidOTP").html("");
		if(otpValue === "" || otpValue.length < 6 ){
			$("#invalidOTP").html("Please enter OTP");
			$(".otp-inputbar").val("");
			return;
		}
		
		KTApp.block('#OtpVerificationModal .modal-content', {
			overlayColor: '#000000',
			state: 'primary',
			opacity: '0.45',
			message: 'please wait verifying your OTP'
		});
		$.ajax({
			url : "validateEmailOtp",
			data : {
				email : $("#regUserEmailId").val(),
				otp :otpValue,
				referenceNo : $("#referenceNo").text()
			},
			type : "POST",
			dataType : 'JSON',
			secureuri : false,
			success : function(data){
				if(data.error !=undefined &&  data.error !=""){
					toastr.error(data.error)
					return;
				}
				if(data.message !=undefined ){
					if(data.message === "You are registered suceessfully"){
						$('#addNewUserForm').trigger("reset");
						$("#OtpVerificationModal").modal('hide');
						 window.location.href = "thanksPage";
					}else{
						$("#invalidOTP").html(data.message);
						$(".otp-inputbar").val("");
					}
				}
				KTApp.unblock('#OtpVerificationModal .modal-content');
			},
			error:function(data){
				KTApp.unblock('#OtpVerificationModal .modal-content');
			}
		});
	}
	
	
	function setTimer(){
		$("#resendButton").hide();
		$("#timerDiv").show();
		var second = 60;
		var minute = 02;
		var interval = setInterval(function() {
			    second--;
			    if (minute <= 0 && second <= 0) {
			     	clearInterval(interval); 
			     	$("#resendButton").show();
			     	$("#timerDiv").hide();
			     	$('#timerValue').text("03:00");
			        return;
			    }else{
					if(minute <= 02){
			    		$('#timerValue').text(("0" + minute).slice(-2)+" : " +("0" + second).slice(-2));
			    	}
			    }
			}, 1000);
			var minuteInterval = setInterval(function() {
			    if (minute <= 0) {
			     	clearInterval(minuteInterval); 
			        return;
			    }else{
					minute--;
					second = 60;
			    }
			}, 60*1000);
	}
			