$(".tab-wizard").steps({
	headerTag: "h5",
	bodyTag: "section",
	transitionEffect: "fade",
	titleTemplate: '<span class="step">#index#</span> #title#',
	labels: {
		finish: "Submit"
	},
	onStepChanged: function (event, currentIndex, priorIndex) {
		$('.steps .current').prevAll().addClass('disabled');
	},
	onFinished: function (event, currentIndex) {
		$('#success-modal').modal('show');
	}
});

//$(".tab-wizard2").steps({
//	headerTag: "h5",
//	bodyTag: "section",
//	transitionEffect: "fade",
//	titleTemplate: '<span class="step">#index#</span> <span class="info">#title#</span>',
//	loadingTemplate: '<span class="spinner"></span> #text#',
//	labels: {
//		finish: "Submit",
//		next: "Next",
//		previous: "Previous",
//		loading: "Loading ..."
//	},
//	onStepChanged: function(event, currentIndex, priorIndex) {
//		$('.steps .current').prevAll().addClass('disabled');
//	},
//	onFinished: function(event, currentIndex) {
//		$('#success-modal-btn').trigger('click');
//	}
//});

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
            minlength: 8

        },
        ConfirmPassword: {
            required: true,
            minlength: 8,
            equalTo: "#Password"
        },
        Email: {
            required: true,
            email: true
        },

        //Otp1: {
        //    required: true,
        //    minlength: 1
        //},
        //Otp2: {
        //    required: true,
        //    minlength: 1
        //},
        //Otp3: {
        //    required: true,
        //    minlength: 1
        //},
        //Otp4: {
        //    required: true,
        //    minlength: 1
        //},
        //Otp5: {
        //    required: true,
        //    minlength: 1
        //},

        //Otp6: {
        //    required: true,
        //    minlength: 1
        //},
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
                toastr.error('email field is required');
            }
        },
        //Otp1: {
        //    required: "Enter 6-digit OTP "
        //},
        //Otp2: {
        //    required: "Enter 6-digit OTP "
        //},
        //Otp3: {
        //    required: "Enter 6-digit OTP "
        //},
        //Otp4: {
        //    required: "Enter 6-digit OTP "
        //},
        //Otp5: {
        //    required: "Enter 6-digit OTP "
        //},
        //Otp6: {
        //    required: "Enter 6-digit OTP "
        //},

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
        finish: "Submit",
        next: "Next",
        previous: "Previous",
    },
    onStepChanging: function (event, currentIndex, newIndex) {
        form.validate().settings.ignore = ":disabled,:hidden";
        return form.valid();
    },
    onFinishing: function (event, currentIndex) {
        form.validate().settings.ignore = ":disabled";
        return form.valid();
    },
    onFinished: function (event, currentIndex) {
        $('#success-modal-btn').trigger('click');
    }
});