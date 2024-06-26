<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hlr.aspx.cs" Inherits="resellerUserA.hlr" %>

<%@ Register Src="~/Controls/head.ascx" TagPrefix="uc1" TagName="head" %>

<%@ Register Src="~/Controls/menuTop.ascx" TagPrefix="uc1" TagName="menuTop" %>
<%@ Register Src="~/Controls/sideBar.ascx" TagPrefix="uc1" TagName="sideBar" %>
<%@ Register Src="~/Controls/footer.ascx" TagPrefix="uc1" TagName="footer" %>
<%@ Register Src="~/Controls/footerLinks.ascx" TagPrefix="uc1" TagName="footerLinks" %>



<uc1:head runat="server" ID="head" />

<title>Single Lookup</title>
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
             <uc1:menuTop runat="server" id="menuTop1" parentPageText="Lookup" childPageText="Single Lookup"/>
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
                                        <div class="col-md-8 mb-md-0 mb-5 mt-5">
                                            <!--begin::Row-->
                                            <div class="row gy-5 g-xl-10">
                                                <!--begin::Col-->
                                                <div class="col-sm-6 col-xl-4 mb-xl-10">
                                                    <!--begin::Card widget 2-->
                                                    <div class="card card-flush shadow-xs h-lg-100">
                                                        <!--begin::Body-->
                                                        <div class="card-body">
                                                            <!--begin::Section-->
                                                            <div class="dark-color fs-16 fw-500">
                                                            Lookup Usage
                                                            </div>
                                                            <div class="d-flex flex-column mt-7">
                                                                <div class="d-flex align-items-center">
                                                                    <!--begin::Number-->
                                                                    <span class="fw-bold fs-3x text-gray-800 lh-1 ls-n2">12</span>
                                                                    <!--end::Number-->
                                                                    <div class="ms-3">
                                                                        <!--begin::Badge-->
                                                                        <span class="badge badge-light-success fs-12 rounded-circle me-1">
                                                                            <i class="ki-outline ki-arrow-up fs-5 text-success pt-1"></i>
                                                                        </span>
                                                                        <!--end::Badge-->
                                                                        <span class="fs-14 text-success fw-bold">3%</span>
                                                                    </div>
                                                                </div>
                                                                <!--begin::Follower-->
                                                                <div class="mt-5">
                                                                    <span class="fw-semibold fs-6 gray">since last used</span>
                                                                </div>
                                                                <!--end::Follower-->
                                                            </div>
                                                            <!--end::Section-->
                                                        </div>
                                                        <!--end::Body-->
                                                    </div>
                                                    <!--end::Card widget 2-->
                                                </div>
                                                <!--end::Col-->
                                                <!--begin::Col-->
                                                <div class="col-sm-6 col-xl-4 mb-xl-10">
                                                    <!--begin::Card widget 2-->
                                                    <div class="card card-flush shadow-xs h-lg-100">
                                                        <!--begin::Body-->
                                                        <div class="card-body">
                                                            <!--begin::Section-->
                                                            <div class="dark-color fs-16 fw-500">
                                                            Lookup Balance
                                                            </div>
                                                            <div class="d-flex flex-column mt-7">
                                                                <div class="d-flex align-items-center">
                                                                    <!--begin::Number-->
                                                                    <span class="fw-semibold fs-3x text-gray-800 lh-1 ls-n2">11</span>
                                                                    <!--end::Number-->
                                                                    <div class="ms-3">
                                                                        <!--begin::Badge-->
                                                                        <span class="badge badge-light-danger fs-base rounded-circle me-1">
                                                                            <i class="ki-outline ki-arrow-down fs-5 text-danger pt-1"></i>
                                                                        </span>
                                                                        <!--end::Badge-->
                                                                        <span class=" text-danger">1</span>
                                                                    </div>
                                                                </div>
                                                                <!--begin::Follower-->
                                                                <div class="mt-5">
                                                                    <span class="fw-semibold fs-6 gray">credits left</span>
                                                                </div>
                                                                <!--end::Follower-->
                                                            </div>
                                                            <!--end::Section-->
                                                        </div>
                                                        <!--end::Body-->
                                                    </div>
                                                    <!--end::Card widget 2-->
                                                </div>
                                                <!--end::Col-->
                                                <!--begin::Col-->
                                                <div class="col-sm-6 col-xl-4 mb-xl-10">
                                                    <!--begin::Card widget 2-->
                                                    <div class="card card-flush shadow-xs bg-blue h-lg-100">
                                                        <!--begin::Body-->
                                                        <div class="card-body">
                                                            <!--begin::Section-->
                                                            <div class="white-color fs-16 fw-500">
                                                            All-Time Lookup
                                                            </div>
                                                            <div class="d-flex flex-column mt-7">
                                                                <div class="d-flex align-items-center">
                                                                    <!--begin::Number-->
                                                                    <span class="fw-bold fs-3x white-color lh-1 ls-n2">129</span>
                                                                    <!--end::Number-->
                                                                    <div class="ms-3">
                                                                        <!--begin::Badge-->
                                                                        <span class="badge badge-light-success fs-base rounded-circle me-1">
                                                                            <i class="ki-outline ki-arrow-up fs-5 text-success pt-1"></i>
                                                                        </span>
                                                                        <!--end::Badge-->
                                                                        <span class="text-success">9%</span>
                                                                    </div>
                                                                </div>
                                                                <!--begin::Follower-->
                                                                <div class="mt-5">
                                                                    <span class="fw-semibold fs-6 text-gray-400">since last used</span>
                                                                </div>
                                                                <!--end::Follower-->
                                                            </div>
                                                            <!--end::Section-->
                                                        </div>
                                                        <!--end::Body-->
                                                    </div>
                                                    <!--end::Card widget 2-->
                                                </div>
                                                <!--end::Col-->
                                            </div>
                                            <!--end::Row-->
                                            <!--begin::Page title-->
                                            <div class="card card-flush shadow-xs border-0 py-5 px-5">

                                            <div class="d-flex flex-column justify-content-center gap-1">
                                                <!--begin::Title-->
                                                <h1 class="page-heading d-flex flex-column justify-content-center text-dark fw-bold m-1">Do Single Lookup</h1>
                                                <p class="fs-14 color-neutral-grey">
                                                    This is a utility that provides details for any phone number. Input the number below to obtain real-time information about its status. Additionally, you can integrate our HLR API into your application.
                                                </p>
                                                <!--end::Title-->
                                            </div>
                                            <!--end::Page title-->
                                            <!--begin::Card widget 4-->
                                            
                                                <!--begin::Card body-->
                                                <div class="card-body pb-2 mt-0 pt-0 ps-0 pr-0">
                                                    <form name="hlr_lookup" id="hlr_lookup">
                                                        <label class="form-label required">Input number</label>
                                                        <input type="text" name="number" id="number" maxlength="15" class="form-control form-control-solid" placeholder="Number" data-bs-toggle="tooltip" data-bs-placement="top" title="Please enter the number you wish to check with country code">
                                                        <input type="hidden" name="hlrtoken" id="hlrtoken" value="">
                                                        <div class="fs-14 color-neutral-grey my-5">
                                                           Be aware that each search will deduct from your HLR account balance. The standard cost for each inquiry is 1 HLR credit.
                                                        </div>
                                                        <div class="mt-5">
                                                            <button id="hlr_lookup_btn" class="btn btn-primary btn-grad py-4 px-6 rounded-1" type="submit">
                                                                <span class="indicator-label">Check</span>
                                                                <span class="indicator-progress">
                                                                    <span class="spinner-border text-white" role="status">
                                                                        <span class="visually-hidden">Loading...</span>
                                                                    </span>
                                                                </span>
                                                            </button>
                                                        </div>
                                                    </form>
                                                </div>
                                                <!--end::Card body-->
                                            </div>
                                            <!--end::Card widget 4-->
                                        </div>
                                        <!--end::Col-->
                                        <div class="col-md-4 mb-md-0 mb-5 mt-5">
                                            <div class="card card-flush shadow-xs h-100 border-0">
										        <div class="custom-border-left h-100 mt-10 mt-md-0">
											        <div class="p-8">
                                                        <div class="dark-color fs-16 fw-500 mb-5">
                                                        Lookup Result
                                                        </div>
                                                        <div>
                                                            <div class="hlr-block mt-4 d-flex justify-content-between border-gray">
                                                                <div class="loading">
                                                                    <span class="spinner-border text-white" role="status">
                                                                        <span class="visually-hidden">Loading...</span>
                                                                    </span>
                                                                </div>
                                                                <div class="pt-2 px-4">
                                                                    <div class="fs-12 grey-color mb-1">MSISDN</div>
                                                                    <div id="msisdn" class="fs-12 dark-color">
                                                                        -
                                                                    </div>
                                                                </div>
                                                                <div class="icon p-5">
                                                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="25" viewBox="0 0 24 25" fill="none">
                                                                        <path d="M10.5 18.5C10.3011 18.5 10.1103 18.579 9.96967 18.7197C9.82902 18.8603 9.75 19.0511 9.75 19.25C9.75 19.4489 9.82902 19.6397 9.96967 19.7803C10.1103 19.921 10.3011 20 10.5 20H13.5C13.6989 20 13.8897 19.921 14.0303 19.7803C14.171 19.6397 14.25 19.4489 14.25 19.25C14.25 19.0511 14.171 18.8603 14.0303 18.7197C13.8897 18.579 13.6989 18.5 13.5 18.5H10.5ZM8.625 2C7.92881 2 7.26113 2.27656 6.76884 2.76884C6.27656 3.26113 6 3.92881 6 4.625V20.375C6 21.824 7.176 23 8.625 23H15.375C16.0712 23 16.7389 22.7234 17.2312 22.2312C17.7234 21.7389 18 21.0712 18 20.375V4.625C18 3.92881 17.7234 3.26113 17.2312 2.76884C16.7389 2.27656 16.0712 2 15.375 2H8.625ZM7.5 4.625C7.5 4.32663 7.61853 4.04048 7.8295 3.8295C8.04048 3.61853 8.32663 3.5 8.625 3.5H15.375C15.6734 3.5 15.9595 3.61853 16.1705 3.8295C16.3815 4.04048 16.5 4.32663 16.5 4.625V20.375C16.5 20.6734 16.3815 20.9595 16.1705 21.1705C15.9595 21.3815 15.6734 21.5 15.375 21.5H8.625C8.32663 21.5 8.04048 21.3815 7.8295 21.1705C7.61853 20.9595 7.5 20.6734 7.5 20.375V4.625Z" fill="url(#paint0_linear_600_2402)"/>
                                                                        <defs>
                                                                            <linearGradient id="paint0_linear_600_2402" x1="5.75912" y1="9.23333" x2="15.5296" y2="9.40365" gradientUnits="userSpaceOnUse">
                                                                            <stop stop-color="#72FC90"/>
                                                                            <stop offset="1" stop-color="#FFEE0F"/>
                                                                            </linearGradient>
                                                                        </defs>
                                                                    </svg>
                                                                </div>
                                                            </div>
                                                            <div class="hlr-block mt-4 d-flex justify-content-between border-gray">
                                                                <div class="loading">
                                                                    <span class="spinner-border text-white" role="status">
                                                                        <span class="visually-hidden">Loading...</span>
                                                                    </span>
                                                                </div>
                                                                <div class="py-3 px-4">
                                                                    <div class="fs-12 grey-color mb-1">MSISDN Type</div>
                                                                    <div id="msisdn_type" class="fs-12 dark-color">
                                                                        -
                                                                    </div>
                                                                </div>
                                                                <div class="icon p-5">
                                                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="25" viewBox="0 0 24 25" fill="none">
                                                                        <path d="M19.2498 19H21.2498C21.4398 19.0001 21.6227 19.0722 21.7616 19.202C21.9004 19.3317 21.9848 19.5093 21.9978 19.6989C22.0107 19.8885 21.9513 20.0759 21.8313 20.2233C21.7114 20.3707 21.54 20.4671 21.3518 20.493L21.2498 20.5H19.9998V21.75C19.9997 21.94 19.9275 22.1229 19.7978 22.2618C19.6681 22.4006 19.4905 22.4851 19.3009 22.498C19.1113 22.511 18.9239 22.4515 18.7765 22.3316C18.6291 22.2117 18.5327 22.0402 18.5068 21.852L18.4998 21.75V19.75C18.4998 19.5688 18.5654 19.3937 18.6845 19.2571C18.8037 19.1205 18.9682 19.0316 19.1478 19.007L19.2498 19ZM2.74977 19H4.74977C4.93101 19 5.10611 19.0656 5.2427 19.1848C5.37929 19.3039 5.46812 19.4684 5.49277 19.648L5.49977 19.75V21.75C5.49971 21.94 5.42753 22.1229 5.2978 22.2618C5.16807 22.4006 4.99047 22.4851 4.80089 22.498C4.61131 22.511 4.42388 22.4515 4.27647 22.3316C4.12907 22.2117 4.03267 22.0402 4.00677 21.852L3.99977 21.75V20.5H2.74977C2.55975 20.4999 2.37683 20.4278 2.23798 20.298C2.09913 20.1683 2.0147 19.9907 2.00175 19.8011C1.98879 19.6115 2.04829 19.4241 2.1682 19.2767C2.28812 19.1293 2.45952 19.0329 2.64777 19.007L2.74977 19ZM16.7498 6.003C16.9487 6.003 17.1394 6.08202 17.2801 6.22267C17.4208 6.36332 17.4998 6.55409 17.4998 6.753V18.25C17.4998 18.4489 17.4208 18.6397 17.2801 18.7803C17.1394 18.921 16.9487 19 16.7498 19H7.25177C7.05286 19 6.86209 18.921 6.72144 18.7803C6.58079 18.6397 6.50177 18.4489 6.50177 18.25V6.753C6.50177 6.55409 6.58079 6.36332 6.72144 6.22267C6.86209 6.08202 7.05286 6.003 7.25177 6.003H16.7518H16.7498ZM15.9998 7.503H8.00177V17.5H16.0018V7.503H15.9998ZM9.74977 13.014H12.2518C12.4418 13.0141 12.6247 13.0862 12.7636 13.216C12.9024 13.3457 12.9868 13.5233 12.9998 13.7129C13.0127 13.9025 12.9533 14.0899 12.8333 14.2373C12.7134 14.3847 12.542 14.4811 12.3538 14.507L12.2518 14.514H9.74977C9.55975 14.5139 9.37683 14.4418 9.23798 14.312C9.09913 14.1823 9.0147 14.0047 9.00175 13.8151C8.98879 13.6255 9.04829 13.4381 9.1682 13.2907C9.28812 13.1433 9.45952 13.0469 9.64777 13.021L9.74977 13.014ZM9.74977 10H14.2518C14.4418 10.0001 14.6247 10.0722 14.7636 10.202C14.9024 10.3317 14.9868 10.5093 14.9998 10.6989C15.0127 10.8885 14.9533 11.0759 14.8333 11.2233C14.7134 11.3707 14.542 11.4671 14.3538 11.493L14.2518 11.5H9.74977C9.55975 11.4999 9.37683 11.4278 9.23798 11.298C9.09913 11.1683 9.0147 10.9907 9.00175 10.8011C8.98879 10.6115 9.04829 10.4241 9.1682 10.2767C9.28812 10.1293 9.45952 10.0329 9.64777 10.007L9.74977 10ZM4.74977 2.5C4.93101 2.50001 5.10611 2.56564 5.2427 2.68477C5.37929 2.80389 5.46812 2.96845 5.49277 3.148L5.49977 3.25V5.25C5.49976 5.43124 5.43413 5.60634 5.315 5.74293C5.19588 5.87952 5.03133 5.96835 4.85177 5.993L4.74977 6H2.74977C2.55975 5.99994 2.37683 5.92776 2.23798 5.79803C2.09913 5.6683 2.0147 5.4907 2.00175 5.30112C1.98879 5.11154 2.04829 4.92411 2.1682 4.7767C2.28812 4.62929 2.45952 4.5329 2.64777 4.507L2.74977 4.5H3.99977V3.25C3.99977 3.05109 4.07879 2.86032 4.21944 2.71967C4.36009 2.57902 4.55086 2.5 4.74977 2.5ZM19.2498 2.5C19.431 2.50001 19.6061 2.56564 19.7427 2.68477C19.8793 2.80389 19.9681 2.96845 19.9928 3.148L19.9998 3.25V4.5H21.2498C21.4398 4.50006 21.6227 4.57224 21.7616 4.70197C21.9004 4.8317 21.9848 5.0093 21.9978 5.19888C22.0107 5.38846 21.9513 5.57589 21.8313 5.7233C21.7114 5.87071 21.54 5.9671 21.3518 5.993L21.2498 6H19.2498C19.0685 5.99999 18.8934 5.93436 18.7568 5.81523C18.6203 5.69611 18.5314 5.53155 18.5068 5.352L18.4998 5.25V3.25C18.4998 3.05109 18.5788 2.86032 18.7194 2.71967C18.8601 2.57902 19.0509 2.5 19.2498 2.5Z" fill="url(#paint0_linear_600_3053)"/>
                                                                        <defs>
                                                                            <linearGradient id="paint0_linear_600_3053" x1="1.59855" y1="9.38881" x2="17.872" y2="9.88524" gradientUnits="userSpaceOnUse">
                                                                            <stop stop-color="#72FC90"/>
                                                                            <stop offset="1" stop-color="#FFEE0F"/>
                                                                            </linearGradient>
                                                                        </defs>
                                                                    </svg>
                                                                </div>
                                                            </div>
                                                            <div class="hlr-block mt-4 d-flex justify-content-between border-gray">
                                                                <div class="loading">
                                                                    <span class="spinner-border text-white" role="status">
                                                                        <span class="visually-hidden">Loading...</span>
                                                                    </span>
                                                                </div>
                                                                <div class="py-3 px-4">
                                                                    <div class="fs-12 grey-color mb-1">State</div>
                                                                    <div id="state" class="fs-12 dark-color">
                                                                        -
                                                                    </div>
                                                                </div>
                                                                <div class="icon p-5">
                                                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="25" viewBox="0 0 24 25" fill="none">
                                                                        <path d="M9 13.25L11.25 15.5L15 10.25M21 12.5C21 13.768 20.37 14.89 19.407 15.568C19.5108 16.1608 19.4701 16.7698 19.2886 17.3436C19.107 17.9173 18.7899 18.4388 18.364 18.864C17.9388 19.2899 17.4173 19.607 16.8436 19.7886C16.2698 19.9701 15.6608 20.0108 15.068 19.907C14.7222 20.3995 14.2629 20.8014 13.7288 21.0787C13.1948 21.356 12.6017 21.5005 12 21.5C10.732 21.5 9.61 20.87 8.932 19.907C8.33923 20.0107 7.73021 19.97 7.15649 19.7885C6.58276 19.6069 6.06122 19.2898 5.636 18.864C5.21013 18.4388 4.89298 17.9173 4.71142 17.3436C4.52987 16.7698 4.48925 16.1608 4.593 15.568C4.10052 15.2222 3.69862 14.7629 3.42133 14.2288C3.14403 13.6948 2.99951 13.1017 3 12.5C3 11.232 3.63 10.11 4.593 9.432C4.48925 8.83923 4.52987 8.23019 4.71142 7.65645C4.89298 7.08271 5.21013 6.56117 5.636 6.136C6.06122 5.71019 6.58276 5.3931 7.15649 5.21154C7.73021 5.02999 8.33923 4.98933 8.932 5.093C9.27785 4.60058 9.73722 4.19873 10.2713 3.92144C10.8053 3.64415 11.3983 3.49959 12 3.5C13.268 3.5 14.39 4.13 15.068 5.093C15.6608 4.98933 16.2698 5.02999 16.8435 5.21154C17.4172 5.3931 17.9388 5.71019 18.364 6.136C18.7898 6.56122 19.1069 7.08276 19.2885 7.65649C19.47 8.23021 19.5107 8.83923 19.407 9.432C19.8995 9.77779 20.3014 10.2372 20.5787 10.7712C20.856 11.3052 21.0005 11.8983 21 12.5Z" stroke="url(#paint0_linear_600_4783)" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                                                        <defs>
                                                                            <linearGradient id="paint0_linear_600_4783" x1="2.63869" y1="9.7" x2="17.2852" y2="10.1468" gradientUnits="userSpaceOnUse">
                                                                            <stop stop-color="#72FC90"/>
                                                                            <stop offset="1" stop-color="#FFEE0F"/>
                                                                            </linearGradient>
                                                                        </defs>
                                                                    </svg>
                                                                </div>
                                                            </div>
                                                            <div class="hlr-block mt-4 d-flex justify-content-between border-gray">
                                                                <div class="loading">
                                                                    <span class="spinner-border text-white" role="status">
                                                                        <span class="visually-hidden">Loading...</span>
                                                                    </span>
                                                                </div>
                                                                <div class="py-3 px-4">
                                                                    <div class="fs-12 grey-color mb-1">Home Country</div>
                                                                    <div id="home_country" class="fs-12 dark-color">
                                                                        -
                                                                    </div>
                                                                </div>
                                                                <div class="icon p-5">
                                                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="25" viewBox="0 0 24 25" fill="none">
                                                                        <path fill-rule="evenodd" clip-rule="evenodd" d="M5 1.75C5.19891 1.75 5.38968 1.82902 5.53033 1.96967C5.67098 2.11032 5.75 2.30109 5.75 2.5V3.585L7.324 3.27C9.1173 2.9116 10.9761 3.08254 12.674 3.762L13.087 3.927C14.3653 4.43834 15.7723 4.53387 17.108 4.2C18.388 3.88 19.415 5.267 18.736 6.397L17.458 8.528C17.081 9.155 17.021 9.285 17.006 9.403C16.9976 9.4674 16.9976 9.5326 17.006 9.597C17.021 9.715 17.081 9.845 17.458 10.472L19.018 13.073C19.588 14.023 19.078 15.253 18.004 15.523L17.904 15.547C15.9813 16.0277 13.9561 15.8902 12.116 15.154C10.6884 14.583 9.12566 14.4395 7.618 14.741L5.75 15.115V22.5C5.75 22.6989 5.67098 22.8897 5.53033 23.0303C5.38968 23.171 5.19891 23.25 5 23.25C4.80109 23.25 4.61032 23.171 4.46967 23.0303C4.32902 22.8897 4.25 22.6989 4.25 22.5V2.5C4.25 2.30109 4.32902 2.11032 4.46967 1.96967C4.61032 1.82902 4.80109 1.75 5 1.75ZM5.75 13.585L7.324 13.27C9.11731 12.9117 10.9761 13.0826 12.674 13.762C14.221 14.3806 15.9236 14.4961 17.54 14.092L17.64 14.067C17.6626 14.0613 17.6836 14.0503 17.7012 14.035C17.7189 14.0198 17.7327 14.0006 17.7416 13.979C17.7506 13.9575 17.7543 13.9342 17.7527 13.9109C17.751 13.8876 17.7439 13.8651 17.732 13.845L16.172 11.244L16.112 11.146C15.83 10.676 15.58 10.261 15.518 9.792C15.4927 9.59816 15.4927 9.40184 15.518 9.208C15.58 8.739 15.829 8.324 16.113 7.855L16.172 7.756L17.425 5.666C15.7971 6.06292 14.0859 5.94197 12.53 5.32L12.116 5.154C10.6884 4.58304 9.12566 4.43954 7.618 4.741L5.75 5.115V13.585Z" fill="url(#paint0_linear_600_1906)"/>
                                                                        <defs>
                                                                            <linearGradient id="paint0_linear_600_1906" x1="3.94882" y1="9.15555" x2="16.1634" y2="9.41559" gradientUnits="userSpaceOnUse">
                                                                            <stop stop-color="#72FC90"/>
                                                                            <stop offset="1" stop-color="#FFEE0F"/>
                                                                            </linearGradient>
                                                                        </defs>
                                                                    </svg>
                                                                </div>
                                                            </div>
                                                            <div class="hlr-block mt-4 d-flex justify-content-between border-gray">
                                                                <div class="loading">
                                                                    <span class="spinner-border text-white" role="status">
                                                                        <span class="visually-hidden">Loading...</span>
                                                                    </span>
                                                                </div>
                                                                <div class="py-3 px-4">
                                                                    <div class="fs-12 grey-color mb-1">Network</div>
                                                                    <div id="network" class="fs-12 dark-color">
                                                                        -
                                                                    </div>
                                                                </div>
                                                                <div class="icon p-5">
                                                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="25" viewBox="0 0 24 25" fill="none">
                                                                        <path d="M14.4447 10.3452C14.1565 10.0472 14.1747 9.57551 14.4082 9.23295C14.5341 9.04824 14.6415 8.8521 14.7305 8.64453C14.918 8.20703 15.0156 7.74219 15.0234 7.25C15.0234 6.75781 14.9297 6.29297 14.7422 5.85547C14.653 5.64735 14.5444 5.45072 14.4163 5.26559C14.1799 4.92388 14.1587 4.45047 14.4476 4.15182C14.7332 3.85661 15.2095 3.84574 15.4621 4.16968C15.7268 4.50929 15.9439 4.8759 16.1133 5.26953C16.3789 5.88672 16.5156 6.54688 16.5234 7.25C16.5234 7.94531 16.3906 8.60156 16.125 9.21875C15.9549 9.61407 15.735 9.98374 15.4656 10.3278C15.2109 10.6529 14.7319 10.642 14.4447 10.3452ZM16.5307 1.99853C16.8183 1.70129 17.2952 1.69028 17.5651 2.00367C17.7537 2.22275 17.9299 2.452 18.0938 2.69141C18.3984 3.13672 18.6602 3.60547 18.8789 4.09766C19.0977 4.58984 19.2578 5.10156 19.3594 5.63281C19.4609 6.16406 19.5156 6.70312 19.5234 7.25C19.5234 7.79688 19.4688 8.33594 19.3594 8.86719C19.25 9.39844 19.0898 9.91016 18.8789 10.4023C18.668 10.8945 18.4102 11.3633 18.1055 11.8086C17.9399 12.0506 17.7604 12.2823 17.5671 12.5035C17.2956 12.8143 16.8203 12.8008 16.5334 12.5042C16.2433 12.2043 16.2557 11.7287 16.5225 11.4079C16.9252 10.9235 17.2498 10.393 17.4961 9.81641C17.8398 9.01172 18.0156 8.15625 18.0234 7.25C18.0234 6.35156 17.8516 5.5 17.5078 4.69531C17.26 4.11511 16.9309 3.57959 16.5206 3.08875C16.2543 2.77022 16.2421 2.29692 16.5307 1.99853ZM8.05236 10.3482C7.76677 10.6434 7.29048 10.6543 7.03795 10.3303C6.7732 9.99071 6.55613 9.6241 6.38672 9.23047C6.12109 8.61328 5.98438 7.95312 5.97656 7.25C5.97656 6.55469 6.10938 5.89844 6.375 5.28125C6.54514 4.88593 6.76495 4.51626 7.03445 4.17222C7.28915 3.84707 7.76811 3.85799 8.05528 4.15485C8.34352 4.4528 8.32527 4.92449 8.0918 5.26705C7.96591 5.45176 7.85849 5.6479 7.76953 5.85547C7.58203 6.29297 7.48438 6.75781 7.47656 7.25C7.47656 7.74219 7.57031 8.20703 7.75781 8.64453C7.84701 8.85265 7.95565 9.04928 8.08373 9.23441C8.32014 9.57612 8.34126 10.0495 8.05236 10.3482ZM5.96929 12.5015C5.68174 12.7987 5.20477 12.8097 4.93492 12.4963C4.74628 12.2772 4.57005 12.048 4.40625 11.8086C4.10156 11.3633 3.83984 10.8945 3.62109 10.4023C3.40234 9.91016 3.24219 9.39844 3.14062 8.86719C3.03906 8.33594 2.98438 7.79688 2.97656 7.25C2.97656 6.70312 3.03125 6.16406 3.14062 5.63281C3.25 5.10156 3.41016 4.58984 3.62109 4.09766C3.83203 3.60547 4.08984 3.13672 4.39453 2.69141C4.56013 2.44937 4.73958 2.21772 4.93288 1.99646C5.20437 1.6857 5.67974 1.69923 5.96665 1.99581C6.25674 2.29568 6.24431 2.77134 5.97755 3.09214C5.57477 3.57649 5.25023 4.10698 5.00391 4.68359C4.66016 5.48828 4.48438 6.34375 4.47656 7.25C4.47656 8.14844 4.64844 9 4.99219 9.80469C5.24004 10.3849 5.56912 10.9204 5.97943 11.4113C6.2457 11.7298 6.25794 12.2031 5.96929 12.5015ZM13.5 7.25C13.5 7.60156 13.4258 7.92969 13.2773 8.23438C13.0083 8.78655 12.7625 9.40917 12.9564 9.99197L16.9586 22.0188C17.1193 22.5016 16.7599 23 16.251 23C15.9307 23 15.6461 22.7954 15.5441 22.4917L14.707 20H7.79297L6.9559 22.4917C6.85389 22.7954 6.56933 23 6.24897 23C5.74011 23 5.3807 22.5016 5.54137 22.0188L9.54879 9.97633C9.73946 9.40335 9.49885 8.78897 9.23438 8.24609C9.08594 7.94141 9.00781 7.60938 9 7.25C9 6.9375 9.05859 6.64453 9.17578 6.37109C9.29297 6.09766 9.45312 5.85938 9.65625 5.65625C9.85938 5.45312 10.0977 5.29297 10.3711 5.17578C10.6445 5.05859 10.9375 5 11.25 5C11.5625 5 11.8555 5.05859 12.1289 5.17578C12.4023 5.29297 12.6406 5.45312 12.8438 5.65625C13.0469 5.85938 13.207 6.09766 13.3242 6.37109C13.4414 6.64453 13.5 6.9375 13.5 7.25ZM11.25 6.5C11.0469 6.5 10.8711 6.57422 10.7227 6.72266C10.5742 6.87109 10.5 7.04688 10.5 7.25C10.5 7.45312 10.5742 7.62891 10.7227 7.77734C10.8711 7.92578 11.0469 8 11.25 8C11.4531 8 11.6289 7.92578 11.7773 7.77734C11.9258 7.62891 12 7.45312 12 7.25C12 7.04688 11.9258 6.87109 11.7773 6.72266C11.6289 6.57422 11.4531 6.5 11.25 6.5ZM11.25 9.61719L9.78516 14H12.7148L11.25 9.61719ZM14.2148 18.5L13.207 15.5H9.29297L8.28516 18.5H14.2148Z" fill="url(#paint0_linear_600_515)"/>
                                                                        <defs>
                                                                            <linearGradient id="paint0_linear_600_515" x1="2.64442" y1="8.87995" x2="16.1136" y2="9.1956" gradientUnits="userSpaceOnUse">
                                                                            <stop stop-color="#72FC90"/>
                                                                            <stop offset="1" stop-color="#FFEE0F"/>
                                                                            </linearGradient>
                                                                        </defs>
                                                                    </svg>
                                                                </div>
                                                            </div>
                                                            <div class="hlr-block mt-4 d-flex justify-content-between border-gray">
                                                                <div class="loading">
                                                                    <span class="spinner-border text-white" role="status">
                                                                        <span class="visually-hidden">Loading...</span>
                                                                    </span>
                                                                </div>
                                                                <div class="py-3 px-4">
                                                                    <div class="fs-12 grey-color mb-1">MCC & MNC</div>
                                                                    <div id="mcc_mnc" class="fs-12 dark-color">
                                                                        -
                                                                    </div>
                                                                </div>
                                                                <div class="icon p-5">
                                                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="25" viewBox="0 0 24 25" fill="none">
                                                                        <path d="M16.98 4.5H7.01C6.21202 4.50106 5.44703 4.81852 4.88278 5.38278C4.31852 5.94703 4.00106 6.71202 4 7.51V17.48C4.00132 18.2805 4.31992 19.0479 4.886 19.614C5.45207 20.1801 6.21945 20.4987 7.02 20.5H16.99C17.788 20.4989 18.553 20.1815 19.1172 19.6172C19.6815 19.053 19.9989 18.288 20 17.49V7.52C19.9987 6.71945 19.6801 5.95207 19.114 5.386C18.5479 4.81992 17.7805 4.50132 16.98 4.5ZM10 5.5H14V9.5H10V5.5ZM9 19.5H7.02C6.48451 19.4992 5.97117 19.2861 5.59252 18.9075C5.21387 18.5288 5.00079 18.0155 5 17.48V15.5H9V19.5ZM14 19.5H10V15.5H14V19.5ZM19 17.49C18.9995 18.0229 18.7875 18.5339 18.4107 18.9107C18.0339 19.2875 17.5229 19.4995 16.99 19.5H15V15.5H19V17.49ZM19 14.5H5V7.51C5 6.97692 5.21177 6.46566 5.58872 6.08872C5.96566 5.71177 6.47692 5.5 7.01 5.5H9V10C9 10.1326 9.05268 10.2598 9.14645 10.3536C9.24021 10.4473 9.36739 10.5 9.5 10.5H19V14.5ZM19 9.5H15V5.5H16.98C17.5155 5.50079 18.0288 5.71387 18.4075 6.09252C18.7861 6.47117 18.9992 6.98451 19 7.52V9.5Z" fill="url(#paint0_linear_600_2417)"/>
                                                                        <defs>
                                                                            <linearGradient id="paint0_linear_600_2417" x1="3.67883" y1="10.0111" x2="16.6979" y2="10.4083" gradientUnits="userSpaceOnUse">
                                                                            <stop stop-color="#72FC90"/>
                                                                            <stop offset="1" stop-color="#FFEE0F"/>
                                                                            </linearGradient>
                                                                        </defs>
                                                                    </svg>
                                                                </div>
                                                            </div>
                                                            <div class="hlr-block mt-4 d-flex justify-content-between border-gray">
                                                                <div class="loading">
                                                                    <span class="spinner-border text-white" role="status">
                                                                        <span class="visually-hidden">Loading...</span>
                                                                    </span>
                                                                </div>
                                                                <div class="py-3 px-4">
                                                                    <div class="fs-12 grey-color mb-1">Ported</div>
                                                                    <div id="ported" class="fs-12 dark-color">
                                                                        -
                                                                    </div>
                                                                </div>
                                                                <div class="icon p-5">
                                                                    <svg xmlns="http://www.w3.org/2000/svg" width="18" height="19" viewBox="0 0 18 19" fill="none">
                                                                        <g clip-path="url(#clip0_600_2426)">
                                                                            <path d="M15.3114 3.53271H2.68945C2.4563 3.53271 2.26758 3.72143 2.26758 3.95459V10.94C2.26758 11.1729 2.4563 11.3619 2.68945 11.3619H4.16714V13.3295C4.16714 13.5624 4.35586 13.7514 4.58902 13.7514H5.72948V15.0451C5.72948 15.278 5.9182 15.467 6.15136 15.467H11.8495C12.0824 15.467 12.2714 15.278 12.2714 15.0451V13.7514H13.4121C13.645 13.7514 13.834 13.5624 13.834 13.3295V11.3619H15.3117C15.5445 11.3619 15.7335 11.1729 15.7335 10.94V3.95459C15.7333 3.72171 15.5445 3.53271 15.3114 3.53271ZM14.8895 10.5181H13.4118C13.179 10.5181 12.99 10.7071 12.99 10.94V12.9076H11.8495C11.6166 12.9076 11.4276 13.0966 11.4276 13.3295V14.6232H6.57323V13.3295C6.57323 13.0966 6.38452 12.9076 6.15136 12.9076H5.01089V10.94C5.01089 10.7071 4.82217 10.5181 4.58902 10.5181H3.11133V4.37646H14.8898L14.8895 10.5181Z" fill="url(#paint0_linear_600_2426)"/>
                                                                            <path d="M16.598 0.806274H1.40231C0.629156 0.806274 0 1.43543 0 2.20859V16.7914C0 17.5646 0.629156 18.1937 1.40231 18.1937H16.598C17.3711 18.1937 18 17.5646 18 16.7914V2.20859C18 1.43543 17.3711 0.806274 16.598 0.806274ZM17.1562 16.7914C17.1562 17.0996 16.9057 17.35 16.598 17.35H1.40231C1.09434 17.35 0.84375 17.0996 0.84375 16.7914V2.20859C0.84375 1.90062 1.09434 1.65002 1.40231 1.65002H16.598C16.9057 1.65002 17.1562 1.90062 17.1562 2.20859V16.7914Z" fill="url(#paint1_linear_600_2426)"/>
                                                                            <path d="M13.1357 8.57385C13.3686 8.57385 13.5576 8.38513 13.5576 8.15198V6.00745C13.5576 5.77429 13.3686 5.58557 13.1357 5.58557C12.9029 5.58557 12.7139 5.77429 12.7139 6.00745V8.15198C12.7139 8.38513 12.9029 8.57385 13.1357 8.57385Z" fill="url(#paint2_linear_600_2426)"/>
                                                                            <path d="M11.0684 8.57385C11.3012 8.57385 11.4902 8.38513 11.4902 8.15198V6.00745C11.4902 5.77429 11.3012 5.58557 11.0684 5.58557C10.8355 5.58557 10.6465 5.77429 10.6465 6.00745V8.15198C10.6465 8.38513 10.8352 8.57385 11.0684 8.57385Z" fill="url(#paint3_linear_600_2426)"/>
                                                                            <path d="M9 8.57385C9.23316 8.57385 9.42188 8.38513 9.42188 8.15198V6.00745C9.42188 5.77429 9.23316 5.58557 9 5.58557C8.76684 5.58557 8.57812 5.77429 8.57812 6.00745V8.15198C8.57812 8.38513 8.76684 8.57385 9 8.57385Z" fill="url(#paint4_linear_600_2426)"/>
                                                                            <path d="M6.93164 8.57385C7.1648 8.57385 7.35352 8.38513 7.35352 8.15198V6.00745C7.35352 5.77429 7.1648 5.58557 6.93164 5.58557C6.69848 5.58557 6.50977 5.77429 6.50977 6.00745V8.15198C6.50977 8.38513 6.69877 8.57385 6.93164 8.57385Z" fill="url(#paint5_linear_600_2426)"/>
                                                                            <path d="M4.86426 8.57385C5.09741 8.57385 5.28613 8.38513 5.28613 8.15198V6.00745C5.28613 5.77429 5.09741 5.58557 4.86426 5.58557C4.6311 5.58557 4.44238 5.77429 4.44238 6.00745V8.15198C4.44238 8.38513 4.63138 8.57385 4.86426 8.57385Z" fill="url(#paint6_linear_600_2426)"/>
                                                                        </g>
                                                                        <defs>
                                                                            <linearGradient id="paint0_linear_600_2426" x1="1.99728" y1="7.64341" x2="12.9517" y2="8.02047" gradientUnits="userSpaceOnUse">
                                                                            <stop stop-color="#72FC90"/>
                                                                            <stop offset="1" stop-color="#FFEE0F"/>
                                                                            </linearGradient>
                                                                            <linearGradient id="paint1_linear_600_2426" x1="-0.361314" y1="6.79528" x2="14.2842" y2="7.25779" gradientUnits="userSpaceOnUse">
                                                                            <stop stop-color="#72FC90"/>
                                                                            <stop offset="1" stop-color="#FFEE0F"/>
                                                                            </linearGradient>
                                                                            <linearGradient id="paint2_linear_600_2426" x1="12.6969" y1="6.61487" x2="13.3841" y2="6.62079" gradientUnits="userSpaceOnUse">
                                                                            <stop stop-color="#72FC90"/>
                                                                            <stop offset="1" stop-color="#FFEE0F"/>
                                                                            </linearGradient>
                                                                            <linearGradient id="paint3_linear_600_2426" x1="10.6295" y1="6.61487" x2="11.3167" y2="6.62079" gradientUnits="userSpaceOnUse">
                                                                            <stop stop-color="#72FC90"/>
                                                                            <stop offset="1" stop-color="#FFEE0F"/>
                                                                            </linearGradient>
                                                                            <linearGradient id="paint4_linear_600_2426" x1="8.56119" y1="6.61487" x2="9.24833" y2="6.62079" gradientUnits="userSpaceOnUse">
                                                                            <stop stop-color="#72FC90"/>
                                                                            <stop offset="1" stop-color="#FFEE0F"/>
                                                                            </linearGradient>
                                                                            <linearGradient id="paint5_linear_600_2426" x1="6.49283" y1="6.61487" x2="7.17997" y2="6.62079" gradientUnits="userSpaceOnUse">
                                                                            <stop stop-color="#72FC90"/>
                                                                            <stop offset="1" stop-color="#FFEE0F"/>
                                                                            </linearGradient>
                                                                            <linearGradient id="paint6_linear_600_2426" x1="4.42545" y1="6.61487" x2="5.11259" y2="6.62079" gradientUnits="userSpaceOnUse">
                                                                            <stop stop-color="#72FC90"/>
                                                                            <stop offset="1" stop-color="#FFEE0F"/>
                                                                            </linearGradient>
                                                                            <clipPath id="clip0_600_2426">
                                                                            <rect width="18" height="18" fill="white" transform="translate(0 0.5)"/>
                                                                            </clipPath>
                                                                        </defs>
                                                                    </svg>
                                                                </div>
                                                            </div>
                                                            <div class="hlr-block mt-4 d-flex justify-content-between border-gray">
                                                                <div class="loading">
                                                                    <span class="spinner-border text-white" role="status">
                                                                        <span class="visually-hidden">Loading...</span>
                                                                    </span>
                                                                </div>
                                                                <div class="py-3 px-4">
                                                                    <div class="fs-12 grey-color mb-1">Roaming</div>
                                                                    <div id="roaming" class="fs-12 dark-color">
                                                                        -
                                                                    </div>
                                                                </div>
                                                                <div class="icon p-5">
                                                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="25" viewBox="0 0 24 25" fill="none">
                                                                        <path d="M12 2.9375C10.1087 2.9375 8.25991 3.49833 6.68736 4.54907C5.11482 5.59981 3.88917 7.09327 3.16541 8.84059C2.44164 10.5879 2.25227 12.5106 2.62125 14.3656C2.99022 16.2205 3.90096 17.9244 5.2383 19.2617C6.57564 20.599 8.27951 21.5098 10.1345 21.8788C11.9894 22.2477 13.9121 22.0584 15.6594 21.3346C17.4067 20.6108 18.9002 19.3852 19.9509 17.8126C21.0017 16.2401 21.5625 14.3913 21.5625 12.5C21.5595 9.96478 20.5511 7.53425 18.7584 5.74158C16.9658 3.94891 14.5352 2.94048 12 2.9375ZM19.6472 8.9375H15.8803C15.4704 7.23724 14.7228 5.63677 13.6819 4.23125C14.9741 4.4968 16.1864 5.0606 17.2221 5.8777C18.2578 6.69479 19.0882 7.74258 19.6472 8.9375ZM20.4375 12.5C20.4381 13.3257 20.3172 14.147 20.0784 14.9375H16.1119C16.3794 13.3235 16.3794 11.6765 16.1119 10.0625H20.0784C20.3172 10.853 20.4381 11.6743 20.4375 12.5ZM12 20.9375C11.9766 20.9376 11.9535 20.9328 11.9321 20.9232C11.9108 20.9137 11.8918 20.8997 11.8763 20.8822C10.6688 19.5819 9.78188 17.9122 9.28125 16.0625H14.7188C14.2181 17.9122 13.3313 19.5819 12.1238 20.8822C12.1083 20.8997 12.0892 20.9137 12.0679 20.9232C12.0465 20.9328 12.0234 20.9376 12 20.9375ZM9.02907 14.9375C8.74033 13.3253 8.74033 11.6747 9.02907 10.0625H14.9709C15.2597 11.6747 15.2597 13.3253 14.9709 14.9375H9.02907ZM3.5625 12.5C3.56187 11.6743 3.68286 10.853 3.92157 10.0625H7.88813C7.62061 11.6765 7.62061 13.3235 7.88813 14.9375H3.92157C3.68286 14.147 3.56187 13.3257 3.5625 12.5ZM12 4.0625C12.0234 4.06237 12.0465 4.06724 12.0679 4.07678C12.0892 4.08632 12.1083 4.10031 12.1238 4.11781C13.3313 5.41812 14.2181 7.08781 14.7188 8.9375H9.28125C9.78188 7.08781 10.6688 5.41812 11.8763 4.11781C11.8918 4.10031 11.9108 4.08632 11.9321 4.07678C11.9535 4.06724 11.9766 4.06237 12 4.0625ZM10.3181 4.23125C9.27724 5.63677 8.52961 7.23724 8.11969 8.9375H4.35282C4.9118 7.74258 5.74225 6.69479 6.77795 5.8777C7.81364 5.0606 9.02593 4.4968 10.3181 4.23125ZM4.35282 16.0625H8.11969C8.52961 17.7628 9.27724 19.3632 10.3181 20.7687C9.02593 20.5032 7.81364 19.9394 6.77795 19.1223C5.74225 18.3052 4.9118 17.2574 4.35282 16.0625ZM13.6819 20.7687C14.7228 19.3632 15.4704 17.7628 15.8803 16.0625H19.6472C19.0882 17.2574 18.2578 18.3052 17.2221 19.1223C16.1864 19.9394 14.9741 20.5032 13.6819 20.7687Z" fill="url(#paint0_linear_600_2445)"/>
                                                                        <defs>
                                                                            <linearGradient id="paint0_linear_600_2445" x1="2.0536" y1="9.525" x2="17.6155" y2="9.99973" gradientUnits="userSpaceOnUse">
                                                                            <stop stop-color="#72FC90"/>
                                                                            <stop offset="1" stop-color="#FFEE0F"/>
                                                                            </linearGradient>
                                                                        </defs>
                                                                    </svg>
                                                                </div>
                                                            </div>
                                                            <div class="hlr-block mt-4 d-flex justify-content-between border-gray">
                                                                <div class="loading">
                                                                    <span class="spinner-border text-white" role="status">
                                                                        <span class="visually-hidden">Loading...</span>
                                                                    </span>
                                                                </div>
                                                                <div class="py-3 px-4">
                                                                    <div class="fs-12 grey-color mb-1">Description</div>
                                                                    <div id="description" class="fs-12 dark-color">
                                                                        -
                                                                    </div>
                                                                </div>
                                                                <div class="icon p-5">
                                                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="25" viewBox="0 0 24 25" fill="none">
                                                                        <path d="M12 2.75C10.0716 2.75 8.18657 3.32183 6.58319 4.39317C4.97982 5.46451 3.73013 6.98726 2.99218 8.76884C2.25422 10.5504 2.06114 12.5108 2.43735 14.4021C2.81355 16.2934 3.74215 18.0307 5.10571 19.3943C6.46928 20.7579 8.20656 21.6865 10.0979 22.0627C11.9892 22.4389 13.9496 22.2458 15.7312 21.5078C17.5127 20.7699 19.0355 19.5202 20.1068 17.9168C21.1782 16.3134 21.75 14.4284 21.75 12.5C21.7473 9.91498 20.7192 7.43661 18.8913 5.60872C17.0634 3.78084 14.585 2.75273 12 2.75ZM12 20.75C10.3683 20.75 8.77326 20.2661 7.41655 19.3596C6.05984 18.4531 5.00242 17.1646 4.378 15.6571C3.75358 14.1496 3.5902 12.4908 3.90853 10.8905C4.22685 9.29016 5.01259 7.82015 6.16637 6.66637C7.32016 5.51259 8.79017 4.72685 10.3905 4.40852C11.9909 4.09019 13.6497 4.25357 15.1571 4.87799C16.6646 5.50242 17.9531 6.55984 18.8596 7.91655C19.7661 9.27325 20.25 10.8683 20.25 12.5C20.2475 14.6873 19.3775 16.7843 17.8309 18.3309C16.2843 19.8775 14.1873 20.7475 12 20.75ZM13.5 17C13.5 17.1989 13.421 17.3897 13.2803 17.5303C13.1397 17.671 12.9489 17.75 12.75 17.75C12.3522 17.75 11.9706 17.592 11.6893 17.3107C11.408 17.0294 11.25 16.6478 11.25 16.25V12.5C11.0511 12.5 10.8603 12.421 10.7197 12.2803C10.579 12.1397 10.5 11.9489 10.5 11.75C10.5 11.5511 10.579 11.3603 10.7197 11.2197C10.8603 11.079 11.0511 11 11.25 11C11.6478 11 12.0294 11.158 12.3107 11.4393C12.592 11.7206 12.75 12.1022 12.75 12.5V16.25C12.9489 16.25 13.1397 16.329 13.2803 16.4697C13.421 16.6103 13.5 16.8011 13.5 17ZM10.5 8.375C10.5 8.1525 10.566 7.93499 10.6896 7.74998C10.8132 7.56498 10.9889 7.42078 11.1945 7.33564C11.4001 7.25049 11.6263 7.22821 11.8445 7.27162C12.0627 7.31502 12.2632 7.42217 12.4205 7.5795C12.5778 7.73684 12.685 7.93729 12.7284 8.15552C12.7718 8.37375 12.7495 8.59995 12.6644 8.80552C12.5792 9.01109 12.435 9.18679 12.25 9.3104C12.065 9.43402 11.8475 9.5 11.625 9.5C11.3266 9.5 11.0405 9.38147 10.8295 9.1705C10.6185 8.95952 10.5 8.67337 10.5 8.375Z" fill="url(#paint0_linear_600_2459)"/>
                                                                        <defs>
                                                                            <linearGradient id="paint0_linear_600_2459" x1="1.85858" y1="9.46667" x2="17.7256" y2="9.9507" gradientUnits="userSpaceOnUse">
                                                                            <stop stop-color="#72FC90"/>
                                                                            <stop offset="1" stop-color="#FFEE0F"/>
                                                                            </linearGradient>
                                                                        </defs>
                                                                    </svg>
                                                                </div>
                                                            </div>
                                                            <div class="hlr-block mt-4 d-flex justify-content-between border-gray">
                                                                <div class="loading">
                                                                    <span class="spinner-border text-white" role="status">
                                                                        <span class="visually-hidden">Loading...</span>
                                                                    </span>
                                                                </div>
                                                                <div class="py-3 px-4">
                                                                    <div class="fs-12 grey-color mb-1">Error Code</div>
                                                                    <div id="error" class="fs-12 dark-color">
                                                                        -
                                                                    </div>
                                                                </div>
                                                                <div class="icon p-5">
                                                                    <svg xmlns="http://www.w3.org/2000/svg" width="22" height="21" viewBox="0 0 22 21" fill="none">
                                                                        <path d="M13 17.5C16.771 17.5 18.657 17.5 19.828 16.328C21 15.157 21 13.271 21 9.5C21 5.729 21 3.843 19.828 2.672C18.657 1.5 16.771 1.5 13 1.5H9C5.229 1.5 3.343 1.5 2.172 2.672C1 3.843 1 5.729 1 9.5C1 13.271 1 15.157 2.172 16.328C2.825 16.982 3.7 17.271 5 17.398" stroke="url(#paint0_linear_600_2149)" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                                                        <path d="M13.0002 17.5C11.7642 17.5 10.4022 18 9.15924 18.645C7.16124 19.682 6.16224 20.201 5.67024 19.87C5.17824 19.54 5.27124 18.515 5.45824 16.466L5.50024 16M8.87924 7.37903L11.0002 9.50003M11.0002 9.50003L13.1212 11.621M11.0002 9.50003L13.1212 7.37903M11.0002 9.50003L8.87924 11.621" stroke="url(#paint1_linear_600_2149)" stroke-width="1.5" stroke-linecap="round"/>
                                                                        <defs>
                                                                            <linearGradient id="paint0_linear_600_2149" x1="0.59854" y1="7.01111" x2="16.8639" y2="7.63134" gradientUnits="userSpaceOnUse">
                                                                            <stop stop-color="#72FC90"/>
                                                                            <stop offset="1" stop-color="#FFEE0F"/>
                                                                            </linearGradient>
                                                                            <linearGradient id="paint1_linear_600_2149" x1="5.15077" y1="11.7157" x2="11.5123" y2="11.8361" gradientUnits="userSpaceOnUse">
                                                                            <stop stop-color="#72FC90"/>
                                                                            <stop offset="1" stop-color="#FFEE0F"/>
                                                                            </linearGradient>
                                                                        </defs>
                                                                    </svg>
                                                                </div>
                                                            </div>
                                                        </div>
											        </div>
										        </div>
									        </div>
                                            <!--end::Col-->
                                        </div>
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
        <script src="/assets/js/hlr.js"></script>

	</body>
	<!--end::Body-->
</html>