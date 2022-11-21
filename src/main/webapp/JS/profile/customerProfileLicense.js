$(document).ready(function(){
	getCustomerLicenseInfo();
//	$(".menu-item").removeClass('menu-item-here');
//	$("#profileCompanyDetailsPageLI").addClass('menu-item-here');
	
	$(".profileSidebarLI").removeClass("active");
	$("#customerProfileLicenceInfoPage").addClass("active");
	
	$('#licenseFile').on('change', function() {
        var fileName = $(this).val();
        $(this).next('.custom-file-label').addClass("selected").html(fileName);
    });
    
});


function getCustomerLicenseInfo(){
	$("#preLoader").show();
			$.ajax({
				url:'getCustomerLicenseInfo',
				type:'POST',
				dataType:'JSON',
				success:function(response){
					$("#preLoader").hide();
					fillCompanyLicenseInfo(response);
				},
				error:function(error){
					$("#preLoader").hide();
				}
			});
}




function updateCustomerLicenseInfo(){
		var form = $('#customerLicenseInfoForm')[0];
		var formData = new FormData(form);
	
	swal.fire({
	    title: "Are you sure?",
	    text: "Do you want update license details!",
	    icon: 'question',
		showCancelButton: true,
	  }).then((submit) => {
		 if (submit.isConfirmed) {
			$("#preLoader").show();
				$.ajax({
					url:'updateCompanyLicenseInfo',
					type:'POST',
					enctype: 'multipart/form-data',
					dataType: 'JSON',
					processData: false,
					contentType: false,
					data:formData,
					success:function(response){
						$("#preLoader").hide();
						if (response.error != undefined && response.error != "") {
							toastr.error(response.error)
							return;
						}
						if (response.message != undefined && response.message != "") {
//							toastr.success(response.message);
							swal.fire({
								title: "License Details Updated.",
								text: "You will be logged out from system as you have updated your compliances!",
								icon: 'warning',
								showCancelButton: true,
							}).then((submit) => {
								window.location.href = "login?logout";
							});
						}
					},
					error:function(error){
						$("#preLoader").hide();
					}
				});
		}
	});
}

function fillCompanyLicenseInfo(data){
	$("#id").val(data.id);
	$("#licenseFile").next('.custom-file-label').addClass("selected").html(data.licenseFileName);
}

function licenseFileDownload(customerId, customerType) {
	
	console.log(customerId);
	var form = document.createElement("form");
	form.setAttribute("method", "GET");
	form.setAttribute("target", "_blank");
	form.setAttribute("action", "getLicenseFile");
	var hiddenField = document.createElement("input");
	hiddenField.setAttribute("type", "hidden");
	hiddenField.setAttribute("name", "loginId");
	hiddenField.setAttribute("value", customerId);
	form.appendChild(hiddenField);
	
	var custType = document.createElement("input");
	custType.setAttribute("type", "hidden");
	custType.setAttribute("name", "customerType");
	custType.setAttribute("value", customerType);
	form.appendChild(custType);
	
	document.body.appendChild(form);
	form.submit();
}

