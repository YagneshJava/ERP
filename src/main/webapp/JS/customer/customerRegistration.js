 var addresses;
$( document ).ready(function() {
	getCountry();
	getCurrencyCode();
	$("#wdaRegistrationNo").inputmask({mask: 'AA AAA(A) 99999'});
	$("#mobileNo").inputmask({
		"mask": "9999 999999"
	}); 
	$("#phoneNo").inputmask({
		"mask": "(9999) 999-9999"
	}); 
	KTWizard5.init();
	$("#registredAddress").change(function(){
		if($(this).prop("checked")){
			$("#billingAddressDiv").show();
		}else{
			$("#billingAddressDiv").hide();
		}
	});
	
            $("#searchedAddresses").on('change',function(e){
                var address = addresses.get(parseInt(e.target.value));
                $('#address1').val(address.line_1);
                $('#address2').val(address.line_2 + " " + address.line_3);
                $('#city').val(address.post_town);
                $('#country').val('UK');
               // $('#country').formSelect();
                });
            
            $("#searchedDeliveryAddresses").on('change',function(e){
                var address = addresses.get(parseInt(e.target.value));
                $('#regBillingAddress1').val(address.line_1);
                $('#regBillingAddress2').val(address.line_2 + " " + address.line_3);
                $('#regBillingCity').val(address.post_town);
                $('#regBillingCounty').val('UK');
                //$('#regBillingCountry').formSelect();
                });
                
                $('#kt_dropzone_1').dropzone({
					url: "ff", // Set the url for your upload script location
					paramName: "file", // The name that will be used to transfer the file
					maxFiles: 0,
					maxFilesize: 5, // MB
					addRemoveLinks: true,
					autoQueue: false,
					uploadMultiple: false,
					acceptedFiles: "application/pdf",
				});
				
//				$('#kt_datepicker_1, #kt_datepicker_1_validate').datepicker({
//		            rtl: KTUtil.isRTL(),
//		            todayHighlight: true,
//		            orientation: "bottom left",
//		            templates: arrows
//		        });
		        
		        $('.licenseDate').datepicker({
					todayHighlight: true,
					autoclose: true,
					format: 'dd-M-yyyy',
					yearRange: 4,
					startDate: new Date(),
				});
});
var validator;
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
			 validator = _validations[wizard.getStep() - 1]; // get validator for currnt step
			if (validator) {
				validator.validate().then(function (status) {
					if (status == 'Valid') {
						wizard.goTo(wizard.getNewStep());
						KTUtil.scrollTop();
					}
				});
			}
			return false;
		});
		
		_wizardObj.on('submit', function (wizard) {
			saveRegistration();
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
					tradingName: {
						validators: {
							notEmpty: {
								message: 'Trading name is required'
							}
						}
					},
					registrationNo: {
						validators: {
							notEmpty: {
								message: 'Company Registration No. is required'
							}
						}
					},
					vatRegistrationNo: {
						validators: {
							notEmpty: {
								message: 'VAT Registration No. is required'
							}
						}
					},
					wdaRegistrationNo: {
						validators: {
							notEmpty: {
								message: 'WDA No. is required'
							}
						}
					},
					mobileNo: {
						validators: {
							notEmpty: {
								message: 'Mobile number required.'
							},
							stringLength: {
	                            max: 11,
	                            min: 11,
	                            message: 'Enter 10 digit valid mobile number'
	                        }
						}
					},
					
//					otherEmail: {
//						validators: {
//							notEmpty: {
//								message: 'Contact email address required.'
//							}
//						}
//					},
					
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
		                            if($("#registredAddress").is(":checked") && value.value.trim() === ""){
		                                return false;
		                            }
		                            return true;
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
		                            if($("#registredAddress").is(":checked") && value.value.trim() === ""){
		                                return false;
		                            }
		                            return true;
		                        }
		                    }
						}
					},
//					'addresses[0].city': {
//						validators: {
//							notEmpty: {
//								message: 'City is required'
//							}
//						}
//					},
//					'addresses[1].city': {
//						validators: {
//							 callback: {
//		                        message: 'City is required',
//		                        callback: function(value, validator, $field) {
//		                            if($("#registredAddress").is(":checked")){
//		                                return false;
//		                            }
//		                            return true;
//		                        }
//		                    }
//						}
//					},
					'addresses[0].county': {
						validators: {
							notEmpty: {
								message: 'County is required'
							}
						}
					},
					'addresses[1].county': {
						validators: {
							 callback: {
		                        message: 'County is required',
		                        callback: function(value, validator, $field) {
		                            if($("#registredAddress").is(":checked") && value.value.trim() === ""){
		                                return false;
		                            }
		                            return true;
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
		                            if($("#registredAddress").is(":checked") && value.value.trim() === ""){
		                                return false;
		                            }
		                            return true;
		                        }
		                    }
						}
					}
				},
				plugins: {
					trigger: new FormValidation.plugins.Trigger(),
					// Bootstrap Framework Integration
					bootstrap: new FormValidation.plugins.Bootstrap()
				}
			}
		));
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



