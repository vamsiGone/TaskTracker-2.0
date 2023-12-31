﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddTaskEvent.aspx.cs" Inherits="TaskTracker_2._0.AddTaskEvent" %>

<%@ Register Src="~/NavSideBarControl/Navsidebar.ascx" TagPrefix="uc1" TagName="Top" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!-- CSS -->
    <link rel="stylesheet" type="text/css" href="vendors/styles/core.css" />
    <link
        rel="stylesheet"
        type="text/css"
        href="vendors/styles/icon-font.min.css" />
    <link
        rel="stylesheet"
        type="text/css"
        href="src/plugins/fullcalendar/fullcalendar.css" />
    <link rel="stylesheet" type="text/css" href="vendors/styles/style.css" />
</head>
<body>

    <!-- events add and display will done in jquery check calender-setting.js for more clarity -->
    <uc1:Top runat="server" ID="Top" />

    <form id="form1" runat="server">
        <div>
            <div class="main-container">
                <div class="pd-ltr-20 xs-pd-20-10">
                    <div class="min-height-200px">
                        <div class="page-header">
                            <div class="row">
                                <div class="col-md-12 col-sm-12">
                                    <div class="title">
                                        <h4>Schedule</h4>
                                    </div>
                                    <nav aria-label="breadcrumb" role="navigation">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item">
                                                <a href="Dashboard.aspx">Home</a>
                                            </li>
                                            <li class="breadcrumb-item active" aria-current="page">Task / Event
                                            </li>
                                        </ol>
                                    </nav>
                                </div>
                            </div>
                        </div>
                        <div class="pd-20 card-box mb-30">
                            <div class="calendar-wrap">
                                <div id="calendar"></div>
                            </div>
                            <!-- calendar modal -->
                            <div
                                id="modal-view-event"
                                class="modal modal-top fade calendar-modal">
                                <div class="modal-dialog modal-dialog-centered">
                                    <div class="modal-content">
                                        <div class="modal-body">
                                            <h4 class="h4">
                                                <span class="event-icon weight-400 mr-3"></span><span class="event-title"></span>
                                            </h4>
                                            <div class="event-body"></div>
                                        </div>
                                        <div class="modal-footer">
                                            <button
                                                type="button"
                                                class="btn btn-primary"
                                                data-dismiss="modal">
                                                Close
									
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div
                                id="modal-view-event-add"
                                class="modal modal-top fade calendar-modal">
                                <div class="modal-dialog modal-dialog-centered">
                                    <div class="modal-content">

                                        <div class="modal-body">
                                            <h4 class="text-blue h4 mb-10">Add Event Detail</h4>
                                            <div class="form-group row align-items-center">
                                                <label class="col-sm-4 col-form-label">Select<br /> Event / Task</label>
                                                <div class="col-sm-8">
                                                    <div
                                                        class="custom-control custom-radio custom-control-inline pb-0">
                                                        <input
                                                            type="radio"
                                                            id="task"
                                                            name="addtask"
                                                            class="custom-control-input" />
                                                        <label class="custom-control-label" for="task">
                                                            Task</label>
                                                    </div>
                                                    <div
                                                        class="custom-control custom-radio custom-control-inline pb-0">
                                                        <input
                                                            type="radio"
                                                            id="event"
                                                            name="addtask"
                                                            class="custom-control-input" />
                                                        <label class="custom-control-label" for="event">
                                                            Event</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Event / Task name</label>
                                                <input type="text" class="form-control" name="ename" autocomplete="off"  />
                                            </div>
                                            <div class="form-group">
                                                <label>Event / Task Date & Time</label>
                                                <input
                                                    type="text"
                                                    class="datetimepicker form-control"
                                                    name="edate" autocomplete="off" />
                                            </div>
                                            <div class="form-group">
                                                <label>Event / Task Description</label>
                                                <textarea class="form-control" name="edesc"></textarea>
                                            </div>
                                            <div class="form-group">
                                                <label>Event / Task Color</label>
                                                <select class="form-control" name="ecolor">
                                                    <option value="fc-bg-default">fc-bg-default</option>
                                                    <option value="fc-bg-blue">fc-bg-blue</option>
                                                    <option value="fc-bg-lightgreen">fc-bg-lightgreen
                                                    </option>
                                                    <option value="fc-bg-pinkred">fc-bg-pinkred</option>
                                                    <option value="fc-bg-deepskyblue">fc-bg-deepskyblue
                                                    </option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label>Event / Task Icon</label>
                                                <select class="form-control" name="eicon">
                                                    <option value="circle">circle</option>
                                                    <option value="cog">cog</option>
                                                    <option value="group">group</option>
                                                    <option value="suitcase">suitcase</option>
                                                    <option value="calendar">calendar</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="submit" class="btn btn-primary">
                                                Save
										
                                            </button>
                                            <button
                                                type="button"
                                                class="btn btn-primary"
                                                data-dismiss="modal">
                                                Close
										
                                            </button>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </form>
    <!-- js -->

    <script src="src/plugins/fullcalendar/fullcalendar.min.js"></script>
    <script src="vendors/scripts/calendar-setting.js"></script>
    
    <script type="text/javascript">
        function getEmployees() {
            $.ajax({
                type: "GET",
                url: 'Employee/GetEmpList',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                beforeSend: function () {
                    Show(); // Show loader icon  
                },
                success: function (response) {

                    // Looping over emloyee list and display it  
                    $.each(response, function (index, emp) {
                        $('#output').append('<p>Id: ' + emp.ID + '</p>' +
                            '<p>Id: ' + emp.Name + '</p>');
                    });
                },
                complete: function () {
                    Hide(); // Hide loader icon  
                },
                failure: function (jqXHR, textStatus, errorThrown) {
                    alert("HTTP Status: " + jqXHR.status + "; Error Text: " + jqXHR.responseText); // Display error message  
                }
            }); 
    </script>

</body>
</html>
