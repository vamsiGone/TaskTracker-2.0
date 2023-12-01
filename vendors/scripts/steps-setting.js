

var form = $(".tab-wizard2");
form.validate({
    errorPlacement: function errorPlacement(error, element) {
        element.before(error);
    },
    rules: {
        UserName: {
            required: true,
            minlength: 3
        },
        Password: {
            required: true,
            minlength: 3

        },
        ConfirmPassword: {
            required: true,
            minlength: 3,
            equalTo: "#Password"
        },
        Email: {
            required: true,
            email: true
        },
        FileUpload1: {
            required: true
        },
        customCheck1: {
            required: true
        }

    },
    messages: {
        UserName: {
            required: "Enter your user name",
            minlength: "Minimum length is 3"
        },
        Password: {
            required: "Enter your password",
            minlength: "Minimum length is 8"
        },
        ConfirmPassword: {
            required: "Enter same as Password",
            minlength: "Minimum length is 8"
        },
       "Email" : {
            required: function () {
                AlertMessage('error', 'Enter the 6-digit OTP', true);
           }
           
        },
        FileUpload1: {
            required: "Upload the Profile Picture",

        },
        customCheck1: {
            required: "Please check the Terms of Services"
        }

    }
});
form.steps({
    headerTag: "h5",
    bodyTag: "section",
    transitionEffect: "fade",
    titleTemplate: '<span class="step">#index#</span> <span class="info">#title#</span>',
    labels: {
        finish: "Register",
        next: "Next",
        previous: "Previous",
    },
    onStepChanging: function (event, currentIndex, newIndex) {
        form.validate().settings.ignore = ":disabled,:hidden";
        return form.valid();
    },
    onStepChanged: function (event, currentIndex, priorIndex) {
        // Check if the current step is the second step (index starts from 0)
        if (currentIndex === 1) {
            // Trigger a click event for the button in the second step
            $('#SendOtp').trigger('click');
        }
    },
    onFinishing: function (event, currentIndex) {
        form.validate().settings.ignore = ":disabled";
        return form.valid();
    },
    onFinished: function (event, currentIndex) {
        form.validate().settings.ignore = ":disabled";
        if (form.valid()) {
            $('#success-modal-btn').trigger('click');
            S('#RegisterForm').trigger('click');
        }
    }
});