function getRegistredAddress(){
    if(document.getElementById('registredAddress').checked){
        $("#regPostcode").val("");
        $("#flatNo").val("");
        $("#houseNo").val("");
        $("#address1").val("");
        $("#address2").val("");
        $("#address3").val("");
        $("#city").val("");   
        $("#county").val("");    
        $("#country").val("");
    }else{
        $("#regPostcode").val($("#regBillingPostcode").val());
        $("#flatNo").val($("#regBillingFlatNo").val());
        $("#houseNo").val($("#regBillingHouseNo").val());
        $("#address1").val($("#regBillingAddress1").val());
        $("#address2").val($("#regBillingAddress2").val());
        $("#address3").val($("#regBillingAddress3").val());
        $("#city").val($("#regBillingCity").val());
        $("#county").val($("#regBillingCounty").val());
        $("#country").val($("#regBillingCountry").val());	
       	validator.validate();
    }
} 
        
function saveRegistration() {
	if($('#kt_dropzone_1')[0].dropzone.files[0] === undefined){
		toastr.warning("Please upload home office license");
		return false;
	}
	if($('#kt_dropzone_1')[0].dropzone.files[0].type !== "application/pdf"){
		toastr.warning("Please upload PDF files only");
		return false;
	}
	var formSerializeArray = $('#customerRegistrationForm').serializeArray();
	formSerializeArray.push( {name:'licenseFile', value:$('#kt_dropzone_1')[0].dropzone.files[0]});
	
	 var fd = new FormData();
	  $.each(formSerializeArray, function(i, field){
	    fd.append(field.name , field.value);
	  });
	  swal.fire({
			    title: "Are you sure?",
			    text: "Do you want save details!",
			    icon: 'question',
				showCancelButton: true,
			  }).then((submit) => {
				 if (submit.isConfirmed) {
					$("#preLoader").show();
					    $.ajax({
					        type : "POST",
					        url :  "customer/register",
					       	enctype: 'multipart/form-data',
							dataType: 'JSON',
							processData: false,
							contentType: false,
					        data :fd,
					        success : function(data){
								$("#preLoader").hide();
					            $('#customerRegistrationForm').trigger("reset");
					            window.location.href = "welcomePendingPage";
					        },error : function(msg){
					           $("#preLoader").hide();
					        }
					    });
				}
			});	
			
}

function getAddress(){
    var postcode=$('#regPostcode').val();
    $.ajax({
        type : "GET",
        url:'https://api.openpostcodes.com/v1/postcodes/' + postcode,
        crossDomain :true,
        dataType: "jsonp",
        data:{
            api_key:'openpostcodes_demo'

            },
        function(data){
                
            //alert(data)
        }	
    }).done(function(data){
        addresses= new Map();
        $("#searchedAddresses").empty().
        append('<option value="" disabled selected>Please select your address</option>');
        //remove(new Option(data[i].description, data[i].description));	
        for(var i=0;i<data.result.length;i++){
                addresses.set(data.result[i].udprn,data.result[i]);
                //$("#searchedAddresses").append('<option value="' + data.result[i].udprn + '" >' + data.result[i].building_number  +" " + data.result[i].building_name + " " + data.result[i].line_1 +'</option>');
                $("#searchedAddresses").append('<option value="' + data.result[i].udprn + '" >' + data.result[i].line_1 +'</option>')
            }
        }).fail(
                function(jqxhr, settings, ex) {
                    alert(2);
                });
    
}
        
function getDeliveryAddress(){
    var postcode=$('#regBillingPostcode').val();
    $.ajax({
        type : "GET",
        url:'https://api.openpostcodes.com/v1/postcodes/' + postcode,
        crossDomain :true,
        dataType: "jsonp",
        data:{
            api_key:'openpostcodes_demo'

            },
        function(data){
                
            //alert(data)
        }	
    }).done(function(data){
        addresses= new Map();
        $("#searchedDeliveryAddresses").empty().
        append('<option value="" disabled selected>Please select your address</option>');
        //remove(new Option(data[i].description, data[i].description));	
        for(var i=0;i<data.result.length;i++){
                addresses.set(data.result[i].udprn,data.result[i]);
                //$("#searchedBillingAddresses").append('<option value="' + data.result[i].udprn + '" >' + data.result[i].building_number  +" " + data.result[i].building_name + " " + data.result[i].line_1 +'</option>');
                $("#searchedDeliveryAddresses").append('<option value="' + data.result[i].udprn + '" >' + data.result[i].line_1 +'</option>')
            }
        }).fail(
                function(jqxhr, settings, ex) {
                    alert(2);
                });
    
}



