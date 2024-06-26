<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cov.aspx.cs" Inherits="resellerUserA.cov" %>

<%@ Register Src="~/Controls/head.ascx" TagPrefix="uc1" TagName="head" %>

<%@ Register Src="~/Controls/menuTop.ascx" TagPrefix="uc1" TagName="menuTop" %>
<%@ Register Src="~/Controls/sideBar.ascx" TagPrefix="uc1" TagName="sideBar" %>
<%@ Register Src="~/Controls/footer.ascx" TagPrefix="uc1" TagName="footer" %>
<%@ Register Src="~/Controls/footerLinks.ascx" TagPrefix="uc1" TagName="footerLinks" %>



<uc1:head runat="server" ID="head" />

<title>Coverage</title>
</head>
<!--end::Head-->
<!--begin::Body-->
<body id="kt_app_body" data-kt-app-header-fixed="true" data-kt-app-header-fixed-mobile="true" data-kt-app-sidebar-enabled="true" data-kt-app-sidebar-fixed="true" data-kt-app-sidebar-push-toolbar="true" data-kt-app-sidebar-push-footer="true" class="app-default">
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
             <uc1:menuTop runat="server" id="menuTop1" parentPageText="Coverage" childPageText="Coverage"/>
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
                                <div class="row g-5 g-xl-10">
                                    <!--begin::Col-->
                                    <div class="col-xl-12 mb-xl-10">
                                        <!--begin::List widget 10-->
                                        <div class="card card-flush shadow-xs">
                                            <!--begin::Header-->
                                            <div class="card-header d-block pt-7">
                                                <!--begin::Title-->
                                                <h3 class="card-title card-label fs-20 fw-bold color-black-1">
                                                List of Countries Covered
                                                </h3>
                                                <!--end::Title-->
                                                <p class="color-neutral-grey mt-1 fs-14">
                                                Please find below our comprehensive list of covered countries, including information on mobile operators and service status for each.
                                                </p>
                                            </div>
                                            <!--end::Header-->
                                            <!--begin::Body-->
                                            <div class="card-body">
                                                <div class="table-responsive">
                                                    <table id="coverage-table" class="table custom-table">
                                                        <thead>
                                                            <tr>
                                                                <th class="white-color fs-16 fw-600">Country Name</th>
                                                                <th class="white-color fs-16 fw-600">ISO</th>
                                                                <th class="white-color fs-16 fw-600">Network</th>
                                                                <th class="white-color fs-16 fw-600">MCC</th>
                                                                <th class="white-color fs-16 fw-600">MNC</th>
                                                                <th class="white-color fs-16 fw-600">Status</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                            <!--end: Card Body-->
                                        </div>
                                        <!--end::List widget 10-->
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
                    <!--begin::Footer-->
                 	<uc1:footer runat="server" id="footer" />
                    <!--end::Footer-->
                </div>
                <!--end:::Main-->
            </div>
            <!--end::Wrapper-->
        </div>
        <!--end::Page-->
    </div>
    <!--end::App-->
    
   	<uc1:footerLinks runat="server" id="footerLinks" />

    <script src="/assets/js/coverage.js"></script>
</body>
<!--end::Body-->
</html>