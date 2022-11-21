

jQuery(document).ready(function() {
	$("#username").focus();

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
			});
    
    $('#registeredEmailForm').bootstrapValidator({
		submitHandler: function(validator, form, submitButton) {
			sendForgotPasswordOTP();
    	},
		fields: {
			regUserEmailId: {
					validators: {
						notEmpty: {
							message: 'Email is required and cannot be empty'
						},
						regexp: {
	                        regexp: '[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}',
	                        message: 'Invalid email address',
                   	 	},
					}
			},
		}
	});
	
    $('#changePasswordForm').bootstrapValidator({
		submitHandler: function(validator, form, submitButton) {
			changePassword();
    	},
		fields: {
            newPassword: {
                validators: {
                    notEmpty: {
						message: 'Password is required'
					},
                }
            },
            confirmNewPassword: {
                validators: {
					notEmpty: {
						message: 'Confirm password is required'
					},
                    identical: {
                        field: 'newPassword',
                        message: 'The password and its confirm are not the same'
                    }
                }
            }
        }
	});
	
	$('#loginValidate').bootstrapValidator({
		fields: {
            username: {
                validators: {
                    notEmpty: {
						message: 'Username is required'
					},
                }
            },
            password: {
                validators: {
					notEmpty: {
						message: 'Password is required'
					},
                }
            }
        }
	});
});

function showEmailSendDiv(){
	$("#forgotPasswordOtpDiv").removeAttr("style","display:none !important;");
	$("#loginFormDiv").attr("style","display:none !important;");
	$("#regUserEmailId").val("");
}

function showForgotPasswordDiv(){
	$("#changePasswordDiv").removeAttr("style","display:none !important;");
	$("#forgotPasswordOtpDiv").attr("style","display:none !important;");
	$("#otpDIV").attr("style","display:none !important;");
}

function showLoginDiv(){
	$("#loginFormDiv").removeAttr("style","display:none !important;");
	$("#changePasswordDiv").attr("style","display:none !important;");
}

function sendForgotPasswordOTP(){
	$.ajax({
			url : "sendToRegisteredEmailOTP",
			data : {email : $("#regUserEmailId").val()},
			type : "POST",
			dataType : 'JSON',
			secureuri : false,
			success : function(data) {
				setTimer();
				if(data.error !=undefined &&  data.error !=""){
					toastr.error(data.error)
					return;
				}
				if(data.message !=undefined ){
					$("#otpDIV").show();
					 $('.otp-input-div').find('input:text').val('');
					$("#forgotPasswordOtpDiv").attr("style","display:none !important;");
					$("#referenceNo").html(data.message);
					$(".otp-inputbar").val("");
					setTimer();
				}
			},error:function(data){
//				$("#preloader").show();
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
	
	function validateOTP(){
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
//		KTApp.block('#OtpVerificationModal .modal-content', {
//			overlayColor: '#000000',
//			state: 'primary',
//			message: 'please wait verifying your OTP'
//		});
		
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
					$("#invalidOTP").html(data.message);
					return;
				}
				if(data.message  == "OTP is not valid" ||data.message  == "OTP has expired, Please resend OTP"){
					toastr.error(data.message)
					$("#invalidOTP").html(data.message);
					return;
				}else if(data.message =="You are registered suceessfully" ){
					$("#changePasswordForm").trigger("reset");
						showForgotPasswordDiv();
				}
//				KTApp.unblock('#OtpVerificationModal .modal-content');
			},
			error:function(data){
				KTApp.unblock('#OtpVerificationModal .modal-content');
			}
		});
	}
	
	
function changePassword(){
		$.ajax({
				url : "forgotPassword",
				data : {
					email : $("#regUserEmailId").val(),
					newPassword:$("#newPassword").val()
				},
				type : "POST",
				dataType : 'JSON',
				secureuri : false,
				success : function(data) {
					if(data.error !=undefined &&  data.error !=""){
						toastr.error(data.error)
						return;
					}
					if(data.message !=undefined ){
						toastr.success(data.message);
						showLoginDiv()
					}
				},error:function(data){
	//				$("#preloader").show();
				}
			});
}


function validateForgotPasswordOTP(){
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
//		KTApp.block('#OtpVerificationModal .modal-content', {
//			overlayColor: '#000000',
//			state: 'primary',
//			message: 'please wait verifying your OTP'
//		});
		
		$.ajax({
			url : "validateEmailForgetPasswordOtp",
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
					$("#invalidOTP").html(data.message);
					return;
				}
				if(data.message  == "OTP is not valid" ||data.message  == "OTP has expired, Please resend OTP"){
					toastr.error(data.message)
					$("#invalidOTP").html(data.message);
					return;
				}else if(data.message =="Your OTP validate successfully" ){
					$("#changePasswordForm").trigger("reset");
						showForgotPasswordDiv();
				}
//				KTApp.unblock('#OtpVerificationModal .modal-content');
			},
			error:function(data){
				KTApp.unblock('#OtpVerificationModal .modal-content');
			}
		});
	}
	
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