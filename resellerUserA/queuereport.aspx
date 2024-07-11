<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="queuereport.aspx.cs" Inherits="resellerUserA.queuereport" %>

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
            <uc1:menuTop runat="server" id="menuTop1" parentPageText="Report" childPageText="Queue Report"/>
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
                                        <div class="card card-flush shadow-xs h-lg-100 p-8">
                                            <!--begin::Page title-->
                                            <div class="page-title gap-1 d-flex justify-content-between align-items-start">
                                                <div>
                                                   <!--begin::Title-->
                                                    <div class="d-flex justify-content-start align-items-center mb-1">
                                                        <h1 class="page-heading text-dark fw-bold m-0 me-3">Pending SMS Group Queue</h1>
                                                        <span class="fs-12 cyan-color fw-bold cyan-bg px-2 py-1">3 available</span>
                                                    </div>
                                                    <p class="fs-14 color-neutral-grey">
                                                    This report allows you to conveniently monitor your sent SMS files, enabling you to track the status and obtain additional details for each file.
                                                    </p>
                                                    <!--end::Title-->
                                                </div>
                                            </div>
                                            <!--end::Page title-->
                                            <!--begin::Card widget 4-->
                                          
                                                <!--begin::Card body-->
                                                <div class="card-body pb-4 mt-0 pt-5 ps-0 pr-0">
                                                    <div class="table-responsive">
                                                        <table id="queue-report-table" class="table custom-table table-row-gray-300 gy-5 datatable">
                                                            <thead>
                                                                <tr class="fs-14 fw-600 dark-color">
                                                                    <th class="white-color">Text</th>
                                                                    <th class="white-color">Sender</th>
                                                                    <th class="white-color">Type</th>
                                                                    <th class="white-color">Parts</th>
                                                                    <th class="white-color">File</th>
                                                                    <th class="white-color">Quantity</th>
                                                                    <th class="white-color">Total Quantity</th>
                                                                    <th class="white-color">Date</th>
                                                                    <th class="white-color">Status</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                
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
          <!--end::App-->
    
          <uc1:footerLinks runat="server" id="footerLinks" />
          <script src="/assets/js/queue_report.js"></script>
</body>
<!--end::Body-->
</html>
