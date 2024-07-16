$('#editProductForm').validate({
    rules:{
        productId:{
          required: true,
          numbersonly: true,
          greaterThanOne: true
        },

        productName:{
          required: true,
          lettersonly: true,
          minlength: 3
        },

        description:{
          required: true,
          lettersonly: true,
          minlength: 3
        },

        size:{
          required: true
        },
        
        price:{
          required: true,
          twoDecimalPlaces: true
        },

        quantity:{
          required: true,
          numbersonly: true
        }
    },

    messages: {

        productId:{
          required: "*Please input the product ID*",
          numbersonly: "*Numbers only*",
          greaterThanOne:"*Product Id cannot be equal or less than 0*"
        },

        productName:{
          required: "*Please input the product name*",
          lettersonly: "*Letters only are allowed*",
          minlength: "*Must be at least 3 characters*"
        },

        description:{
          required: "*Please input the product description*",
          lettersOptional: "*Letters only are allowed*",
          minlength: "*Must be at least 3 characters*"
        },

        size:{
          required: "*Please input the product size*"
        },

        price:{
          required: "*Please input the product price*",
          twoDecimalPlaces: "*Please enter a valid number with up to two decimal places and must be greater than 0.00*"
        },

        quantity:{
          required: "*Please input the product quantity*",
          numbersonly: "*Integers Only*"
        }
    },

    submitHandler: function(form) {
        var productId = $('#productId').val();
        var productName = $('#productName').val();
    form.submit();
    
    alert(productName + " with " + productId + " Product ID has been updated to inventory.");
    }
});


jQuery.validator.addMethod('lettersonly', function(value, element) {
  return /^[a-zA-Z]+$/.test(value)
});

jQuery.validator.addMethod('numbersonly', function(value, element) {
  return /^[0-9]+$/.test(value)
}); 

jQuery.validator.addMethod('greaterThanOne', function(value, element) {
  var number = parseInt(value, 10);
  if (isNaN(number) || number <= 0) {
    return false; // Invalid: NaN, 0, or negative number
  } else {
    return true; // Valid number
  }
});

$(document).ready(function() {
  $.validator.addMethod('twoDecimalPlaces', function(value, element) {
    return this.optional(element) || /^\d+.\d{2}$/.test(value) && parseFloat(value) > 0;
  }, 'Please enter a valid float number greater than 0.00.');
});

