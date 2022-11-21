"use strict";

// Class definition
var KTWizard5 = function() {
	// Base elements
	var _wizardEl;
	var _formEl;
	var _wizardObj;
	var _validations = [];

	// Private functions
	var _initWizard = function() {
		// Initialize form wizard
		_wizardObj = new KTWizard(_wizardEl, {
			startStep: 1, // initial active step number
			clickableSteps: false  // allow step clicking
		});

		_wizardObj.on('change', function(wizard) {
			if (wizard.getStep() > wizard.getNewStep()) {
				return; // Skip if stepped back
			}

			// Validate form before change wizard step
			var validator = _validations[wizard.getStep() - 1]; // get validator for currnt step

			if (validator) {
				validator.validate();
			}
			return false;
		});
	}

	var _initValidation = function() {
		// Init form validation rules. For more info check the FormValidation plugin's official documentation:https://formvalidation.io/
		// Step 1
		_validations.push(FormValidation.formValidation(
			_formEl,
			{
				fields: {
					regCompanyName: {
						validators: {
							notEmpty: {
								message: 'Company name is required'
							}
						}
					},
					regTradingName: {
						validators: {
							notEmpty: {
								message: 'Trading name is required'
							}
						}
					},
					regRegistrationNo: {
						validators: {
							notEmpty: {
								message: 'Company Registration No. is required'
							}
						}
					},
					regVATRegistrationNo: {
						validators: {
							notEmpty: {
								message: 'VAT Registration No. is required'
							}
						}
					},
					reggphcRegistrationNo: {
						validators: {
							notEmpty: {
								message: 'WDA No. is required'
							}
						}
					},
					currencyCode: {
						validators: {
							notEmpty: {
								message: 'Currency Code is required'
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
		_validations.push(FormValidation.formValidation(
			_formEl,
			{
				fields: {
					'addresses[0].zipCode': {
						validators: {
							notEmpty: {
								message: 'Zipcode is required'
							}
						}
					},
					'addresses[1].zipCode': {
						validators: {
							 callback: {
		                        message: 'Zipcode is required',
		                        callback: function(value, validator, $field) {
		                            if($("#registredAddress").is(":checked")){
		                                return true;
		                            }
		                            return false;
		                        }
		                    }
						}
					},
					'addresses[0].address1': {
						validators: {
							notEmpty: {
								message: 'Address Line 1 is required'
							}
						}
					},
					'addresses[1].address1': {
						validators: {
							 callback: {
		                        message: 'Address Line 1 is require',
		                        callback: function(value, validator, $field) {
		                            if($("#registredAddress").is(":checked")){
		                                return true;
		                            }
		                            return false;
		                        }
		                    }
						}
					},
					'addresses[0].city': {
						validators: {
							notEmpty: {
								message: 'City is required'
							}
						}
					},
					'addresses[1].city': {
						validators: {
							 callback: {
		                        message: 'City is required',
		                        callback: function(value, validator, $field) {
		                            if($("#registredAddress").is(":checked")){
		                                return true;
		                            }
		                            return false;
		                        }
		                    }
						}
					},
					'addresses[0].state': {
						validators: {
							notEmpty: {
								message: 'State is required'
							}
						}
					},
					'addresses[1].state': {
						validators: {
							 callback: {
		                        message: 'State is required',
		                        callback: function(value, validator, $field) {
		                            if($("#registredAddress").is(":checked")){
		                                return true;
		                            }
		                            return false;
		                        }
		                    }
						}
					},
					'addresses[0].country': {
						validators: {
							notEmpty: {
								message: 'Country is required'
							}
						}
					},
					'addresses[1].country': {
						validators: {
							 callback: {
		                        message: 'Country is required',
		                        callback: function(value, validator, $field) {
		                            if($("#registredAddress").is(":checked")){
		                                return true;
		                            }
		                            return false;
		                        }
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
			}).on('core.form.valid', function() {
		       		 submitUserDetails();
		        })
		    )
	}

	return {
		// public functions
		init: function() {
			_wizardEl = KTUtil.getById('kt_wizard');
			_formEl = KTUtil.getById('customerRegistrationForm');

			_initWizard();
			_initValidation();
		}
	};
}();

jQuery(document).ready(function() {
	KTWizard5.init();
});
