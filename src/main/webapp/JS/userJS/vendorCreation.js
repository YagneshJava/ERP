"use strict";

$(document).ready(function() {
	$(".menu-item").removeClass('menu-item-here');
	$("#vendorCreationPageLI").addClass('menu-item-here');
	vendorValidation.init();
	$('#viewCustomerListModal').on('shown.bs.modal', function(e) {
		console.log('Opened');
	});

	$("#vendorName").autocomplete({
		source: function(request, response) {
			$.ui.autocomplete.prototype._renderMenu = function(ul, items) {
				var self = this;
				$.each(items, function(index, item) {
					self._renderItem(ul, item);
				});
			};
			$.getJSON("searchParty", { query: $.trim($(this.element).val()) }, response);
		},
		position: { offset: '-10 4' },
		minLength: 3,
		focus: function(event, ui) {
			$("#vendorName").val(ui.item.customerName);
			$(".ui-menu-item").removeClass('tt-cursor');
			$(".ui-state-active").parent().addClass('tt-cursor');
			return false;
		},
		select: function(event, ui) {
			$("#vendorName").val(ui.item.customerName);

			loadPartyDetails(ui.item);
			return false;
		}
	}).data("ui-autocomplete")._renderItem = function(ul, item) {
		return $("<li></li>").data("ui-autocomplete-item", item)
			.append("<table><tr><td style='width: 270px;'>" + item.customerName + "</td><td>" + item.partyType + "</td></tr></table>")
			.appendTo(ul);
	};
});

