<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewEvents.aspx.cs" Inherits="TaskTracker_2._0.ViewEvents" %>

<%@ Register Src="~/NavSideBarControl/Navsidebar.ascx" TagPrefix="uc1" TagName="Top" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Events</title>
</head>
<body>
    <uc1:Top runat="server" ID="Top" />

    <form id="form1" runat="server">
        <div>

            <div class="main-container">
                <div class="pd-ltr-20 xs-pd-20-10">
                    <div class="min-height-200px">
                        <div class="page-header">
                            <div class="row justify-content-between">
                                <div class="col-md-6 col-sm-12">
                                    <div class="title">
                                        <h4>Events</h4>
                                    </div>
                                    <nav aria-label="breadcrumb" role="navigation">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item">
                                                <a href="Dashboard.aspx">Home</a>
                                            </li>
                                            <li class="breadcrumb-item active" aria-current="page">View Events
										</li>
                                        </ol>
                                    </nav>
                                </div>
                                <div class="col-md-3 col-sm-6 text-right float-right">
                                    <div class="form-group">
										<label>Select Month</label>
                                        <asp:TextBox ID="MonthPicker" class="form-control month-picker" placeholder="Select Month" runat="server"></asp:TextBox>
										<%--<input
											class="form-control month-picker"
											placeholder="Select Month"
											type="text"
										/>--%>
									</div>
                                </div>
                            </div>
                        </div>

                        <!-- Export Datatable start -->
                        <div class="card-box mb-30">
                            <div class="pd-20">
                                <h4 class="text-blue h4">View Events</h4>
                            </div>
                            <div class="pb-20">
                                <table
                                    class="table hover multiple-select-row data-table-export nowrap">
                                    <thead>
                                        <tr>
                                            <th>
                                                <div class="dt-checkbox">
                                                    <input
                                                        type="checkbox"
                                                        name="select_all"
                                                        value="1"
                                                        id="example-select-all" />
                                                    <span class="dt-checkbox-label"></span>
                                                </div>
                                            </th>
                                            <th class="table-plus">Name</th>
                                            <th>Age</th>
                                            <th>Office</th>
                                            <th>Address</th>
                                            <th>Start Date</th>
                                            <th>Salart</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td></td>
                                            <td class="table-plus">Gloria F. Mead</td>
                                            <td>25</td>
                                            <td>Sagittarius</td>
                                            <td>2829 Trainer Avenue Peoria, IL 61602</td>
                                            <td>29-03-2018</td>
                                            <td>$162,700</td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td class="table-plus">Andrea J. Cagle</td>
                                            <td>30</td>
                                            <td>Gemini</td>
                                            <td>1280 Prospect Valley Road Long Beach, CA 90802</td>
                                            <td>29-03-2018</td>
                                            <td>$162,700</td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td class="table-plus">Andrea J. Cagle</td>
                                            <td>20</td>
                                            <td>Gemini</td>
                                            <td>2829 Trainer Avenue Peoria, IL 61602</td>
                                            <td>29-03-2018</td>
                                            <td>$162,700</td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td class="table-plus">Andrea J. Cagle</td>
                                            <td>30</td>
                                            <td>Sagittarius</td>
                                            <td>1280 Prospect Valley Road Long Beach, CA 90802</td>
                                            <td>29-03-2018</td>
                                            <td>$162,700</td>
                                        </tr>
                                     
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <!-- Export Datatable End -->
                    </div>

                </div>
            </div>


        </div>
    </form>
        	<!-- buttons for Export datatable -->
		<script src="src/plugins/datatables/js/dataTables.buttons.min.js"></script>
		<script src="src/plugins/datatables/js/buttons.bootstrap4.min.js"></script>
		<script src="src/plugins/datatables/js/buttons.print.min.js"></script>
		<script src="src/plugins/datatables/js/buttons.html5.min.js"></script>
		<script src="src/plugins/datatables/js/buttons.flash.min.js"></script>
		<script src="src/plugins/datatables/js/pdfmake.min.js"></script>
		<script src="src/plugins/datatables/js/vfs_fonts.js"></script>
		<!-- Datatable Setting js -->
		<script src="vendors/scripts/datatable-setting.js"></script>
</body>
</html>
