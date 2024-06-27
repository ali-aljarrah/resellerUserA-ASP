<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hlr_log.aspx.cs" Inherits="resellerUserA.hlr_log" %>

<%@ Register Src="~/Controls/head.ascx" TagPrefix="uc1" TagName="head" %>

<%@ Register Src="~/Controls/menuTop.ascx" TagPrefix="uc1" TagName="menuTop" %>
<%@ Register Src="~/Controls/sideBar.ascx" TagPrefix="uc1" TagName="sideBar" %>
<%@ Register Src="~/Controls/footer.ascx" TagPrefix="uc1" TagName="footer" %>
<%@ Register Src="~/Controls/footerLinks.ascx" TagPrefix="uc1" TagName="footerLinks" %>
<%@ Register Src="~/Controls/loader.ascx" TagPrefix="uc1" TagName="loader" %>


<uc1:head runat="server" ID="head" />

<title>Pending SMS Group Queue</title>
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
              <uc1:menuTop runat="server" id="menuTop1" parentPageText="Lookup" childPageText="Lookup Log"/>
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
                                            <div class="card card-flush shadow-xs h-100 border-0 p-5">
                                                <!--begin::Page title-->
                                                <div class="page-title gap-1 d-flex justify-content-between align-items-start">
                                                    <div>
                                                        <!--begin::Title-->
                                                        <h1 class="page-heading d-flex flex-column justify-content-center text-dark fw-bold m-1">Lookup Log Report</h1>
                                                        <p class="fs-14 color-neutral-grey">
                                                        This list is a temporary list of reports for precisely 24 hours. This ensures swift access to recent data while maintaining data privacy and security.
                                                        </p>
                                                        <!--end::Title-->
                                                    </div>
                                                    <!-- <div class="me-7">
                                                        <a id="btn-reload" href="#" data-bs-toggle="tooltip" data-bs-placement="top" title="Refresh HLR report">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-arrow-clockwise" viewBox="0 0 16 16">
                                                                <path fill-rule="evenodd" d="M8 3a5 5 0 1 0 4.546 2.914.5.5 0 0 1 .908-.417A6 6 0 1 1 8 2v1z"/>
                                                                <path d="M8 4.466V.534a.25.25 0 0 1 .41-.192l2.36 1.966c.12.1.12.284 0 .384L8.41 4.658A.25.25 0 0 1 8 4.466z"/>
                                                            </svg> 
                                                        </a>
                                                    </div> -->
                                                </div>
                                                <!--end::Page title-->
                                                <!--begin::Card widget 4-->
                                                
                                                    <!--begin::Card body-->
                                                    <div class="card-body pb-4 mt-0 pt-0 ps-0 pr-0">
                                                        <div class="table-responsive mt-5">
                                                            <table id="hlr_report_table" class="table custom-table table-row-gray-300 gy-5 no-footer dataTable">
                                                                <thead>
                                                                    <tr class="fs-14 fw-600 dark-color">
                                                                        <th class="white-color">MSISDN</th>
                                                                        <th class="white-color">State</th>
                                                                        <th class="white-color">Country</th>
                                                                        <th class="white-color">Network</th>
                                                                        <th class="white-color">Type</th>
                                                                        <th class="white-color">MCC-MNC</th>
                                                                        <th class="white-color">Ported</th>
                                                                        <th class="white-color">Roaming</th>
                                                                        <th class="white-color">Description</th>
                                                                        <th class="white-color">Error</th>
                                                                        <th class="white-color">Time stamp</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <tr>
                                                                        <td>60148327590</td>
                                                                        <td>Undelivered</td>
                                                                        <td>Malaysia</td>
                                                                        <td>Celcom</td>
                                                                        <td>Mobile</td>
                                                                        <td>50219</td>
                                                                        <td>False</td>
                                                                        <td>False</td>
                                                                        <td>Absent Subscriber</td>
                                                                        <td>27</td>
                                                                        <td>20/09/2023 03:20:42</td>
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

        <uc1:footerLinks runat="server" id="footerLinks" />
        <script src="/assets/js/hlr_log.js"></script>

	</body>
	<!--end::Body-->
</html>