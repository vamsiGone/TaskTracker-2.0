﻿
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TaskTracker_2._0.Login" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<!-- Basic Page Info -->
		<meta charset="utf-8" />
		<title>Task Tracker</title>

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
		<link rel="stylesheet" type="text/css" href="vendors/styles/style.css" />

		<!-- Global site tag (gtag.js) - Google Analytics -->
		<script
			async
			src="https://www.googletagmanager.com/gtag/js?id=G-GBZ3SGGX85"
		></script>
		<script
			async
			src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-2973766580778258"
			crossorigin="anonymous"
		></script>
		<script>
			window.dataLayer = window.dataLayer || [];
			function gtag() {
				dataLayer.push(arguments);
			}
			gtag("js", new Date());

			gtag("config", "G-GBZ3SGGX85");
		</script>
		<!-- Google Tag Manager -->
		<script>
			(function (w, d, s, l, i) {
				w[l] = w[l] || [];
				w[l].push({ "gtm.start": new Date().getTime(), event: "gtm.js" });
				var f = d.getElementsByTagName(s)[0],
					j = d.createElement(s),
					dl = l != "dataLayer" ? "&l=" + l : "";
				j.async = true;
				j.src = "https://www.googletagmanager.com/gtm.js?id=" + i + dl;
				f.parentNode.insertBefore(j, f);
			})(window, document, "script", "dataLayer", "GTM-NXZMQSS");
		</script>
		<!-- End Google Tag Manager -->
	</head>
	<body class="login-page">
	
		<div class="login-header box-shadow">
			<div class="container-fluid d-flex justify-content-between align-items-center">
				<div class="brand-logo">					
						<img src="vendors/images/Task Tracker.svg" alt="" style ="width: 293px;height: 62px;" />				
				</div>
			
			</div>
		</div>
		<div
			class="login-wrap d-flex align-items-center flex-wrap justify-content-center"
		>
			<div class="container">
				<div class="row align-items-center">
					<div class="col-md-6 col-lg-7">
						<img src="vendors/images/login-page-img.png" alt="" />
					</div>
					<div class="col-md-6 col-lg-5">
						<div class="login-box bg-white box-shadow border-radius-10">
							<div class="login-title">
								<h2 class="text-center text-primary">Login To Task Tracker</h2>
							</div>
							
							<form runat="server">
								<div class="select-role">
									<div class="btn-group btn-group-toggle" data-toggle="buttons">
										<label class="btn active">											
											<asp:RadioButton ID="Admin" runat="server" GroupName="options" />  
<%--											<input type="radio" name="options" id="admin" />--%>
											<div class="icon">
												<img
													src="vendors/images/briefcase.svg"
													class="svg"
													alt=""
												/>
											</div>
											<span>I'm</span>
											Manager
										</label>
            
										<label class="btn">
											<asp:RadioButton ID="Users" runat="server" GroupName="options" />  
<%--											<input type="radio" name="options" id="user" />--%>
											<div class="icon">
												<img
													src="vendors/images/person.svg"
													class="svg"
													alt=""
												/>
											</div>
											<span>I'm</span>
											Employee
										</label>
									</div>
								</div>
								<div class="input-group custom">
									<%--<input
										type="text"
										class="form-control form-control-lg"
										placeholder="Username"
									/>--%>
									<asp:TextBox ID="LoginId" CssClass="form-control form-control-lg" placeholder="Username" runat="server"></asp:TextBox>
									<div class="input-group-append custom">
										<span class="input-group-text"
											><i class="icon-copy dw dw-user1"></i
										></span>
									</div>
								</div>
								<div class="input-group custom">
								<asp:TextBox ID="Password" CssClass="form-control form-control-lg" TextMode="Password" placeholder="Password" runat="server"></asp:TextBox>

									<%--<input
										type="password"
										class="form-control form-control-lg"
										placeholder="**********"
									/>--%>
									<div class="input-group-append custom">
										<span class="input-group-text"><i class="dw dw-padlock1"></i></span>
									</div>
								</div>
								<div class="row pb-30">
									<div class="col-6">
										
									</div>
									<div class="col-6">
										<div class="forgot-password">
											<a href="forgotpassword.aspx">Forgot Password?</a>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-12">
										<div class="input-group mb-0">
											<!--
											use code for form submit
											<input class="btn btn-primary btn-lg btn-block" type="submit" value="Sign In">
										-->
											<%--<a
												class="btn btn-primary btn-lg btn-block"
												href="index.html"
												>Sign In</a
											>--%>
											<asp:Button ID="SignIn" runat="server" class="btn btn-primary btn-lg btn-block" Text="Sign In" />
										</div>
										<div
											class="font-16 weight-600 pt-10 pb-10 text-center"
											data-color="#707373"
										>
											OR
										</div>
										<div class="input-group mb-0">
										<a
												class="btn btn-outline-primary btn-lg btn-block"
												href="Register.aspx"
												>Create Account</a
											>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	
		<!-- js -->
		<script src="vendors/scripts/core.js"></script>
		<script src="vendors/scripts/script.min.js"></script>
		<script src="vendors/scripts/process.js"></script>
		<script src="vendors/scripts/layout-settings.js"></script>
		<!-- Google Tag Manager (noscript) -->
		<noscript
			><iframe
				src="https://www.googletagmanager.com/ns.html?id=GTM-NXZMQSS"
				height="0"
				width="0"
				style="display: none; visibility: hidden"
			></iframe
		></noscript>
		<!-- End Google Tag Manager (noscript) -->
	</body>
</html>
