$(document).ready(function(){
	
	$(".menu-item").removeClass('menu-item-here');
	$("#profileCompanyDetailsPageLI").addClass('menu-item-here');
	
	$("#profileCompanyDetailsPage").removeClass("active")
	$("#profileAddressDeatailsPage").removeClass("active")
	$("#profileChangePasswordPage").addClass("active")
	$("#profileSettingPage").removeClass("active")
	$('#changePasswordForm').bootstrapValidator({
		submitHandler: function(validator, form, submitButton) {
			changePassword();
    	},
    	trigger:'focusout',
		fields: {
            currentPassword: {
                validators: {
					notEmpty: {
						message: 'Password is required'
					},
                }
            },
            newPassword: {
                validators: {
					notEmpty: {
						message: 'Password is required'
					},
                }
            },
            confirmPassword: {
                validators: {
					notEmpty: {
						message: 'Confirm password is required'
					},
                    identical: {
                        field: 'newPassword',
                        message: 'The password and its confirm are not the same'
                    }
                }
            },
        }
	});
});

function changePassword(){
	swal.fire({
	    title: "Are you sure?",
	    text: "You want to change the password!",
	    icon: 'question',
		showCancelButton: true,
	  }).then((submit) => {
		 if (submit.isConfirmed) {
			$("#preLoader").show();
				$.ajax({
					url:'changePassword',
					type:'POST',
					dataType:'JSON',
					data:$('#changePasswordForm').serialize(),
					success:function(response){
						$("#preLoader").hide();
							if(response.message != undefined && response.message == "error"){
								errorMsg(response.error);
							}else{
								successMsg(response.message);
								 window.location.href = "login?logout";
								 $('#changePasswordForm').trigger('reset');
							}
					},
					error:function(error){
						$("#preLoader").hide();
					}
				});
			}
		});
}