﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="TaskTracker_2._0.Profile" %>

<%@ Register Src="~/NavSideBarControl/Navsidebar.ascx" TagPrefix="uc1" TagName="Top" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
                                <div class="col-md-12 col-sm-12">
                                    <div class="title">
                                        <h4>Profile</h4>
                                    </div>
                                    <nav aria-label="breadcrumb" role="navigation">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item">
                                                <a href="index.html">Home</a>
                                            </li>
                                            <li class="breadcrumb-item active" aria-current="page">Profile
										</li>
                                        </ol>
                                    </nav>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12 mb-30">
                                <div class="pd-20 card-box height-50-p">
                                    <div class="profile-photo">
                                        <a
                                            href="modal"
                                            data-toggle="modal"
                                            data-target="#modal"
                                            class="edit-avatar"><i class="fa fa-pencil"></i></a>
                                        <img
                                            src="vendors/images/photo1.jpg"
                                            alt=""
                                            class="avatar-photo" />
                                        <div
                                            class="modal fade"
                                            id="modal"
                                            tabindex="-1"
                                            role="dialog"
                                            aria-labelledby="modalLabel"
                                            aria-hidden="true">
                                            <div
                                                class="modal-dialog modal-dialog-centered"
                                                role="document">
                                                <div class="modal-content">
                                                    <div class="modal-body pd-5">
                                                        <div class="img-container">
                                                            <img
                                                                id="image"
                                                                src="vendors/images/photo2.jpg"
                                                                alt="Picture" />
                                                        </div>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <input
                                                            type="submit"
                                                            value="Update"
                                                            class="btn btn-primary" />
                                                        <button
                                                            type="button"
                                                            class="btn btn-default"
                                                            data-dismiss="modal">
                                                            Close
												
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <h5 class="text-center h5 mb-0">Ross C. Lopez</h5>
                                    <p class="text-center text-muted font-14">
                                        Lorem ipsum dolor sit amet
							
                                    </p>
                                    <div class="profile-info">
                                        <h5 class="mb-20 h5 text-blue">Contact Information</h5>
                                        <ul>
                                            <li>
                                                <span>Email Address:</span>
                                                FerdinandMChilds@test.com
										</li>
                                            <li>
                                                <span>Phone Number:</span>
                                                619-229-0054
										</li>
                                            <li>
                                                <span>Country:</span>
                                                America
										</li>
                                            <li>
                                                <span>Address:</span>
                                                1807 Holden Street<br />
                                                San Diego, CA 92115
										</li>
                                        </ul>
                                    </div>

                                </div>
                            </div>
                            <div class="col-xl-8 col-lg-8 col-md-8 col-sm-12 mb-30">
                                <div class="card-box height-100-p overflow-hidden">
                                    <div class="profile-tab height-100-p">
                                        <div class="tab height-100-p">
                                            <ul class="nav nav-tabs customtab" role="tablist">
                                                <li class="nav-item">
                                                    <a
                                                        class="nav-link active"
                                                        data-toggle="tab"
                                                        href="#timeline"
                                                        role="tab">Timeline</a>
                                                </li>

                                                <li class="nav-item">
                                                    <a
                                                        class="nav-link"
                                                        data-toggle="tab"
                                                        href="#setting"
                                                        role="tab">Settings</a>
                                                </li>
                                            </ul>
                                            <div class="tab-content">
                                                <!-- Timeline Tab start -->
                                                <div
                                                    class="tab-pane fade show active"
                                                    id="timeline"
                                                    role="tabpanel">
                                                    <div class="pd-20">
                                                        <div class="profile-timeline">
                                                            <div class="timeline-month">
                                                                <h5>August, 2020</h5>
                                                            </div>
                                                            <div class="profile-timeline-list">
                                                                <ul>
                                                                    <li>
                                                                        <div class="date">12 Aug</div>
                                                                        <div class="task-name">
                                                                            <i class="ion-android-alarm-clock"></i>Task
																		Added
																
                                                                        </div>
                                                                        <p>
                                                                            Lorem ipsum dolor sit amet, consectetur
																		adipisicing elit.
																
                                                                        </p>
                                                                        <div class="task-time">09:30 am</div>
                                                                    </li>
                                                                    <li>
                                                                        <div class="date">10 Aug</div>
                                                                        <div class="task-name">
                                                                            <i class="ion-ios-chatboxes"></i>Task Added
																
                                                                        </div>
                                                                        <p>
                                                                            Lorem ipsum dolor sit amet, consectetur
																		adipisicing elit.
																
                                                                        </p>
                                                                        <div class="task-time">09:30 am</div>
                                                                    </li>
                                                                    <li>
                                                                        <div class="date">10 Aug</div>
                                                                        <div class="task-name">
                                                                            <i class="ion-ios-clock"></i>Event Added
																
                                                                        </div>
                                                                        <p>
                                                                            Lorem ipsum dolor sit amet, consectetur
																		adipisicing elit.
																
                                                                        </p>
                                                                        <div class="task-time">09:30 am</div>
                                                                    </li>
                                                                    <li>
                                                                        <div class="date">10 Aug</div>
                                                                        <div class="task-name">
                                                                            <i class="ion-ios-clock"></i>Event Added
																
                                                                        </div>
                                                                        <p>
                                                                            Lorem ipsum dolor sit amet, consectetur
																		adipisicing elit.
																
                                                                        </p>
                                                                        <div class="task-time">09:30 am</div>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                            <div class="timeline-month">
                                                                <h5>July, 2020</h5>
                                                            </div>
                                                            <div class="profile-timeline-list">
                                                                <ul>
                                                                    <li>
                                                                        <div class="date">12 July</div>
                                                                        <div class="task-name">
                                                                            <i class="ion-android-alarm-clock"></i>Task
																		Added
																
                                                                        </div>
                                                                        <p>
                                                                            Lorem ipsum dolor sit amet, consectetur
																		adipisicing elit.
																
                                                                        </p>
                                                                        <div class="task-time">09:30 am</div>
                                                                    </li>
                                                                    <li>
                                                                        <div class="date">10 July</div>
                                                                        <div class="task-name">
                                                                            <i class="ion-ios-chatboxes"></i>Task Added
																
                                                                        </div>
                                                                        <p>
                                                                            Lorem ipsum dolor sit amet, consectetur
																		adipisicing elit.
																
                                                                        </p>
                                                                        <div class="task-time">09:30 am</div>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                            <div class="timeline-month">
                                                                <h5>June, 2020</h5>
                                                            </div>
                                                            <div class="profile-timeline-list">
                                                                <ul>
                                                                    <li>
                                                                        <div class="date">12 June</div>
                                                                        <div class="task-name">
                                                                            <i class="ion-android-alarm-clock"></i>Task
																		Added
																
                                                                        </div>
                                                                        <p>
                                                                            Lorem ipsum dolor sit amet, consectetur
																		adipisicing elit.
																
                                                                        </p>
                                                                        <div class="task-time">09:30 am</div>
                                                                    </li>
                                                                    <li>
                                                                        <div class="date">10 June</div>
                                                                        <div class="task-name">
                                                                            <i class="ion-ios-chatboxes"></i>Task Added
																
                                                                        </div>
                                                                        <p>
                                                                            Lorem ipsum dolor sit amet, consectetur
																		adipisicing elit.
																
                                                                        </p>
                                                                        <div class="task-time">09:30 am</div>
                                                                    </li>
                                                                    <li>
                                                                        <div class="date">10 June</div>
                                                                        <div class="task-name">
                                                                            <i class="ion-ios-clock"></i>Event Added
																
                                                                        </div>
                                                                        <p>
                                                                            Lorem ipsum dolor sit amet, consectetur
																		adipisicing elit.
																
                                                                        </p>
                                                                        <div class="task-time">09:30 am</div>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- Timeline Tab End -->

                                                <!-- Setting Tab start -->
                                                <div
                                                    class="tab-pane fade height-100-p"
                                                    id="setting"
                                                    role="tabpanel">
                                                    <div class="profile-setting">

                                                        <ul class="profile-edit-list row">
                                                            <li class="weight-500 col-md-12">
                                                                <h4 class="text-blue h5 mb-20">Edit Your Personal Settings
																</h4>
                                                                <div class="row">
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label>Full Name</label>
                                                                            <input
                                                                                class="form-control form-control-lg"
                                                                                type="text" />
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label>Title</label>
                                                                            <input
                                                                                class="form-control form-control-lg"
                                                                                type="text" />
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label>Email</label>
                                                                            <input
                                                                                class="form-control form-control-lg"
                                                                                type="email" />
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label>Country</label>
                                                                            <select
                                                                                class="selectpicker form-control form-control-lg"
                                                                                data-style="btn-outline-secondary btn-lg"
                                                                                title="Not Chosen">
                                                                                <option>United States</option>
                                                                                <option>India</option>
                                                                                <option>United Kingdom</option>
                                                                            </select>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label>Phone Number</label>
                                                                            <input
                                                                                class="form-control form-control-lg"
                                                                                type="text" />
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label>Address</label>
                                                                            <textarea class="form-control"></textarea>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <div
                                                                                class="custom-control custom-checkbox mb-5">
                                                                                <input
                                                                                    type="checkbox"
                                                                                    class="custom-control-input"
                                                                                    id="customCheck1-1" />
                                                                                <label
                                                                                    class="custom-control-label weight-400"
                                                                                    for="customCheck1-1">
                                                                                    I agree to receive notification
																			emails</label>
                                                                            </div>
                                                                            <div class="form-group mb-0 justify-content-center align-items-center">
                                                                                <input
                                                                                    type="submit"
                                                                                    class="btn btn-primary"
                                                                                    value="Update Information" />
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </li>

                                                        </ul>

                                                    </div>
                                                </div>
                                                <!-- Setting Tab End -->
                                            </div>
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
</body>
</html>
