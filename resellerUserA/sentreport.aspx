<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sentreport.aspx.cs" Inherits="resellerUserA.sentreport" %>

<%@ Register Src="~/Controls/head.ascx" TagPrefix="uc1" TagName="head" %>

<%@ Register Src="~/Controls/menuTop.ascx" TagPrefix="uc1" TagName="menuTop" %>
<%@ Register Src="~/Controls/sideBar.ascx" TagPrefix="uc1" TagName="sideBar" %>
<%@ Register Src="~/Controls/footer.ascx" TagPrefix="uc1" TagName="footer" %>
<%@ Register Src="~/Controls/footerLinks.ascx" TagPrefix="uc1" TagName="footerLinks" %>
<%@ Register Src="~/Controls/loader.ascx" TagPrefix="uc1" TagName="loader" %>

<uc1:head runat="server" ID="head" />

<title>Sent SMS Report</title>
</head>
<!--end::Head-->
<!--begin::Body-->
<body id="kt_app_body" data-kt-app-header-fixed="true" data-kt-app-header-fixed-mobile="true" data-kt-app-sidebar-enabled="true" data-kt-app-sidebar-fixed="true" data-kt-app-sidebar-push-toolbar="true" data-kt-app-sidebar-push-footer="true" class="app-default">
    <uc1:loader runat="server" id="loader" />
    <!--begin::Theme mode setup on page load-->
    <script>
        var defaultThemeMode = "light"; var themeMode; if ( document.documentElement ) { if ( document.documentElement.hasAttribute("data-bs-theme-mode")) { themeMode = document.documentElement.getAttribute("data-bs-theme-mode"); } else { if ( localStorage.getItem("data-bs-theme") !== null ) { themeMode = localStorage.getItem("data-bs-theme"); } else { themeMode = defaultThemeMode; } } if (themeMode === "system") { themeMode = window.matchMedia("(prefers-color-scheme: dark)").matches ? "dark" : "light"; } document.documentElement.setAttribute("data-bs-theme", themeMode); }
    </script>
    <!--end::Theme mode setup on page load-->
    <!--begin::App-->
    <div class="d-flex flex-column flex-root app-root" id="kt_app_root">
        <!--begin::Page-->
        <div class="app-page flex-column flex-column-fluid" id="kt_app_page">
            <!--begin::Header-->
            <uc1:menuTop runat="server" id="menuTop1" parentPageText="Report" childPageText="Sent SMS Report"/>
            <!--end::Header-->
            <!--begin::Wrapper-->
            <div class="app-wrapper flex-column flex-row-fluid" id="kt_app_wrapper">
                <!--begin::Sidebar-->
               <uc1:sideBar runat="server" id="sideBar" />
                <!--end::Sidebar-->
                <!--begin::Main-->
                <div class="app-main flex-column flex-row-fluid" id="kt_app_main">
                    <!--begin::Content wrapper-->
                    <div class="d-flex flex-column flex-column-fluid">
                        <!--begin::Content-->
                        <div id="kt_app_content" class="app-content flex-column-fluid">
                            <!--begin::Content container-->
                            <div id="kt_app_content_container" class="app-container container-fluid">
                                    <!--begin::Row-->
                                    <div class="row g-5 g-xl-10 mb-xl-10 mt-0">
                                        <!--begin::Col-->
                                        <div class="col-md-12 mb-md-0 mb-5 mt-5">
                                            <div>
                                                <div class="fs-18 dark-color fw-bold mb-1">Export Report</div>
                                                <div class="fs-14 color-neutral-grey">
                                                      For security reasons, older records will be deleted automatically after 30 days.
                                                </div>
                                                <div class="mt-5">
                                                    <form action="#" method="post" id="hlrForm" name="hlrForm" runat="server">
														<div class="row">
                                                            <div class="col-md-4 mb-8 mb-md-0">
                                                                <div class="mb-8">
                                                                    <label for="date_from" class="form-label fs-14 dark-color">Start date</label>
                                                                    <input type="date" class="form-control form-custom-input" name="date_from" id="date_from" runat="server" placeholder="Start date" required="">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-4 mb-8 mb-md-0">
                                                                <div class="mb-8">
                                                                    <label for="date_to" class="form-label fs-14 dark-color">End date</label>
                                                                    <input type="date" class="form-control form-custom-input" name="date_to" id="date_to" runat="server" placeholder="Finish date" required="" max="2023-09-20">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-4 mb-8 mb-md-0">
                                                                <div class="d-flex justify-content-start align-items-center h-100">
                                                                <button type="submit" id="export" name="export" runat="server" value="Export" class="btn btn-primary btn-grad py-4 px-6 rounded-1" fdprocessedid="3fvavj">
                                                                        <span class="fs-12">Export</span>
                                                                        <span class="indicator-progress">
                                                                            <span class="spinner-border text-white" role="status">
                                                                                <span class="visually-hidden">Loading...</span>
                                                                            </span>
                                                                        </span>
                                                                    </button>
                                                                <div class="me-5">
                                                                        <a href="javascript:void(0);" id="rest_form_btn" class="btn btn-outline-dark btn-bordered py-4 px-6 rounded-1">Clear</a>                    
                                                                    </div>

                                                                </div>
                                                            </div>
                                                        </div>
                                                    
                                                    </form>
                                                </div>
                                            </div>
                                            <!--begin::Menu separator-->
                                            <div class="separator mb-7 mt-4"></div>
                                            <!--end::Menu separator-->
                                            <!--begin::Page title-->
                                            <div class="card card-flush shadow-xs p-5">
                                            <div class="page-title gap-1 d-flex justify-content-between align-items-start">
                                                <div>
                                                   <!--begin::Title-->
                                                    <div class="d-flex justify-content-start align-items-center mb-1">
                                                        <h2 class="page-heading text-dark fw-bold m-0 me-3">Sent SMS Report</h2>
                                                        <span class="fs-12 cyan-color fw-bold cyan-bg px-2 py-1">3 available</span>
                                                    </div>
                                                    <p class="fs-14 color-neutral-grey">
                                                       This list is a temporary list of reports for precisely 24 hours. This ensures swift access to recent data while maintaining data privacy and security.                                                    </p>
                                                    <!--end::Title-->
                                                </div>
                                                <!-- <div class="me-7">
                                                    <a id="btn-reload" href="#" data-bs-toggle="tooltip" data-bs-placement="top" title="Refresh SMS sent report report">
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-arrow-clockwise" viewBox="0 0 16 16">
                                                            <path fill-rule="evenodd" d="M8 3a5 5 0 1 0 4.546 2.914.5.5 0 0 1 .908-.417A6 6 0 1 1 8 2v1z"/>
                                                            <path d="M8 4.466V.534a.25.25 0 0 1 .41-.192l2.36 1.966c.12.1.12.284 0 .384L8.41 4.658A.25.25 0 0 1 8 4.466z"/>
                                                        </svg> 
                                                    </a>
                                                </div> -->
                                               
                                            </div>
                                            <!-- <div class="row">                                                  
                                                    <div class="col-6">
                                                        sdddddddddddd
                                                    </div>
                                                </div> -->
                                            <!--end::Page title-->
                                            <!--begin::Card widget 4-->
                                         
                                                <!--begin::Card body-->
                                                <div class="card-body pb-4 mt-0 pt-5 ps-0 pr-0">
                                                    <div class="table-responsive">
                                                        <table id="sent-sms-report" class="table custom-table table-row-gray-300 gy-5 datatable">
                                                            <thead>
                                                                <tr class="fs-14 fw-600">
                                                                    <th class="white-color">ID</th>
                                                                    <th class="white-color">Status</th>
                                                                    <th class="white-color">Date</th>
                                                                    <th class="white-color">Number</th>
                                                                    <th class="white-color">Country</th>
                                                                    <th class="white-color">Network</th>
                                                                    <th class="white-color">Type</th>
                                                                    <th class="white-color">Quantity</th>
                                                                    <th class="white-color">Message</th>
                                                                    <th class="white-color">Sender</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td class="">001</td>
                                                                    <td class="text-success">Delivered</td>
                                                                    <td>11/08/2023</td>
                                                                    <td>-</td>
                                                                    <td>Japan</td>
                                                                    <td>-</td>
                                                                    <td>-</td>
                                                                    <td>60k</td>
                                                                    <td>-</td>
                                                                    <td>-</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>002</td>
                                                                    <td class="text-success">Delivered</td>
                                                                    <td>11/08/2023</td>
                                                                    <td>-</td>
                                                                    <td>Germany</td>
                                                                    <td>-</td>
                                                                    <td>-</td>
                                                                    <td>4k</td>
                                                                    <td>-</td>
                                                                    <td>-</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>002</td>
                                                                    <td class="text-success">Delivered</td>
                                                                    <td>11/08/2023</td>
                                                                    <td>-</td>
                                                                    <td>Netherland</td>
                                                                    <td>-</td>
                                                                    <td>-</td>
                                                                    <td>4k</td>
                                                                    <td>-</td>
                                                                    <td>-</td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                                <!--end::Card body-->
                                            </div>
                                            <!--end::Card widget 4-->
                                        </div>
                                        <!--end::Col-->
                                        <!--begin::Col-->
										<div class="col-md-12 mb-md-0 mt-md-0 mb-5 mt-5">
											<div class="custom-border-left h-100 mt-10 mt-md-0">
												<div class="p-8">
                                                    <div>
                                                        <div class="d-flex justify-content-start align-items-center mb-1">
                                                            <div class="dark-color fs-16 fw-bold me-3">
                                                            Downloadable Reports
                                                            </div>
                                                            <span class="fs-12 text-success fw-500 bg-green px-2 py-1">3 reports ready</span>
                                                        </div>
                                                        <p class="fs-12 color-neutral-grey mb-0">
                                                             Please note that the export time may vary depending on the size of the data.
                                                        </p>
                                                    </div>
                                                    <div class="d-flex flex-wrap align-items-center mt-6">
                                                        <div class="me-5">
                                                            <a href="#">
                                                                <div class="fs-12 cyan-color fw-bold cyan-bg rounded-2 p-2 cyan-border mb-4 w-fit">
                                                                    <i class="bi bi-file-earmark-bar-graph cyan-color me-1"></i>
                                                                    <span>021-2023-01-29-2023-01-30.zip</span>
                                                                </div>
                                                            </a>
                                                        </div>
                                                        <div class="me-5">
                                                            <a href="#">
                                                                <div class="fs-12 cyan-color fw-bold cyan-bg rounded-2 p-2 cyan-border mb-4 w-fit">
                                                                    <i class="bi bi-file-earmark-bar-graph cyan-color me-1"></i>
                                                                    <span>021-2023-01-29-2023-01-30.zip</span>
                                                                </div>
                                                            </a>
                                                        </div>
                                                        <div class="me-5">
                                                            <a href="#">
                                                                <div class="fs-12 cyan-color fw-bold cyan-bg rounded-2 p-2 cyan-border mb-4 w-fit">
                                                                    <i class="bi bi-file-earmark-bar-graph cyan-color me-1"></i>
                                                                    <span>021-2023-01-29-2023-01-30.zip</span>
                                                                </div>
                                                            </a>
                                                        </div>
                                                    </div>
												</div>
											</div>
										</div>
                                        <!--end::Col-->
                                    </div>
                                    <!--end::Row-->
								</div>
								<!--end::Content container-->
							</div>
							<!--end::Content-->
						</div>
						<!--end::Content wrapper-->
					    <uc1:footer runat="server" id="footer" />
					</div>
					<!--end:::Main-->
				</div>
				<!--end::Wrapper-->
			</div>
			<!--end::Page-->
		</div>
		<!--end::App-->
		<!--begin::Scrolltop-->
		<div id="kt_scrolltop" class="scrolltop" data-kt-scrolltop="true">
			<i class="ki-outline ki-arrow-up"></i>
		</div>
		<!--end::Scrolltop-->
          <!--end::App-->
    
        <uc1:footerLinks runat="server" id="footerLinks" />
        <script src="/assets/js/sentreport.js"></script>
</body>
<!--end::Body-->
</html>
