<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="TaskTracker_2._0.Register" %>

<!DOCTYPE html>
<html>
	<head>
		<!-- Basic Page Info -->
		<meta charset="utf-8" />
		<title>Register</title>

		<!-- Site favicon -->
		<link
			rel="apple-touch-icon"
			sizes="180x180"
			href="vendors/images/apple-touch-icon.png"
		/>
		<link
			rel="icon"
			type="image/png"
			sizes="32x32"
			href="vendors/images/favicon-32x32.png"
		/>
		<link
			rel="icon"
			type="image/png"
			sizes="16x16"
			href="vendors/images/favicon-16x16.png"
		/>

		<!-- Mobile Specific Metas -->
		<meta
			name="viewport"
			content="width=device-width, initial-scale=1, maximum-scale=1"
		/>

		<!-- Google Font -->
		<link
			href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap"
			rel="stylesheet"
		/>
		<!-- CSS -->
		<link rel="stylesheet" type="text/css" href="vendors/styles/core.css" />
		<link
			rel="stylesheet"
			type="text/css"
			href="vendors/styles/icon-font.min.css"
		/>
		<link
			rel="stylesheet"
			type="text/css"
			href="src/plugins/jquery-steps/jquery.steps.css"
		/>
		<link rel="stylesheet" type="text/css" href="vendors/styles/style.css" />
        

	</head>

	<body class="login-page">
	<div class="login-header box-shadow">
        <div
            class="container-fluid d-flex justify-content-between align-items-center">
            <div class="brand-logo">
                <img src="vendors/images/Task Tracker.svg" alt="" style="width: 293px; height: 62px;" />
            </div>
            <div class="login-menu">
                <ul>
                    <li><a href="Login.aspx" class="btn btn-primary btn-lg btn-block text-white">Login</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div
        class="register-page-wrap d-flex align-items-center flex-wrap justify-content-center">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-6 col-lg-7">
                    <img src="vendors/images/register-page-img.png" alt="" />
                </div>
                <div class="col-md-6 col-lg-5">
                    <div class="register-box bg-white box-shadow border-radius-10">
                        <div class="wizard-content">
                            <form class="tab-wizard2 wizard-circle wizard" id="Register" runat="server">
                               
                                    <h5>Basic Account Credentials</h5>
                                    <section>
                                        <div class="form-wrap max-width-600 mx-auto">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">
                                                    Email Address*</label>
                                                <div class="col-sm-8">
                                                    <asp:TextBox ID="Email" TextMode="Email" class="form-control" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Username*</label>
                                                <div class="col-sm-8">
                                                    <asp:TextBox ID="UserName" class="form-control" runat="server"></asp:TextBox>
                                                   
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">Password*</label>
                                                <div class="col-sm-8">
                                                    <asp:TextBox ID="Password" TextMode="Password" class="form-control" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">
                                                    Confirm Password*</label>
                                                <div class="col-sm-8">
                                                    <asp:TextBox ID="ConfirmPassword" TextMode="Password" class="form-control" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                    </section>

                                    <!-- Step 2 -->
                                    <!--https://bbbootstrap.com/snippets/bootstrap-5-verify-otp-validation-form-inputs-78878858-->
                                    <h5>Verify OTP</h5>
                                    <section>
                                        <div class="form-wrap max-width-600 mx-auto">
                                            <div class="container height-100 d-flex justify-content-center align-items-center">
                                                <div class="position-relative">
                                                    <div class="card p-2 text-center">
                                                        <h6>Please enter the one time password
                                                        <br>
                                                            to verify your account</h6>
                                                        <div><span>A code has been sent to</span> <small>*******9897</small> </div>
                                                        <div id="otp" class="inputs d-flex flex-row justify-content-center mt-2">
                                                            <asp:TextBox ID="Otp1" class="m-2 text-center form-control rounded" runat="server" MaxLength="1" placeholder="*"></asp:TextBox>
                                                            <asp:TextBox ID="Otp2" class="m-2 text-center form-control rounded" runat="server" MaxLength="1" placeholder="*"></asp:TextBox>
                                                            <asp:TextBox ID="Otp3" class="m-2 text-center form-control rounded" runat="server" MaxLength="1" placeholder="*"></asp:TextBox>
                                                            <asp:TextBox ID="Otp4" class="m-2 text-center form-control rounded" runat="server" MaxLength="1" placeholder="*"></asp:TextBox>
                                                            <asp:TextBox ID="Otp5" class="m-2 text-center form-control rounded" runat="server" MaxLength="1" placeholder="*"></asp:TextBox>
                                                            <asp:TextBox ID="Otp6" class="m-2 text-center form-control rounded" runat="server" MaxLength="1" placeholder="*"></asp:TextBox>
                                                        </div>
                                                        <div class="mt-4">
                                                            
                                                            <asp:Button ID="SendOtp" class="btn btn-success px-3 validate" runat="server" OnClick="SendOtp_Click" Visible="false" Text="Send Otp"/>
                                                            <asp:Button ID="OTPsubmit" class="btn btn-success px-4 validate" runat="server" Text="Verify OTP" OnClick="OTPsubmit_Click" />
                                                        </div>
                                                    </div>
                                                    <div class="card-2">
                                                        <br />
                                                        <div class="content d-flex justify-content-between align-items-center">
                                                            <span>Didn't get the code?</span>
                                                            <asp:Button ID="ResendOTP" class="btn btn-danger px-3 validate" runat="server" Text="Resend OTP" OnClick="ResendOTP_Click" />
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </section>
                                    <!-- Step 3 -->
                                    <h5>Personal Information</h5>
                                    <section>
                                        <div class="form-wrap max-width-600 mx-auto">
                                            <div class="form-group row">
                                                <label class="col-sm-4 col-form-label">
                                                    Profile Photo*</label>
                                                <div class="col-sm-8">
                                                    <asp:FileUpload ID="FileUpload1" runat="server" />
                                                </div>
                                            </div>
                                            <div class="form-group row align-items-center">
                                                <asp:Image runat="server" ID="PreviewImage" Width="200" Height="200" Style="margin-left: 95px;" />

                                            </div>

                                        </div>
                                    </section>

                                    <!-- Step 4 -->
                                    <h5>Overview Information</h5>
                                    <section>
                                        <div class="form-wrap max-width-600 mx-auto">
                                            <ul class="register-info">
                                                <li>
                                                    <div class="row">
                                                        <div class="col-sm-4 weight-600">Email Address</div>
                                                        <div class="col-sm-8">example@abc.com</div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="row">
                                                        <div class="col-sm-4 weight-600">Username</div>
                                                        <div class="col-sm-8">Example</div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="row">
                                                        <div class="col-sm-4 weight-600">Password</div>
                                                        <div class="col-sm-8">.....000</div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="row">
                                                        <div class="col-sm-4 weight-600">Full Name</div>
                                                        <div class="col-sm-8">john smith</div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="row">
                                                        <div class="col-sm-4 weight-600">Location</div>
                                                        <div class="col-sm-8">123 Example</div>
                                                    </div>
                                                </li>
                                            </ul>
                                            <div class="custom-control custom-checkbox mt-4">
                                                <input
                                                    type="checkbox"
                                                    class="custom-control-input"
                                                    id="customCheck1" />
                                                <label class="custom-control-label" for="customCheck1">
                                                    I have read and agreed to the terms of services and
													privacy policy</label>
                                                <asp:Button ID="RegisterForm" runat="server" Text="Register" OnClick="RegisterForm_Click" Enabled="True" Visible="False" />
                                            </div>
                                        </div>
                                    </section>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- success Popup html Start -->

    <button
        type="button"
        id="success-modal-btn"
        hidden
        data-toggle="modal"
        data-target="#success-modal"
        data-backdrop="static">
        Launch modal
    </button>
    <div
        class="modal fade"
        id="success-modal"
        tabindex="-1"
        role="dialog"
        aria-labelledby="exampleModalCenterTitle"
        aria-hidden="true">
        <div
            class="modal-dialog modal-dialog-centered max-width-400"
            role="document">
            <div class="modal-content">
                <div class="modal-body text-center font-18">
                    <h3 class="mb-20">Account Created!</h3>
                    <div class="mb-30 text-center">
                        <img src="vendors/images/success.png" />
                    </div>

                </div>
                <div class="modal-footer justify-content-center">
                    <a href="Login.aspx" class="btn btn-primary">Done</a>
                </div>
            </div>
        </div>
    </div>
		<!-- js -->
		<script src="vendors/scripts/core.js"></script>
		<script src="vendors/scripts/script.min.js"></script>
		<script src="vendors/scripts/process.js"></script>
		<script src="vendors/scripts/layout-settings.js"></script>
       <%-- <script src="src/scripts/jquery.min.js"></script>--%>
		<script src="src/plugins/jquery-steps/jquery.steps.js"></script>      
		<script src="src/plugins/jQuery-Validation/jquery-validation.min.js"></script>
		<script src="vendors/scripts/steps-setting.js"></script>
        <script>
            $(document).ready(function () {

                $("#<%= FileUpload1.ClientID%>").change(function () {
                    var reader = new FileReader();
                    reader.onload = function (e) {
                        $("#<%= PreviewImage.ClientID%>").fadeIn("slow", function () {
                            $(this).attr("src", e.target.result).fadeIn();
                        })
                    }
                    reader.readAsDataURL($(this)[0].files[0]);
                });
            });
        </script>
	</body>
</html>

