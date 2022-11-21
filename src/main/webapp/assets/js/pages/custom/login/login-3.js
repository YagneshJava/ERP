"use strict";

// Class Definition
var KTLogin = function() {

	var _handleFormSignin = function() {
		var form = KTUtil.getById('addNewUserForm');

		if (!form) {
			return;
		}

		FormValidation
		    .formValidation(
		        form,
		        {
		            fields: {
						regUserType: {
							validators: {
								notEmpty: {
									message: 'User Type Select is required'
								}
							}
						},
						regUserName: {
							validators: {
								notEmpty: {
									message: 'User Name is required'
								}
							}
						},
						regUserEmailId: {
							validators: {
								notEmpty: {
									message: 'Email Id is required'
								},
								emailAddress: {
		                            message: 'The value is not a valid email address'
		                        }
							}
						},
						regUserPassword: {
							validators: {
								notEmpty: {
									message: 'Password is required'
								}
							}
						},
						regUserConfirmPassword: {
							validators: {
								notEmpty: {
									message: 'Confirm password required'
								},
								identical: {
		                            compare: function() {
		                                return form.querySelector('[name="regUserPassword"]').value;
		                            },
		                            message: 'Enter Confirm Password Same as Password'
                        		}
							}
						}
		            },
		            plugins: {
						trigger: new FormValidation.plugins.Trigger(),
						submitButton: new FormValidation.plugins.SubmitButton(),
						bootstrap: new FormValidation.plugins.Bootstrap({
						//	eleInvalidClass: '', // Repace with uncomment to hide bootstrap validation icons
						//	eleValidClass: '',   // Repace with uncomment to hide bootstrap validation icons
						})
		            }
		        }).on('core.form.valid', function() {
		       		 submitUserDetails();
		        });
    }

    return {
        init: function() {
            _handleFormSignin();
        }
    };
}();

jQuery(document).ready(function() {
    KTLogin.init();
});

function showForgotPasswordDiv(){
	$("#forgotPasswordOtpDiv").show();
	$("#loginFormDiv").hide();
}

function sendForgotPasswordOTP(){
	
}