var vendorValidation = function() {
	// Base elements
	var wizardEl;
	var formEl;
	var wizardObj;
	var validations = [];

	// Private functions
	var initWizard = function() {
		// Initialize form wizard
		wizardObj = new KTWizard(wizardEl, {
			startStep: 1, // initial active step number
			clickableSteps: true // to make steps clickable this set value true and add data-wizard-clickable="true" in HTML for class="wizard" element
		});

		// Validation before going to next page
		wizardObj.on('change', function(wizard) {
			if (wizard.getStep() > wizard.getNewStep()) {
				return; // Skip if stepped back
			}

			// Validate form before change wizard step
			var validator = validations[wizard.getStep() - 1]; // get validator for currnt step

			if (validator) {
				validator.validate().then(function(status) {
					if (status == 'Valid') {
						wizard.goTo(wizard.getNewStep());

						KTUtil.scrollTop();
					} else {
						Swal.fire({
							text: "Sorry, looks like there are some errors detected, please try again.",
							icon: "error",
							buttonsStyling: false,
							confirmButtonText: "Ok, got it!",
							customClass: {
								confirmButton: "btn font-weight-bold btn-light"
							}
						}).then(function() {
							KTUtil.scrollTop();
						});
					}
				});
			}

			return false;  // Do not change wizard step, further action will be handled by he validator
		});

		// Change event
		wizardObj.on('changed', function(wizard) {
			KTUtil.scrollTop();
		});

		// Submit event
		wizardObj.on('submit', function(wizard) {
			var validator = validations[wizard.getStep() - 1]; // get validator for currnt step

			if (validator) {
				validator.validate().then(function(status) {
					if (status !== 'Valid') {

						Swal.fire({
							text: "Sorry, looks like there are some errors detected, please try again.",
							icon: "error",
							buttonsStyling: false,
							confirmButtonText: "Ok, got it!",
							customClass: {
								confirmButton: "btn font-weight-bold btn-light"
							}
						}).then(function() {
							KTUtil.scrollTop();
						});
						return false;
					}
				});
			}

			Swal.fire({
				text: "All is good! Please confirm the form submission.",
				icon: "success",
				showCancelButton: true,
				buttonsStyling: false,
				confirmButtonText: "Yes, submit!",
				cancelButtonText: "No, cancel",
				customClass: {
					confirmButton: "btn font-weight-bold btn-primary",
					cancelButton: "btn font-weight-bold btn-default"
				}
			}).then(function(result) {
				if (result.value) {
					$("#preLoader").show();
					$.ajax({
						url: "saveUpdateVendorCustData",
						data: $('#vendorCreationForm').serialize(),
						type: "POST",
						dataType: 'JSON',
						//						secureuri: false,
						success: function(data) {
							$("#preLoader").hide();
							$('#vendorCreationForm')[0].reset();
							console.log("Response is " + data);
							Swal.fire({
								text: "Party created successfully.",
								icon: "success",
								buttonsStyling: true,
								confirmButtonText: "Okay",
								customClass: {
									confirmButton: "btn font-weight-bold btn-success",
								}
							}).then(function(result) {
								location.reload();
							});

						}, error: function(data) {
							$("#preLoader").hide();
							alert(data);
						}
					}); // Submit form
				} else if (result.dismiss === 'cancel') {
					Swal.fire({
						text: "Your form has not been submitted!.",
						icon: "error",
						buttonsStyling: false,
						confirmButtonText: "Ok, got it!",
						customClass: {
							confirmButton: "btn font-weight-bold btn-primary",
						}
					});
				}
			});
		});

	}

	var initValidation = function() {
		// Init form validation rules. For more info check the FormValidation plugin's official documentation:https://formvalidation.io/
		// Step 1
		validations.push(FormValidation.formValidation(
			formEl,
			{
				fields: {
					userType: {
						validators: {
							notEmpty: {
								message: 'User type is required'
							}
						}
					},
					vendorName: {
						validators: {
							notEmpty: {
								message: 'Supplier name is required'
							}
						}
					},
					gst: {
						validators: {
							notEmpty: {
								message: 'GST Number is required'
							}
						}
					},
					pan: {
						validators: {
							notEmpty: {
								message: 'PAN Number is required'
							}
						}
					},
					mobileNumber: {
						validators: {
							notEmpty: {
								message: 'Mobile is required'
							},
							digits: {
								message: 'Only numbers is allowed'
							},
							stringLength: {
								max: 10,
								message: 'Only 10 numbers is allowed'
							}
						}
					},
					email: {
						validators: {
							notEmpty: {
								message: 'Email is required'
							},
							emailAddress: {
								message: 'The value is not a valid email address'
							}
						}
					}
				},
				plugins: {
					trigger: new FormValidation.plugins.Trigger(),
					// Bootstrap Framework Integration
					bootstrap: new FormValidation.plugins.Bootstrap({
						//eleInvalidClass: '',
						eleValidClass: '',
					})
				}
			}
		));

		// Step 2
		validations.push(FormValidation.formValidation(
			formEl,
			{
				fields: {
					address1: {
						validators: {
							notEmpty: {
								message: 'Address is required'
							}
						}
					},
					postCode: {
						validators: {
							notEmpty: {
								message: 'Postcode is required'
							}
						}
					},
					city: {
						validators: {
							notEmpty: {
								message: 'City is required'
							}
						}
					},
					state: {
						validators: {
							notEmpty: {
								message: 'State is required'
							}
						}
					},
					country: {
						validators: {
							notEmpty: {
								message: 'Country is required'
							}
						}
					}
				},
				plugins: {
					trigger: new FormValidation.plugins.Trigger(),
					// Bootstrap Framework Integration
					bootstrap: new FormValidation.plugins.Bootstrap({
						//eleInvalidClass: '',
						eleValidClass: '',
					})
				}
			}
		));

		// Step 3
		//		validations.push(FormValidation.formValidation(
		//			formEl,
		//			{
		//				fields: {
		//					bankName: {
		//						validators: {
		//							notEmpty: {
		//								message: 'Bank name is required'
		//							}
		//						}
		//					},
		//					accountNumber: {
		//						validators: {
		//							notEmpty: {
		//								message: 'Account number is required'
		//							}
		//						}
		//					},
		//					ifsc: {
		//						validators: {
		//							notEmpty: {
		//								message: 'IFSC code is required'
		//							}
		//						}
		//					}
		//				},
		//				plugins: {
		//					trigger: new FormValidation.plugins.Trigger(),
		//					// Bootstrap Framework Integration
		//					bootstrap: new FormValidation.plugins.Bootstrap({
		//						//eleInvalidClass: '',
		//						eleValidClass: '',
		//					})
		//				}
		//			}
		//		));
	}

	return {
		// public functions
		init: function() {
			wizardEl = KTUtil.getById('vendorCreationWizard');
			formEl = KTUtil.getById('vendorCreationForm');

			initWizard();
			initValidation();
		}
	};
}();







function loadPartyDetails(cust) {


	$("#preLoader").show();
	$.ajax({
		url: "getCustomerAddressDetails",
		data: {
			"customerId": cust.customerId
		},
		type: "POST",
		dataType: 'JSON',
		success: function(data) {
			$("#preLoader").hide();
			if(data.error != undefined){
				alert(data.error);
			}
			
			populatePartyData(data, cust);
			
		}, error: function(data) {
			$("#preLoader").hide();
			console.log("Error is " + data);
		}
	});

}

function populatePartyData(data, customerInfo) {

	$('#userType').val(customerInfo.partyType);
	$('#vendorId').val(customerInfo.customerId);
	$('#vendorName').val(customerInfo.customerName);
	$('#gst').val(customerInfo.gst);
	$('#pan').val(customerInfo.pan);
	$('#mobileNumber').val(customerInfo.mobileNumber);
	$('#email').val(customerInfo.email);
	$('#address1').val(data.adddressDetails.address1);
	$('#address2').val(data.adddressDetails.address2);
	$('#postCode').val(data.adddressDetails.pinCode);
	$('#city').val(data.adddressDetails.city);
	$('#state').val(data.adddressDetails.state);
	$('#country').val(data.adddressDetails.country);
	$('#bankName').val(data.bankDetails.bankName);
	$('#accountNumber').val(data.bankDetails.accountNumber);
	$('#branch').val(data.bankDetails.branch);
	$('#ifsc').val(data.bankDetails.ifsc);

}