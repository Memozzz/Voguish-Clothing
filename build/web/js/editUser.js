$('#editUserForm').validate({
    rules:{
        userId:{
          required: true,
          minlength: 5,
          maxlength: 5
        },
        
        passWord:{
          required: true,
          minlength: 8,
          maxlength: 16,
          passwordNeed: true    
        },
        
         inputCpassword:{
          required: true,
          equalTo: "#passWord"
        },

        firstName:{
          required: true,
          lettersonly: true
        },

        middleName:{
          required: false,
          lettersOptional: true
        },

        lastName:{
          required: true,
          lettersonly: true
        },
        completeAddress:{
            required: true
        },

        birthday:{
            required: true
        },

        cellNumber:{
            required: true,
            numbersonly: true,
            minlength: 11,
            maxlength: 11
        },
        userRole:{
          required: true
        }
    },
    
    messages: {
        userId:{
          required: "*Please enter User ID*",
          minlength: "*Name at least 5 characters*",
          maxlength: "*Name only 5 characters at maximum*"
        },
        
        passWord:{
          required: "*Please enter a password*",
          minlength: "*Password must be at least 8 characters*",
          passwordNeed: "*Password must contain at least 1 uppercase letter, 1 lowercase letter, 1 number, and 1 special character*"
        },
        
        inputCPassword:{
          required: "*Please confirm your password*",
          equalTo: "*Passwords do not match*"
          
        },
        

        firstName:{
          required: "*Please enter your First name*",
          lettersonly: "*Letters only are allowed*"
        },

        middleName:{
          lettersOptional: "*Letters only are allowed*"
        },

        lastName:{
          required: "*Please enter your Last name*",
          lettersonly: "*Letters only are allowed*"
        },
        completeAddress:{
            required: "Please enter your Address"
        },

        birthday:{
            required: "Please input your birthday"
        },

        cellNumber:{
            required: "Please enter your mobile number",
            numbersonly: "Numbers only",
            minlength: "Your number must be 11 digits",
            maxlength: "Your number must only 11 digits at maximum" 
        },
        userRole:{
          required: "*Please choose your role*"
        }
    },
    
    submitHandler: function(form) {
        var userId = $('#userId').val();

        form.submit();
    
        alert(userId + " user has been updated.");
    }
});

jQuery.validator.addMethod('lettersonly', function(value, element) {
  return /^[a-zA-Z]+$/.test(value);
});

jQuery.validator.addMethod('lettersOptional', function(value, element) {
  return this.optional(element) || /^[a-zA-Z]+$/.test(value);
});

jQuery.validator.addMethod('numbersonly', function(value, element) {
  return /^[0-9]+$/.test(value);
});

jQuery.validator.addMethod('passwordNeed', function(value, element) {
  return this.optional(element) || /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&._^#])[A-Za-z\d@$!%*?&._^#  ]{8,}$/.test(value);
});
