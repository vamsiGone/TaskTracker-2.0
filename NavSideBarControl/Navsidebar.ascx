<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Navsidebar.ascx.cs" Inherits="NavSideBarControl.Navsidebar" %>

<!DOCTYPE html>
<html>
<head>
    <!-- Basic Page Info -->
    <meta charset="utf-8" />
    <title>DeskApp - Bootstrap Admin Dashboard HTML Template</title>

    <!-- Site favicon -->
    <link
        rel="apple-touch-icon"
        sizes="180x180"
        href="vendors/images/apple-touch-icon.png" />
    <link
        rel="icon"
        type="image/png"
        sizes="32x32"
        href="vendors/images/favicon-32x32.png" />
    <link
        rel="icon"
        type="image/png"
        sizes="16x16"
        href="vendors/images/favicon-16x16.png" />

    <!-- Mobile Specific Metas -->
    <meta
        name="viewport"
        content="width=device-width, initial-scale=1, maximum-scale=1" />

    <!-- Google Font -->
    <link
        href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap"
        rel="stylesheet" />
    <!-- CSS -->
    <link rel="stylesheet" type="text/css" href="vendors/styles/core.css" />
    <link
        rel="stylesheet"
        type="text/css"
        href="vendors/styles/icon-font.min.css" />
    <link
        rel="stylesheet"
        type="text/css"
        href="src/plugins/datatables/css/dataTables.bootstrap4.min.css" />
    <!-- switchery css -->
    <link
        rel="stylesheet"
        type="text/css"
        href="src/plugins/switchery/switchery.min.css" />
    <link
        rel="stylesheet"
        type="text/css"
        href="src/plugins/datatables/css/responsive.bootstrap4.min.css" />
    <link rel="stylesheet" type="text/css" href="vendors/styles/style.css" />
    <!--js-->
    <script src="src/scripts/jquery.min.js"></script>

    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script
        async
        src="https://www.googletagmanager.com/gtag/js?id=G-GBZ3SGGX85"></script>
    <script
        async
        src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-2973766580778258"
        crossorigin="anonymous"></script>

    <script>

        $(document).ready(function () {
            var pageTitle = $("title").text(); // Get the title of the page
            $(".sidebar-menu li").each(function () {
                var liText = $(this).find(".mtext").text(); // Get the text of the li tag
                if (liText === pageTitle) {
                    $(this).addClass("active"); // Add the "active" class to the matching li tag
                }
            });

          

        });


    </script>

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
<body id="Body">
    <%--<div class="pre-loader">
			<div class="pre-loader-box">
				<div class="loader-logo">
						<img src="vendors/images/Task Tracker.svg" alt="" style ="width: 293px;height: 62px;" />				
				</div>
				<div class="loader-progress" id="progress_div">
					<div class="bar" id="bar1"></div>
				</div>
				<div class="percent" id="percent1">0%</div>
				<div class="loading-text">Loading...</div>
			</div>
		</div>--%>

    <div class="header">
        <div class="header-left">
            <div class="menu-icon bi bi-list"></div>
            <h2 id="AppName" class="text-dark">Task Tracker</h2>
        </div>
        <div class="header-right">
            <div class="dashboard-setting user-notification">
                <input id="Theme"
                    type="checkbox"                   
                    class="switch-btn"
                    data-color="#000000"/>&nbsp;<span id="ThemeMode" class="text-dark">Light</span>&nbsp;&nbsp;
            </div>         
            <div class="user-info-dropdown">
                <div class="dropdown">
                    <a
                        class="dropdown-toggle"
                        href="#"
                        role="button"
                        data-toggle="dropdown">
                        <span class="user-icon">
                            <img src="vendors/images/photo1.jpg" alt="" />
                        </span>
                        <span class="user-name">Ross C. Lopez</span>
                    </a>
                    <div
                        class="dropdown-menu dropdown-menu-right dropdown-menu-icon-list">
                        <a class="dropdown-item" href="Profile.aspx"><i class="dw dw-user1"></i>Profile</a>                        
                        <a class="dropdown-item" href="Login.aspx"><i class="dw dw-logout"></i>Log Out</a>
                    </div>
                </div>
            </div>

        </div>
    </div>  
    <div class="left-side-bar">
        <div class="brand-logo">
          <%--  <img src="vendors/images/Task Tracker.svg" alt="" style="width: 293px; height: 62px;" class="light-logo" />--%>

            <div class="close-sidebar" data-toggle="left-sidebar-close">
                <i class="ion-close-round"></i>
            </div>
        </div>
        <div class="menu-block customscroll">
            <div class="sidebar-menu">
                <ul id="accordion-menu">
                     <li>
                        <div class="dropdown-divider"></div>
                    </li>
                    <li>
                        <a href="Dashboard.aspx" class="dropdown-toggle no-arrow">
                            <span class="micon bi bi-layout-text-window-reverse""></span><span class="mtext">Dashboard</span>
                        </a>
                    </li>
                    <li>
                        <div class="dropdown-divider"></div>
                    </li>
                    <li>
                        <a href="AddTaskEvent.aspx" class="dropdown-toggle no-arrow">
                            <span class="micon bi bi-patch-plus"></span><span class="mtext">Task / Event</span>
                        </a>
                    </li>
                    <li>
                        <div class="dropdown-divider"></div>
                    </li>
                    <li>
                        <a href="ViewTasks.aspx" class="dropdown-toggle no-arrow">
                            <span class="micon bi bi-chat-right-dots"></span><span class="mtext">View Tasks</span>
                        </a>
                    </li>
                    <li>
                        <div class="dropdown-divider"></div>
                    </li>
                    <li>
                        <a href="ViewEvents.aspx" class="dropdown-toggle no-arrow">
                            <span class="micon bi bi-receipt-cutoff"></span><span class="mtext">View Events</span>
                        </a>
                    </li>
                    <li>
                        <div class="dropdown-divider"></div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="mobile-menu-overlay"></div>



    <!-- js -->
    <script src="vendors/scripts/core.js"></script>
    <script src="vendors/scripts/script.min.js"></script>
    <script src="vendors/scripts/process.js"></script>
    <script src="vendors/scripts/layout-settings.js"></script>
    <script src="src/plugins/apexcharts/apexcharts.min.js"></script>
    <script src="src/plugins/datatables/js/jquery.dataTables.min.js"></script>
    <script src="src/plugins/datatables/js/dataTables.bootstrap4.min.js"></script>
    <script src="src/plugins/datatables/js/dataTables.responsive.min.js"></script>
    <script src="src/plugins/datatables/js/responsive.bootstrap4.min.js"></script>
    <script src="vendors/scripts/dashboard.js"></script>

    <!-- switchery js -->
    <script src="src/plugins/switchery/switchery.min.js"></script>
    <script src="vendors/scripts/advanced-components.js"></script>

    <!-- Google Tag Manager (noscript) -->

    <script>
        $(document).ready(function () {
            function ThemeMode() {


                if ($('#Theme').is(':checked')) {
                    // Checkbox is checked, apply dark theme
                    $("#Body").removeClass('header-white sidebar-light active');
                    $("#Body").addClass('header-dark sidebar-dark active');
                    $("#ThemeMode").removeClass('text-dark');
                    $("#ThemeMode").addClass('text-white');
                    $("#ThemeMode").text("Dark");
                    $("#AppName").removeClass('text-dark');
                    $("#AppName").addClass('text-white');
                   

                } else {
                    // Checkbox is unchecked, apply light theme
                    $("#Body").removeClass('header-dark sidebar-dark active');
                    $("#Body").addClass('header-white sidebar-light active');
                    $("#ThemeMode").removeClass('text-white');
                    $("#ThemeMode").addClass('text-dark');
                    $("#ThemeMode").text("Light");
                    $("#AppName").removeClass('text-white');
                    $("#AppName").addClass('text-dark');
                    
                }
            }
            ThemeMode();
            $('#Theme').change(function () {
                ThemeMode();
            });
        });
    </script>
    <noscript>
        <iframe
            src="https://www.googletagmanager.com/ns.html?id=GTM-NXZMQSS"
            height="0"
            width="0"
            style="display: none; visibility: hidden"></iframe>
    </noscript>
    <!-- End Google Tag Manager (noscript) -->
</body>
</html>

