$(function(){
	$(".menu-item").removeClass('menu-item-here');
	$("#itemCreationPageLI").addClass('menu-item-here');
	
	$("#newItemModal").on("hidden.bs.modal", function() {
		$('#newItemForm')[0].reset();
		$('#newItemForm').data('bootstrapValidator').resetForm();
	});
	
	validateAndSubmitItemCreationForm();
});



function validateAndSubmitItemCreationForm(){
	$('#newItemForm').bootstrapValidator({
		submitHandler: function(validator, form, submitButton) {
//			saveNewQuotation();
		alert('Form Validation Works Properley.!');
		},
		fields: {
			description: {
				validators: {
					notEmpty: {
						message: 'Description is required and cannot be empty'
					},
				}
			},
			partNo: {
				validators: {
					notEmpty: {
						message: 'Part number is required and cannot be empty'
					}
				}
			},
			hsnCode: {
				validators: {
					notEmpty: {
						message: 'HSN Code is required and cannot be empty'
					}
				}
			},
			gstTax: {
				validators: {
					notEmpty: {
						message: 'GST is required and cannot be empty'
					}
				}
			},
			unit: {
				validators: {
					notEmpty: {
						message: 'Unit is required and cannot be empty'
					}
				}
			},
		}
	});

}