<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewTasks.aspx.cs" Inherits="TaskTracker_2._0.ViewTasks" %>
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
			href="vendors/styles/icon-font.min.css"
		/>
		<link
			rel="stylesheet"
			type="text/css"
			href="src/plugins/datatables/css/dataTables.bootstrap4.min.css"
		/>
		<link
			rel="stylesheet"
			type="text/css"
			href="src/plugins/datatables/css/responsive.bootstrap4.min.css"
		/>
		<link rel="stylesheet" type="text/css" href="vendors/styles/style.css" />
</head>
<body>
	 <uc1:Top runat="server" ID="Top" />
   <form id="form1" runat="server">
        <div>
			
		<div class="main-container">
			<div class="pd-ltr-20 xs-pd-20-10">
				<div class="min-height-200px">
					<div class="page-header">
						<div class="row">
							<div class="col-md-6 col-sm-12">
								<div class="title">
									<h4>DataTable</h4>
								</div>
								<nav aria-label="breadcrumb" role="navigation">
									<ol class="breadcrumb">
										<li class="breadcrumb-item">
											<a href="index.html">Home</a>
										</li>
										<li class="breadcrumb-item active" aria-current="page">
											DataTable
										</li>
									</ol>
								</nav>
							</div>
							<div class="col-md-6 col-sm-12 text-right">
								<div class="dropdown">
									<a
										class="btn btn-primary dropdown-toggle"
										href="#"
										role="button"
										data-toggle="dropdown"
									>
										January 2018
									</a>
									<div class="dropdown-menu dropdown-menu-right">
										<a class="dropdown-item" href="#">Export List</a>
										<a class="dropdown-item" href="#">Policies</a>
										<a class="dropdown-item" href="#">View Assets</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				
					<!-- Export Datatable start -->
					<div class="card-box mb-30">
						<div class="pd-20">
							<h4 class="text-blue h4">Data Table with Export Buttons</h4>
						</div>
						<div class="pb-20">
							<table
								class="table hover multiple-select-row data-table-export nowrap"
							>
								<thead>
									<tr>
										<th>
											<div class="dt-checkbox">
												<input
													type="checkbox"
													name="select_all"
													value="1"
													id="example-select-all"
												/>
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
									<tr>
										<td></td>
										<td class="table-plus">Andrea J. Cagle</td>
										<td>25</td>
										<td>Gemini</td>
										<td>2829 Trainer Avenue Peoria, IL 61602</td>
										<td>29-03-2018</td>
										<td>$162,700</td>
									</tr>
									<tr>
										<td></td>
										<td class="table-plus">Andrea J. Cagle</td>
										<td>20</td>
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
	<!-- js -->
		<script src="vendors/scripts/core.js"></script>
		<script src="vendors/scripts/script.min.js"></script>
		<script src="vendors/scripts/process.js"></script>
		<script src="vendors/scripts/layout-settings.js"></script>
		<script src="src/plugins/datatables/js/jquery.dataTables.min.js"></script>
		<script src="src/plugins/datatables/js/dataTables.bootstrap4.min.js"></script>
		<script src="src/plugins/datatables/js/dataTables.responsive.min.js"></script>
		<script src="src/plugins/datatables/js/responsive.bootstrap4.min.js"></script>
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
