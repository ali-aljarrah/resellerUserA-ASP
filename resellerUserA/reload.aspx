﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reload.aspx.cs" Inherits="resellerUserA.reload" %>

<%@ Register Src="~/Controls/head.ascx" TagPrefix="uc1" TagName="head" %>

<%@ Register Src="~/Controls/menuTop.ascx" TagPrefix="uc1" TagName="menuTop" %>
<%@ Register Src="~/Controls/sideBar.ascx" TagPrefix="uc1" TagName="sideBar" %>
<%@ Register Src="~/Controls/footer.ascx" TagPrefix="uc1" TagName="footer" %>
<%@ Register Src="~/Controls/footerLinks.ascx" TagPrefix="uc1" TagName="footerLinks" %>



<uc1:head runat="server" ID="head" />

<title>Sent SMS Report</title>
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
            <uc1:menuTop runat="server" id="menuTop1" parentPageText="Billing" childPageText="Reload"/>
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
                                        <div class="col-md-9 mb-md-0 mb-5 mt-5">
                                            <!--begin::Page title-->
                                            <div class="page-title d-flex flex-column justify-content-center gap-1">
                                                <!--begin::Title-->
                                                <h1 class="page-heading d-flex flex-column justify-content-center text-dark fw-bold m-1 pb-5">Chose your plane</h1>
                                                <!--end::Title-->
                                            </div>
                                            <!--end::Page title-->
                                            <!--begin::Card widget 4-->
                                            <div class="card card-flush py-5 border-0">
                                                <!--begin::Card body-->
                                                <div class="card-body d-flex shadow-xs bg-gradient rounded-4">
                                                    <div class="mw-100 d-flex align-items-center">
                                                        <div class="row">
                                                            <div class="col-md-6 mb-5 mb-md-0">
                                                                <div class="fs-14 fw-600 mb-2 white-color pb-2">What are the benefits?</div>
                                                                <div class="fs-14 white-color ">
                                                                Elevate your experience with exclusive perks, seamless convenience and enhanced value. Discover a world of advantages waiting for you.  
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="row">
                                                                    <div class="col-md-6 mb-5 mt-5 pt-5">
                                                                        <div class="d-flex justify-content-start align-items-start">
                                                                            <div class="me-2">
                                                                                <svg width="20" height="21" viewBox="0 0 20 21" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                                    <path d="M10 2.375C8.39303 2.375 6.82214 2.85152 5.486 3.74431C4.14985 4.6371 3.10844 5.90605 2.49348 7.3907C1.87852 8.87535 1.71762 10.509 2.03112 12.0851C2.34463 13.6612 3.11846 15.1089 4.25476 16.2452C5.39106 17.3815 6.8388 18.1554 8.41489 18.4689C9.99099 18.7824 11.6247 18.6215 13.1093 18.0065C14.594 17.3916 15.8629 16.3502 16.7557 15.014C17.6485 13.6779 18.125 12.107 18.125 10.5C18.1227 8.34581 17.266 6.28051 15.7427 4.75727C14.2195 3.23403 12.1542 2.37727 10 2.375ZM7.93985 13.625H12.0602C11.6406 15.0578 10.9375 16.3492 10 17.3664C9.0625 16.3492 8.35938 15.0578 7.93985 13.625ZM7.65625 12.375C7.44896 11.1336 7.44896 9.86641 7.65625 8.625H12.3438C12.551 9.86641 12.551 11.1336 12.3438 12.375H7.65625ZM3.125 10.5C3.12446 9.86597 3.21202 9.23493 3.38516 8.625H6.38985C6.20339 9.86805 6.20339 11.132 6.38985 12.375H3.38516C3.21202 11.7651 3.12446 11.134 3.125 10.5ZM12.0602 7.375H7.93985C8.35938 5.94219 9.0625 4.65078 10 3.63359C10.9375 4.65078 11.6406 5.94219 12.0602 7.375ZM13.6102 8.625H16.6148C16.9617 9.85093 16.9617 11.1491 16.6148 12.375H13.6102C13.7966 11.132 13.7966 9.86805 13.6102 8.625ZM16.1227 7.375H13.3547C13.0357 6.11993 12.5001 4.93019 11.7719 3.85938C12.7022 4.10939 13.57 4.55135 14.3193 5.15682C15.0686 5.76229 15.6829 6.51788 16.1227 7.375ZM8.22813 3.85938C7.49992 4.93019 6.96427 6.11993 6.64532 7.375H3.87735C4.31713 6.51788 4.93143 5.76229 5.68074 5.15682C6.43005 4.55135 7.29778 4.10939 8.22813 3.85938ZM3.87735 13.625H6.64532C6.96427 14.8801 7.49992 16.0698 8.22813 17.1406C7.29778 16.8906 6.43005 16.4487 5.68074 15.8432C4.93143 15.2377 4.31713 14.4821 3.87735 13.625ZM11.7719 17.1406C12.5001 16.0698 13.0357 14.8801 13.3547 13.625H16.1227C15.6829 14.4821 15.0686 15.2377 14.3193 15.8432C13.57 16.4487 12.7022 16.8906 11.7719 17.1406Z" fill="white"/>
                                                                                </svg>
                                                                            </div>
                                                                            <div class="fs-12 white-color ">
                                                                            International coverage
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-6 mb-5 mt-5 pt-5">
                                                                        <div class="d-flex justify-content-start align-items-start">
                                                                            <div class="me-2">
                                                                                <svg width="21" height="21" viewBox="0 0 21 21" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M10.456 1.54167H10.5427C11.2918 1.54167 11.916 1.54167 12.411 1.60834C12.9343 1.67834 13.4068 1.83334 13.786 2.21251C14.166 2.59251 14.321 3.06501 14.391 3.58751C14.441 3.95417 14.4535 4.39084 14.4569 4.89584C14.9969 4.91334 15.4785 4.94584 15.9068 5.00251C16.8835 5.13417 17.6743 5.41084 18.2985 6.03417C18.9218 6.65834 19.1985 7.44917 19.3302 8.42584C19.4577 9.37584 19.4577 10.5883 19.4577 12.12V12.2133C19.4577 13.745 19.4577 14.9583 19.3302 15.9075C19.1985 16.8842 18.9218 17.675 18.2985 18.2992C17.6743 18.9225 16.8835 19.1992 15.9068 19.3308C14.9568 19.4583 13.7443 19.4583 12.2127 19.4583H8.78602C7.25435 19.4583 6.04102 19.4583 5.09185 19.3308C4.11518 19.1992 3.32435 18.9225 2.70018 18.2992C2.07685 17.675 1.80018 16.8842 1.66852 15.9075C1.54102 14.9575 1.54102 13.745 1.54102 12.2133V12.12C1.54102 10.5883 1.54102 9.37501 1.66852 8.42584C1.80018 7.44917 2.07685 6.65834 2.70018 6.03417C3.32435 5.41084 4.11518 5.13417 5.09185 5.00251C5.57311 4.94292 6.05705 4.90732 6.54185 4.89584C6.54518 4.39084 6.55852 3.95417 6.60768 3.58751C6.67768 3.06501 6.83268 2.59251 7.21185 2.21251C7.59185 1.83334 8.06435 1.67917 8.58685 1.60834C9.08268 1.54167 9.70768 1.54167 10.456 1.54167ZM7.79268 4.87667C8.10768 4.87501 8.43852 4.87501 8.78602 4.87501H12.2127C12.5602 4.87501 12.891 4.87501 13.206 4.87667C13.2027 4.40167 13.191 4.04334 13.1527 3.75417C13.1002 3.37001 13.011 3.20501 12.9027 3.09667C12.7943 2.98834 12.6293 2.89917 12.2443 2.84667C11.8427 2.79334 11.3027 2.79167 10.4993 2.79167C9.69602 2.79167 9.15602 2.79334 8.75352 2.84751C8.36935 2.89917 8.20435 2.98834 8.09602 3.09751C7.98768 3.20584 7.89852 3.37001 7.84602 3.75417C7.80768 4.04251 7.79602 4.40084 7.79268 4.87667ZM5.25768 6.24167C4.41935 6.35417 3.93602 6.56584 3.58268 6.91834C3.23102 7.27084 3.01935 7.75417 2.90685 8.59251C2.79185 9.44834 2.79018 10.5775 2.79018 12.1667C2.79018 13.7558 2.79185 14.885 2.90685 15.7417C3.01935 16.5792 3.23102 17.0625 3.58352 17.415C3.93602 17.7675 4.41935 17.9792 5.25768 18.0917C6.11435 18.2067 7.24268 18.2083 8.83185 18.2083H12.1652C13.7543 18.2083 14.8835 18.2067 15.7402 18.0917C16.5777 17.9792 17.061 17.7675 17.4135 17.415C17.766 17.0625 17.9777 16.5792 18.0902 15.7408C18.2052 14.885 18.2069 13.7558 18.2069 12.1667C18.2069 10.5775 18.2052 9.44917 18.0902 8.59167C17.9777 7.75417 17.766 7.27084 17.4135 6.91834C17.061 6.56584 16.5777 6.35417 15.7393 6.24167C14.8835 6.12667 13.7543 6.12501 12.1652 6.12501H8.83185C7.24268 6.12501 6.11518 6.12667 5.25768 6.24167ZM10.4993 8.20834C10.6651 8.20834 10.8241 8.27419 10.9413 8.3914C11.0585 8.50861 11.1243 8.66758 11.1243 8.83334V8.84167C12.0318 9.07001 12.791 9.78584 12.791 10.7775C12.791 10.9433 12.7252 11.1022 12.608 11.2194C12.4907 11.3367 12.3318 11.4025 12.166 11.4025C12.0003 11.4025 11.8413 11.3367 11.7241 11.2194C11.6069 11.1022 11.541 10.9433 11.541 10.7775C11.541 10.4575 11.186 10.0142 10.4993 10.0142C9.81268 10.0142 9.45768 10.4575 9.45768 10.7775C9.45768 11.0975 9.81268 11.5417 10.4993 11.5417C11.6535 11.5417 12.791 12.3417 12.791 13.5558C12.791 14.5475 12.0318 15.2625 11.1243 15.4917V15.5C11.1243 15.6658 11.0585 15.8247 10.9413 15.9419C10.8241 16.0592 10.6651 16.125 10.4993 16.125C10.3336 16.125 10.1746 16.0592 10.0574 15.9419C9.9402 15.8247 9.87435 15.6658 9.87435 15.5V15.4917C8.96685 15.2633 8.20768 14.5475 8.20768 13.5558C8.20768 13.3901 8.27353 13.2311 8.39074 13.1139C8.50795 12.9967 8.66692 12.9308 8.83268 12.9308C8.99844 12.9308 9.15741 12.9967 9.27462 13.1139C9.39183 13.2311 9.45768 13.3901 9.45768 13.5558C9.45768 13.8758 9.81268 14.3192 10.4993 14.3192C11.186 14.3192 11.541 13.8758 11.541 13.5558C11.541 13.2358 11.186 12.7917 10.4993 12.7917C9.34518 12.7917 8.20768 11.9917 8.20768 10.7775C8.20768 9.78584 8.96685 9.07001 9.87435 8.84167V8.83334C9.87435 8.66758 9.9402 8.50861 10.0574 8.3914C10.1746 8.27419 10.3336 8.20834 10.4993 8.20834Z" fill="white"/>
                                                                                </svg>
                                                                            </div>
                                                                            <div class="fs-12 white-color ">
                                                                            No setup fees or charges
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-6 mb-5">
                                                                        <div class="d-flex justify-content-start align-items-start">
                                                                            <div class="me-2">
                                                                                <svg width="20" height="21" viewBox="0 0 20 21" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                                    <path d="M11.4392 6.75C11.2168 6.75002 10.9968 6.79461 10.7919 6.88114C10.5871 6.96766 10.4017 7.09436 10.2467 7.25375L10.0011 7.50688L9.75294 7.25375C9.5979 7.09439 9.4125 6.96772 9.20768 6.88123C9.00286 6.79474 8.78278 6.75018 8.56044 6.75018C8.33811 6.75018 8.11803 6.79474 7.91321 6.88123C7.70839 6.96772 7.52298 7.09439 7.36794 7.25375C7.05178 7.58018 6.875 8.01681 6.875 8.47125C6.875 8.92569 7.05178 9.36231 7.36794 9.68875L10.0011 12.375L12.6317 9.68875C12.9479 9.36231 13.1246 8.92569 13.1246 8.47125C13.1246 8.01681 12.9479 7.58018 12.6317 7.25375C12.4767 7.09436 12.2913 6.96766 12.0864 6.88114C11.8816 6.79461 11.6615 6.75002 11.4392 6.75Z" fill="white"/>
                                                                                    <path d="M11.3967 18.7046C11.2247 19.0055 10.841 19.1094 10.5406 18.9364V18.9364C10.2417 18.7643 10.1384 18.3828 10.3095 18.0833L12.5 14.25H16.25C16.4142 14.2502 16.5769 14.2181 16.7286 14.1554C16.8804 14.0926 17.0183 14.0006 17.1344 13.8844C17.2506 13.7683 17.3426 13.6304 17.4054 13.4786C17.4681 13.3269 17.5002 13.1642 17.5 13V5.5C17.5002 5.33578 17.4681 5.17312 17.4054 5.02135C17.3426 4.86959 17.2506 4.73169 17.1344 4.61557C17.0183 4.49944 16.8804 4.40738 16.7286 4.34465C16.5769 4.28192 16.4142 4.24975 16.25 4.25H3.75C3.58578 4.24975 3.42312 4.28192 3.27135 4.34465C3.11959 4.40738 2.98169 4.49944 2.86557 4.61557C2.74944 4.73169 2.65738 4.86959 2.59465 5.02135C2.53192 5.17312 2.49975 5.33578 2.5 5.5V13C2.49975 13.1642 2.53192 13.3269 2.59465 13.4786C2.65738 13.6304 2.74944 13.7683 2.86557 13.8844C2.98169 14.0006 3.11959 14.0926 3.27135 14.1554C3.42312 14.2181 3.58578 14.2502 3.75 14.25H8.75C9.09518 14.25 9.375 14.5298 9.375 14.875V14.875C9.375 15.2202 9.09518 15.5 8.75 15.5H3.75C3.08696 15.5 2.45107 15.2366 1.98223 14.7678C1.51339 14.2989 1.25 13.663 1.25 13V5.5C1.24992 5.17167 1.31453 4.84655 1.44013 4.54319C1.56574 4.23984 1.74989 3.96421 1.98205 3.73205C2.21421 3.49989 2.48984 3.31574 2.79319 3.19013C3.09655 3.06453 3.42167 2.99992 3.75 3H16.25C16.5783 2.99992 16.9035 3.06453 17.2068 3.19013C17.5102 3.31574 17.7858 3.49989 18.0179 3.73205C18.2501 3.96421 18.4343 4.23984 18.5599 4.54319C18.6855 4.84655 18.7501 5.17167 18.75 5.5V13C18.75 13.663 18.4866 14.2989 18.0178 14.7678C17.5489 15.2366 16.913 15.5 16.25 15.5H13.2281L11.3967 18.7046Z" fill="white"/>
                                                                                </svg>
                                                                            </div>
                                                                            <div class="fs-12 white-color ">
                                                                            84% to 89% delivery rate
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-6 mb-5">
                                                                        <div class="d-flex justify-content-start align-items-start">
                                                                            <div class="me-2">
                                                                                <svg width="21" height="21" viewBox="0 0 21 21" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                                    <path d="M14.6667 12.1667C14.8877 12.1667 15.0996 12.0789 15.2559 11.9226C15.4122 11.7663 15.5 11.5543 15.5 11.3333C15.5 11.1123 15.4122 10.9004 15.2559 10.7441C15.0996 10.5878 14.8877 10.5 14.6667 10.5C14.4457 10.5 14.2337 10.5878 14.0774 10.7441C13.9211 10.9004 13.8333 11.1123 13.8333 11.3333C13.8333 11.5543 13.9211 11.7663 14.0774 11.9226C14.2337 12.0789 14.4457 12.1667 14.6667 12.1667ZM14.6667 15.5C14.8877 15.5 15.0996 15.4122 15.2559 15.2559C15.4122 15.0996 15.5 14.8877 15.5 14.6667C15.5 14.4457 15.4122 14.2337 15.2559 14.0774C15.0996 13.9211 14.8877 13.8333 14.6667 13.8333C14.4457 13.8333 14.2337 13.9211 14.0774 14.0774C13.9211 14.2337 13.8333 14.4457 13.8333 14.6667C13.8333 14.8877 13.9211 15.0996 14.0774 15.2559C14.2337 15.4122 14.4457 15.5 14.6667 15.5ZM11.3333 11.3333C11.3333 11.5543 11.2455 11.7663 11.0893 11.9226C10.933 12.0789 10.721 12.1667 10.5 12.1667C10.279 12.1667 10.067 12.0789 9.91074 11.9226C9.75446 11.7663 9.66667 11.5543 9.66667 11.3333C9.66667 11.1123 9.75446 10.9004 9.91074 10.7441C10.067 10.5878 10.279 10.5 10.5 10.5C10.721 10.5 10.933 10.5878 11.0893 10.7441C11.2455 10.9004 11.3333 11.1123 11.3333 11.3333ZM11.3333 14.6667C11.3333 14.8877 11.2455 15.0996 11.0893 15.2559C10.933 15.4122 10.721 15.5 10.5 15.5C10.279 15.5 10.067 15.4122 9.91074 15.2559C9.75446 15.0996 9.66667 14.8877 9.66667 14.6667C9.66667 14.4457 9.75446 14.2337 9.91074 14.0774C10.067 13.9211 10.279 13.8333 10.5 13.8333C10.721 13.8333 10.933 13.9211 11.0893 14.0774C11.2455 14.2337 11.3333 14.4457 11.3333 14.6667ZM6.33333 12.1667C6.55435 12.1667 6.76631 12.0789 6.92259 11.9226C7.07887 11.7663 7.16667 11.5543 7.16667 11.3333C7.16667 11.1123 7.07887 10.9004 6.92259 10.7441C6.76631 10.5878 6.55435 10.5 6.33333 10.5C6.11232 10.5 5.90036 10.5878 5.74408 10.7441C5.5878 10.9004 5.5 11.1123 5.5 11.3333C5.5 11.5543 5.5878 11.7663 5.74408 11.9226C5.90036 12.0789 6.11232 12.1667 6.33333 12.1667ZM6.33333 15.5C6.55435 15.5 6.76631 15.4122 6.92259 15.2559C7.07887 15.0996 7.16667 14.8877 7.16667 14.6667C7.16667 14.4457 7.07887 14.2337 6.92259 14.0774C6.76631 13.9211 6.55435 13.8333 6.33333 13.8333C6.11232 13.8333 5.90036 13.9211 5.74408 14.0774C5.5878 14.2337 5.5 14.4457 5.5 14.6667C5.5 14.8877 5.5878 15.0996 5.74408 15.2559C5.90036 15.4122 6.11232 15.5 6.33333 15.5Z" fill="white"/>
                                                                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M6.33268 1.95833C6.49844 1.95833 6.65741 2.02418 6.77462 2.14139C6.89183 2.2586 6.95768 2.41757 6.95768 2.58333V3.21916C7.50935 3.20833 8.11685 3.20833 8.78518 3.20833H12.2127C12.8818 3.20833 13.4893 3.20833 14.041 3.21916V2.58333C14.041 2.41757 14.1069 2.2586 14.2241 2.14139C14.3413 2.02418 14.5003 1.95833 14.666 1.95833C14.8318 1.95833 14.9907 2.02418 15.108 2.14139C15.2252 2.2586 15.291 2.41757 15.291 2.58333V3.27249C15.5077 3.28916 15.7127 3.30999 15.9068 3.33583C16.8835 3.46749 17.6743 3.74416 18.2985 4.36749C18.9218 4.99166 19.1985 5.78249 19.3302 6.75916C19.4577 7.70916 19.4577 8.92166 19.4577 10.4533V12.2133C19.4577 13.745 19.4577 14.9583 19.3302 15.9075C19.1985 16.8842 18.9218 17.675 18.2985 18.2992C17.6743 18.9225 16.8835 19.1992 15.9068 19.3308C14.9568 19.4583 13.7443 19.4583 12.2127 19.4583H8.78602C7.25435 19.4583 6.04102 19.4583 5.09185 19.3308C4.11518 19.1992 3.32435 18.9225 2.70018 18.2992C2.07685 17.675 1.80018 16.8842 1.66852 15.9075C1.54102 14.9575 1.54102 13.745 1.54102 12.2133V10.4533C1.54102 8.92166 1.54102 7.70833 1.66852 6.75916C1.80018 5.78249 2.07685 4.99166 2.70018 4.36749C3.32435 3.74416 4.11518 3.46749 5.09185 3.33583C5.28602 3.30999 5.49185 3.28916 5.70768 3.27249V2.58333C5.70768 2.41757 5.77353 2.2586 5.89074 2.14139C6.00795 2.02418 6.16692 1.95833 6.33268 1.95833ZM5.25768 4.57499C4.42018 4.68749 3.93685 4.89916 3.58435 5.25166C3.23185 5.60416 3.02018 6.08749 2.90768 6.92583C2.88852 7.06749 2.87268 7.21749 2.85935 7.37499H18.1393C18.126 7.21666 18.1102 7.06749 18.091 6.92499C17.9785 6.08749 17.7669 5.60416 17.4143 5.25166C17.0618 4.89916 16.5785 4.68749 15.7402 4.57499C14.8843 4.45999 13.7552 4.45833 12.166 4.45833H8.83268C7.24352 4.45833 6.11518 4.45999 5.25768 4.57499ZM2.79102 10.5C2.79102 9.78833 2.79102 9.16916 2.80185 8.62499H18.1968C18.2077 9.16916 18.2077 9.78833 18.2077 10.5V12.1667C18.2077 13.7558 18.206 14.885 18.091 15.7417C17.9785 16.5792 17.7669 17.0625 17.4143 17.415C17.0618 17.7675 16.5785 17.9792 15.7402 18.0917C14.8843 18.2067 13.7552 18.2083 12.166 18.2083H8.83268C7.24352 18.2083 6.11518 18.2067 5.25768 18.0917C4.42018 17.9792 3.93685 17.7675 3.58435 17.415C3.23185 17.0625 3.02018 16.5792 2.90768 15.7408C2.79268 14.885 2.79102 13.7558 2.79102 12.1667V10.5Z" fill="white"/>
                                                                                </svg>
                                                                            </div>
                                                                            <div class="fs-12 white-color ">
                                                                            No monthly or recurring fees
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>    
                                                <hr class="my-5"/>
                                                <div class="row mt-10">
                                                    <div class="col-lg-6 mb-5 mb-lg-0">
                                                        <div>
                                                            <div id="tab-1" class="d-flex justify-content-between align-items-center mb-5">
                                                                standard
                                                            </div>
                                                            <div id="tab-2" class="d-flex justify-content-between align-items-center mb-5">
                                                                hight
                                                            </div>
                                                            <div id="tab-3" class="d-flex justify-content-between align-items-center mb-5">
                                                                hld
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-6">
                                                        <div style="max-height: 430px ;min-height: 430px;overflow-y: scroll;">
                                                            <div id="content-1"></div>
                                                            <div id="content-2" style="display: none;"></div>
                                                            <div id="content-3" style="display: none;"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <hr class="my-5"/>
                                                <div class="row mt-5">
                                                    <div class="col-md-12">
                                                        <div class="card card-flush bg-soft-gray shadow-xs h-lg-100">
                                                            <div class="pro-plan mw-100 p-5 m-0">
                                                                <div>
                                                                    <div class="fs-14 fw-600 mb-3">
                                                                        For marketers who need more
                                                                    </div>
                                                                    <div class="fs-25 mb-3 fw-600">
                                                                        Direct Connection
                                                                    </div>
                                                                    <div class="fs-14 mb-5">
                                                                        With our direct-to-carrier SMS solution, your messages will reach recipients faster and more reliably than ever before. Take control, ensure security, and experience the ultimate in SMS customization. Elevate your SMS communication game with us today!
                                                                    </div>
                                                                    <div class="mt-5 pt-5">
                                                                        <a class="btn btn-primary py-3 px-6 rounded-1" href="#">Get a quote</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--end::Card body-->
                                            </div>
                                            <!--end::Card widget 4-->
                                        </div>
                                        <!--end::Col-->
                                        <!--begin::Col-->
										<div class="col-md-3 mb-md-0 mb-5 mt-5 mt-md-0">
                                            <div class="card card-flush shadow-xs h-100 border-0">
                                                    <div class="custom-border-left h-100 mt-10 mt-md-0">
                                                        <div class="p-8">
                                                            <div>
                                                                <div class="mb-6">
                                                                    <p class="fs-16 fw-600 dark-color mb-3">
                                                                    Terms & Conditions
                                                                    </p>
                                                                    <ul>
                                                                        <li class="fs-12 dark-color mb-4">
                                                                        All prices are stated in USD Dollar. We reserve the right to modify any advertised price at our discretion.
                                                                        </li>
                                                                        <li class="fs-12 dark-color mb-4">
                                                                        Payment options include PayPal, major credit or debit cards, and cryptocurrency. If you do not have a PayPal account, you can easily sign up by visiting <a href="https://www.paypal.com/" target="_blank" rel="noopener noreferrer">PayPal's website.</a>
                                                                        </li>
                                                                        <li class="fs-12 dark-color mb-4">
                                                                        Account reloading typically occurs within 20 minutes to 1 hour after our sales team approves the transaction. In case of any delays, we will notify you promptly.
                                                                        </li>
                                                                        <li class="fs-12 dark-color mb-4">
                                                                        To maintain a safe and secure platform for all our customers, we may request identity verification. This verification process helps prevent fraudulent activities and ensures the security of your account.
                                                                        </li>
                                                                        <li class="fs-12 dark-color mb-4">
                                                                        As part of the ID verification process, we require your full name and supporting documents to verify your identity. Accounts that pass the ID verification process will be considered verified buyers after their first transaction.
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                                <div class="mb-6">
                                                                    <p class="fs-16 fw-600 dark-color mb-3">
                                                                    CryptoCurrency
                                                                    </p>
                                                                    <ul>
                                                                        <li class="fs-12 dark-color mb-4">
                                                                        We accept major cryptocurrencies. If you wish to use a cryptocurrency not listed on our platform, kindly contact us, and we will provide you with the necessary wallet ID.
                                                                        </li>
                                                                    </ul>
                                                                    <div class="text-center mt-5">
                                                                        <img width="200" height="54" class="img-fluid" src="/assets/img/home/Frame 93.png" alt="Accepted payment methods">
                                                                    </div>
                                                                    <div class="text-center">
                                                                        <img width="290" height="75" class="img-fluid" src="/assets/img/home/Layer 1.svg" alt="Accepted payment methods">
                                                                    </div>
                                                                </div>
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
        <uc1:footerLinks runat="server" id="footerLinks" />
	</body>
	<!--end::Body-->
</html>
