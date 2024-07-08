<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sms_temp.aspx.cs" Inherits="resellerUserA.sms_temp" %>

<%@ Register Src="~/Controls/head.ascx" TagPrefix="uc1" TagName="head" %>

<%@ Register Src="~/Controls/menuTop.ascx" TagPrefix="uc1" TagName="menuTop" %>
<%@ Register Src="~/Controls/sideBar.ascx" TagPrefix="uc1" TagName="sideBar" %>
<%@ Register Src="~/Controls/footer.ascx" TagPrefix="uc1" TagName="footer" %>
<%@ Register Src="~/Controls/footerLinks.ascx" TagPrefix="uc1" TagName="footerLinks" %>
<%@ Register Src="~/Controls/loader.ascx" TagPrefix="uc1" TagName="loader" %>


<uc1:head runat="server" ID="head" />

<title>SMS Templates</title>
</head>
<!--end::Head-->
<!--begin::Body-->
<body id="kt_app_body" data-kt-app-header-fixed="true" data-kt-app-header-fixed-mobile="true" data-kt-app-sidebar-enabled="true" data-kt-app-sidebar-fixed="true" data-kt-app-sidebar-push-toolbar="true" data-kt-app-sidebar-push-footer="true" class="app-default">
    <form id="temp_form" name="temp_form" runat="server">
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
                 <uc1:menuTop runat="server" id="menuTop1" parentPageText="Favorites" childPageText="SMS Templates"/>
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
                                        <div class="col-xl-8 mb-xl-10">
                                            <!--begin::List widget 10-->
                                            <div class="card card-flush shadow-xs">
                                                <!--begin::Header-->
                                                <div class="card-header d-block pt-7">
                                                    <!--begin::Title-->
                                                    <h3 class="card-title card-label fs-20 fw-bold color-black-1">
                                                    Create & Edit SMS Template
                                                    </h3>
                                                    <!--end::Title-->
                                                    <p class="color-neutral-grey mt-1 fs-14">
                                                    Take advantage of our user-friendly platform to craft compelling SMS templates that can be easily adapted and utilized across different campaigns, saving you time and effort while maximizing your outreach.
                                                    </p>
                                                </div>
                                                <!--end::Header-->
                                                <!--begin::Body-->
                                                <div class="card-body">
                                                    <input type="hidden" value="{F36498C6-1685-4761-93FE-FD07E7589C4F}" id="token" name="token">
                                                    <div class="mb-10">
                                                        <label for="temp_name" class="form-label fs-14 color-black-1 required">Template name</label>
                                                        <input value="" type="text" name="temp_name" id="temp_name" runat="server" class="form-control form-custom-input" placeholder="Template name" data-bs-toggle="tooltip" data-bs-placement="top" title="Please enter template name here">
                                                    </div>
                                                    <div class="mb-10">
                                                        <label for="temp_msg" class="form-label fs-14 color-black-1 required">Template message</label>
                                                        <textarea maxlength="766" type="text" cols="5" rows="5" name="temp_msg" id="temp_msg" runat="server" class="form-control form-custom-textarea" data-bs-toggle="tooltip" data-bs-placement="top" title="Please enter template message body here" placeholder="Write message here..."></textarea>
                                                    </div>
                                                    <div class="text-start">
                                                        <input type="hidden" name="savetemp" id="savetemp" value="savetemp">
                                                        <asp:Button ID="savetempbtn" runat="server" Text="Check" 
                                                            CssClass="btn btn-grad-1 py-4 px-9 rounded-3"
                                                            OnClientClick="saveNewTemplate('savetempbtn'); return false;" OnClick="savetempbtn_Click" />
                                                    </div>
                                                    <asp:ScriptManager ID="ScriptManager1" runat="server" />
                                                </div>
                                                <!--end: Card Body-->
                                            </div>
                                            <!--end::List widget 10-->
                                        </div>
                                        <!--end::Col-->
                                        <!--begin::Col-->
                                        <div class="col-xl-4">
                                            <!--begin::List widget 10-->
                                            <div class="card card-flush shadow-xs">
                                                <!--begin::Header-->
                                                <div class="card-header d-block pt-7">
                                                    <!--begin::Title-->
                                                    <h3 class="card-title card-label fs-20 fw-bold color-black-1">
                                                    Templates List <span class="fs-12 ms-2 color-light-blue fw-500 bg-light-blue rounded-2 px-2 py-1">8 available</span>
                                                    </h3>
                                                    <p class="color-neutral-grey mt-1 fs-14 mb-1">
                                                    Use available templates to send single/bulk SMS. Hover on “Preview” to view message.
                                                    </p>
                                                </div>
                                                <!--end::Header-->
                                                <!--begin::Body-->
                                                <div class="card-body py-1">
                                                    <div class="mt-6 templ-list">
                                                        <div class="d-flex justify-content-between align-items-center template-border-bottom pb-4 mb-5">
                                                            <div class="d-flex justify-content-start align-items-center">
                                                                <div class="fs-14 color-black-1">
                                                                Evacuation
                                                                </div>
                                                                <div class="fs-12 purper-color fw-500 purper-bg rounded-2 px-2 py-1 ms-3 cursor-pointer" data-bs-toggle="tooltip" data-bs-placement="top" title="Message body must display here and we need to add it in the title, Message body must display here and we need to add it in the title,">
                                                                Preview
                                                                </div>
                                                            </div>
                                                            <div class="d-flex justify-content-end align-items-center">
                                                                <div class="me-3">
                                                                    <a class="edit-temp" href="#">
                                                                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none">
                                                                            <path d="M11.6673 5.00001L13.5782 3.08917C13.7344 2.93295 13.9463 2.84518 14.1673 2.84518C14.3883 2.84518 14.6002 2.93295 14.7565 3.08917L16.9115 5.24417C17.0677 5.40045 17.1555 5.61237 17.1555 5.83334C17.1555 6.05431 17.0677 6.26623 16.9115 6.42251L15.0007 8.33334M11.6673 5.00001L3.57815 13.0892C3.42186 13.2454 3.33403 13.4573 3.33398 13.6783V15.8333C3.33398 16.0544 3.42178 16.2663 3.57806 16.4226C3.73434 16.5789 3.9463 16.6667 4.16732 16.6667H6.32232C6.54331 16.6666 6.75524 16.5788 6.91148 16.4225L15.0007 8.33334M11.6673 5.00001L15.0007 8.33334" stroke="#121212" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                                                        </svg>
                                                                    </a>
                                                                </div>
                                                                <div>
                                                                    <a class="delete-temp" href="#">
                                                                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none">
                                                                            <path d="M8.33268 4.16667H11.666C11.666 3.72464 11.4904 3.30072 11.1779 2.98816C10.8653 2.67559 10.4414 2.5 9.99935 2.5C9.55732 2.5 9.1334 2.67559 8.82084 2.98816C8.50828 3.30072 8.33268 3.72464 8.33268 4.16667ZM7.08268 4.16667C7.08268 3.78364 7.15812 3.40437 7.3047 3.05051C7.45128 2.69664 7.66612 2.37511 7.93695 2.10427C8.20779 1.83343 8.52932 1.61859 8.88319 1.47202C9.23706 1.32544 9.61633 1.25 9.99935 1.25C10.3824 1.25 10.7616 1.32544 11.1155 1.47202C11.4694 1.61859 11.7909 1.83343 12.0617 2.10427C12.3326 2.37511 12.5474 2.69664 12.694 3.05051C12.8406 3.40437 12.916 3.78364 12.916 4.16667H17.7077C17.8734 4.16667 18.0324 4.23251 18.1496 4.34973C18.2668 4.46694 18.3327 4.62591 18.3327 4.79167C18.3327 4.95743 18.2668 5.1164 18.1496 5.23361C18.0324 5.35082 17.8734 5.41667 17.7077 5.41667H16.6077L15.6327 15.5092C15.5579 16.2825 15.1977 17.0002 14.6224 17.5224C14.0471 18.0445 13.2979 18.3336 12.521 18.3333H7.47768C6.7009 18.3334 5.95193 18.0442 5.37681 17.5221C4.80168 16.9999 4.44163 16.2823 4.36685 15.5092L3.39102 5.41667H2.29102C2.12526 5.41667 1.96628 5.35082 1.84907 5.23361C1.73186 5.1164 1.66602 4.95743 1.66602 4.79167C1.66602 4.62591 1.73186 4.46694 1.84907 4.34973C1.96628 4.23251 2.12526 4.16667 2.29102 4.16667H7.08268ZM8.74935 8.125C8.74935 7.95924 8.6835 7.80027 8.56629 7.68306C8.44908 7.56585 8.29011 7.5 8.12435 7.5C7.95859 7.5 7.79962 7.56585 7.68241 7.68306C7.5652 7.80027 7.49935 7.95924 7.49935 8.125V14.375C7.49935 14.5408 7.5652 14.6997 7.68241 14.8169C7.79962 14.9342 7.95859 15 8.12435 15C8.29011 15 8.44908 14.9342 8.56629 14.8169C8.6835 14.6997 8.74935 14.5408 8.74935 14.375V8.125ZM11.8743 7.5C12.0401 7.5 12.1991 7.56585 12.3163 7.68306C12.4335 7.80027 12.4993 7.95924 12.4993 8.125V14.375C12.4993 14.5408 12.4335 14.6997 12.3163 14.8169C12.1991 14.9342 12.0401 15 11.8743 15C11.7086 15 11.5496 14.9342 11.4324 14.8169C11.3152 14.6997 11.2493 14.5408 11.2493 14.375V8.125C11.2493 7.95924 11.3152 7.80027 11.4324 7.68306C11.5496 7.56585 11.7086 7.5 11.8743 7.5ZM5.61102 15.3892C5.65596 15.853 5.87205 16.2835 6.21716 16.5968C6.56226 16.91 7.01164 17.0834 7.47768 17.0833H12.521C12.9871 17.0834 13.4364 16.91 13.7815 16.5968C14.1266 16.2835 14.3427 15.853 14.3877 15.3892L15.3527 5.41667H4.64602L5.61102 15.3892Z" fill="#121212"/>
                                                                        </svg>
                                                                    </a>
                                                                </div>
                                                            </div>

                                                        </div>
                                                        <div class="d-flex justify-content-between align-items-center template-border-bottom pb-4 mb-5">
                                                            <div class="d-flex justify-content-start align-items-center">
                                                                <div class="fs-14 color-black-1">
                                                                First Warning
                                                                </div>
                                                                <div class="fs-12 purper-color fw-500 purper-bg rounded-2 px-2 py-1 ms-3 cursor-pointer" data-bs-toggle="tooltip" data-bs-placement="top" title="Message body must display here and we need to add it in the title, Message body must display here and we need to add it in the title,">
                                                                Preview
                                                                </div>
                                                            </div>
                                                            <div class="d-flex justify-content-end align-items-center">
                                                                <div class="me-3">
                                                                    <a class="edit-temp" href="#">
                                                                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none">
                                                                            <path d="M11.6673 5.00001L13.5782 3.08917C13.7344 2.93295 13.9463 2.84518 14.1673 2.84518C14.3883 2.84518 14.6002 2.93295 14.7565 3.08917L16.9115 5.24417C17.0677 5.40045 17.1555 5.61237 17.1555 5.83334C17.1555 6.05431 17.0677 6.26623 16.9115 6.42251L15.0007 8.33334M11.6673 5.00001L3.57815 13.0892C3.42186 13.2454 3.33403 13.4573 3.33398 13.6783V15.8333C3.33398 16.0544 3.42178 16.2663 3.57806 16.4226C3.73434 16.5789 3.9463 16.6667 4.16732 16.6667H6.32232C6.54331 16.6666 6.75524 16.5788 6.91148 16.4225L15.0007 8.33334M11.6673 5.00001L15.0007 8.33334" stroke="#121212" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                                                        </svg>
                                                                    </a>
                                                                </div>
                                                                <div>
                                                                    <a class="delete-temp" href="#">
                                                                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none">
                                                                            <path d="M8.33268 4.16667H11.666C11.666 3.72464 11.4904 3.30072 11.1779 2.98816C10.8653 2.67559 10.4414 2.5 9.99935 2.5C9.55732 2.5 9.1334 2.67559 8.82084 2.98816C8.50828 3.30072 8.33268 3.72464 8.33268 4.16667ZM7.08268 4.16667C7.08268 3.78364 7.15812 3.40437 7.3047 3.05051C7.45128 2.69664 7.66612 2.37511 7.93695 2.10427C8.20779 1.83343 8.52932 1.61859 8.88319 1.47202C9.23706 1.32544 9.61633 1.25 9.99935 1.25C10.3824 1.25 10.7616 1.32544 11.1155 1.47202C11.4694 1.61859 11.7909 1.83343 12.0617 2.10427C12.3326 2.37511 12.5474 2.69664 12.694 3.05051C12.8406 3.40437 12.916 3.78364 12.916 4.16667H17.7077C17.8734 4.16667 18.0324 4.23251 18.1496 4.34973C18.2668 4.46694 18.3327 4.62591 18.3327 4.79167C18.3327 4.95743 18.2668 5.1164 18.1496 5.23361C18.0324 5.35082 17.8734 5.41667 17.7077 5.41667H16.6077L15.6327 15.5092C15.5579 16.2825 15.1977 17.0002 14.6224 17.5224C14.0471 18.0445 13.2979 18.3336 12.521 18.3333H7.47768C6.7009 18.3334 5.95193 18.0442 5.37681 17.5221C4.80168 16.9999 4.44163 16.2823 4.36685 15.5092L3.39102 5.41667H2.29102C2.12526 5.41667 1.96628 5.35082 1.84907 5.23361C1.73186 5.1164 1.66602 4.95743 1.66602 4.79167C1.66602 4.62591 1.73186 4.46694 1.84907 4.34973C1.96628 4.23251 2.12526 4.16667 2.29102 4.16667H7.08268ZM8.74935 8.125C8.74935 7.95924 8.6835 7.80027 8.56629 7.68306C8.44908 7.56585 8.29011 7.5 8.12435 7.5C7.95859 7.5 7.79962 7.56585 7.68241 7.68306C7.5652 7.80027 7.49935 7.95924 7.49935 8.125V14.375C7.49935 14.5408 7.5652 14.6997 7.68241 14.8169C7.79962 14.9342 7.95859 15 8.12435 15C8.29011 15 8.44908 14.9342 8.56629 14.8169C8.6835 14.6997 8.74935 14.5408 8.74935 14.375V8.125ZM11.8743 7.5C12.0401 7.5 12.1991 7.56585 12.3163 7.68306C12.4335 7.80027 12.4993 7.95924 12.4993 8.125V14.375C12.4993 14.5408 12.4335 14.6997 12.3163 14.8169C12.1991 14.9342 12.0401 15 11.8743 15C11.7086 15 11.5496 14.9342 11.4324 14.8169C11.3152 14.6997 11.2493 14.5408 11.2493 14.375V8.125C11.2493 7.95924 11.3152 7.80027 11.4324 7.68306C11.5496 7.56585 11.7086 7.5 11.8743 7.5ZM5.61102 15.3892C5.65596 15.853 5.87205 16.2835 6.21716 16.5968C6.56226 16.91 7.01164 17.0834 7.47768 17.0833H12.521C12.9871 17.0834 13.4364 16.91 13.7815 16.5968C14.1266 16.2835 14.3427 15.853 14.3877 15.3892L15.3527 5.41667H4.64602L5.61102 15.3892Z" fill="#121212"/>
                                                                        </svg>
                                                                    </a>
                                                                </div>
                                                            </div>

                                                        </div>
                                                        <div class="d-flex justify-content-between align-items-center template-border-bottom pb-4 mb-5">
                                                            <div class="d-flex justify-content-start align-items-center">
                                                                <div class="fs-14 color-black-1">
                                                                Second Warning
                                                                </div>
                                                                <div class="fs-12 purper-color fw-500 purper-bg rounded-2 px-2 py-1 ms-3 cursor-pointer" data-bs-toggle="tooltip" data-bs-placement="top" title="Message body must display here and we need to add it in the title, Message body must display here and we need to add it in the title,">
                                                                Preview
                                                                </div>
                                                            </div>
                                                            <div class="d-flex justify-content-end align-items-center">
                                                                <div class="me-3">
                                                                    <a class="edit-temp" href="#">
                                                                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none">
                                                                            <path d="M11.6673 5.00001L13.5782 3.08917C13.7344 2.93295 13.9463 2.84518 14.1673 2.84518C14.3883 2.84518 14.6002 2.93295 14.7565 3.08917L16.9115 5.24417C17.0677 5.40045 17.1555 5.61237 17.1555 5.83334C17.1555 6.05431 17.0677 6.26623 16.9115 6.42251L15.0007 8.33334M11.6673 5.00001L3.57815 13.0892C3.42186 13.2454 3.33403 13.4573 3.33398 13.6783V15.8333C3.33398 16.0544 3.42178 16.2663 3.57806 16.4226C3.73434 16.5789 3.9463 16.6667 4.16732 16.6667H6.32232C6.54331 16.6666 6.75524 16.5788 6.91148 16.4225L15.0007 8.33334M11.6673 5.00001L15.0007 8.33334" stroke="#121212" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                                                        </svg>
                                                                    </a>
                                                                </div>
                                                                <div>
                                                                    <a class="delete-temp" href="#">
                                                                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none">
                                                                            <path d="M8.33268 4.16667H11.666C11.666 3.72464 11.4904 3.30072 11.1779 2.98816C10.8653 2.67559 10.4414 2.5 9.99935 2.5C9.55732 2.5 9.1334 2.67559 8.82084 2.98816C8.50828 3.30072 8.33268 3.72464 8.33268 4.16667ZM7.08268 4.16667C7.08268 3.78364 7.15812 3.40437 7.3047 3.05051C7.45128 2.69664 7.66612 2.37511 7.93695 2.10427C8.20779 1.83343 8.52932 1.61859 8.88319 1.47202C9.23706 1.32544 9.61633 1.25 9.99935 1.25C10.3824 1.25 10.7616 1.32544 11.1155 1.47202C11.4694 1.61859 11.7909 1.83343 12.0617 2.10427C12.3326 2.37511 12.5474 2.69664 12.694 3.05051C12.8406 3.40437 12.916 3.78364 12.916 4.16667H17.7077C17.8734 4.16667 18.0324 4.23251 18.1496 4.34973C18.2668 4.46694 18.3327 4.62591 18.3327 4.79167C18.3327 4.95743 18.2668 5.1164 18.1496 5.23361C18.0324 5.35082 17.8734 5.41667 17.7077 5.41667H16.6077L15.6327 15.5092C15.5579 16.2825 15.1977 17.0002 14.6224 17.5224C14.0471 18.0445 13.2979 18.3336 12.521 18.3333H7.47768C6.7009 18.3334 5.95193 18.0442 5.37681 17.5221C4.80168 16.9999 4.44163 16.2823 4.36685 15.5092L3.39102 5.41667H2.29102C2.12526 5.41667 1.96628 5.35082 1.84907 5.23361C1.73186 5.1164 1.66602 4.95743 1.66602 4.79167C1.66602 4.62591 1.73186 4.46694 1.84907 4.34973C1.96628 4.23251 2.12526 4.16667 2.29102 4.16667H7.08268ZM8.74935 8.125C8.74935 7.95924 8.6835 7.80027 8.56629 7.68306C8.44908 7.56585 8.29011 7.5 8.12435 7.5C7.95859 7.5 7.79962 7.56585 7.68241 7.68306C7.5652 7.80027 7.49935 7.95924 7.49935 8.125V14.375C7.49935 14.5408 7.5652 14.6997 7.68241 14.8169C7.79962 14.9342 7.95859 15 8.12435 15C8.29011 15 8.44908 14.9342 8.56629 14.8169C8.6835 14.6997 8.74935 14.5408 8.74935 14.375V8.125ZM11.8743 7.5C12.0401 7.5 12.1991 7.56585 12.3163 7.68306C12.4335 7.80027 12.4993 7.95924 12.4993 8.125V14.375C12.4993 14.5408 12.4335 14.6997 12.3163 14.8169C12.1991 14.9342 12.0401 15 11.8743 15C11.7086 15 11.5496 14.9342 11.4324 14.8169C11.3152 14.6997 11.2493 14.5408 11.2493 14.375V8.125C11.2493 7.95924 11.3152 7.80027 11.4324 7.68306C11.5496 7.56585 11.7086 7.5 11.8743 7.5ZM5.61102 15.3892C5.65596 15.853 5.87205 16.2835 6.21716 16.5968C6.56226 16.91 7.01164 17.0834 7.47768 17.0833H12.521C12.9871 17.0834 13.4364 16.91 13.7815 16.5968C14.1266 16.2835 14.3427 15.853 14.3877 15.3892L15.3527 5.41667H4.64602L5.61102 15.3892Z" fill="#121212"/>
                                                                        </svg>
                                                                    </a>
                                                                </div>
                                                            </div>

                                                        </div>
                                                        <div class="d-flex justify-content-between align-items-center template-border-bottom pb-4 mb-5">
                                                            <div class="d-flex justify-content-start align-items-center">
                                                                <div class="fs-14 color-black-1">
                                                                Third Warning
                                                                </div>
                                                                <div class="fs-12 purper-color fw-500 purper-bg rounded-2 px-2 py-1 ms-3 cursor-pointer" data-bs-toggle="tooltip" data-bs-placement="top" title="Message body must display here and we need to add it in the title, Message body must display here and we need to add it in the title,">
                                                                Preview
                                                                </div>
                                                            </div>
                                                            <div class="d-flex justify-content-end align-items-center">
                                                                <div class="me-3">
                                                                    <a class="edit-temp" href="#">
                                                                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none">
                                                                            <path d="M11.6673 5.00001L13.5782 3.08917C13.7344 2.93295 13.9463 2.84518 14.1673 2.84518C14.3883 2.84518 14.6002 2.93295 14.7565 3.08917L16.9115 5.24417C17.0677 5.40045 17.1555 5.61237 17.1555 5.83334C17.1555 6.05431 17.0677 6.26623 16.9115 6.42251L15.0007 8.33334M11.6673 5.00001L3.57815 13.0892C3.42186 13.2454 3.33403 13.4573 3.33398 13.6783V15.8333C3.33398 16.0544 3.42178 16.2663 3.57806 16.4226C3.73434 16.5789 3.9463 16.6667 4.16732 16.6667H6.32232C6.54331 16.6666 6.75524 16.5788 6.91148 16.4225L15.0007 8.33334M11.6673 5.00001L15.0007 8.33334" stroke="#121212" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                                                        </svg>
                                                                    </a>
                                                                </div>
                                                                <div>
                                                                    <a class="delete-temp" href="#">
                                                                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none">
                                                                            <path d="M8.33268 4.16667H11.666C11.666 3.72464 11.4904 3.30072 11.1779 2.98816C10.8653 2.67559 10.4414 2.5 9.99935 2.5C9.55732 2.5 9.1334 2.67559 8.82084 2.98816C8.50828 3.30072 8.33268 3.72464 8.33268 4.16667ZM7.08268 4.16667C7.08268 3.78364 7.15812 3.40437 7.3047 3.05051C7.45128 2.69664 7.66612 2.37511 7.93695 2.10427C8.20779 1.83343 8.52932 1.61859 8.88319 1.47202C9.23706 1.32544 9.61633 1.25 9.99935 1.25C10.3824 1.25 10.7616 1.32544 11.1155 1.47202C11.4694 1.61859 11.7909 1.83343 12.0617 2.10427C12.3326 2.37511 12.5474 2.69664 12.694 3.05051C12.8406 3.40437 12.916 3.78364 12.916 4.16667H17.7077C17.8734 4.16667 18.0324 4.23251 18.1496 4.34973C18.2668 4.46694 18.3327 4.62591 18.3327 4.79167C18.3327 4.95743 18.2668 5.1164 18.1496 5.23361C18.0324 5.35082 17.8734 5.41667 17.7077 5.41667H16.6077L15.6327 15.5092C15.5579 16.2825 15.1977 17.0002 14.6224 17.5224C14.0471 18.0445 13.2979 18.3336 12.521 18.3333H7.47768C6.7009 18.3334 5.95193 18.0442 5.37681 17.5221C4.80168 16.9999 4.44163 16.2823 4.36685 15.5092L3.39102 5.41667H2.29102C2.12526 5.41667 1.96628 5.35082 1.84907 5.23361C1.73186 5.1164 1.66602 4.95743 1.66602 4.79167C1.66602 4.62591 1.73186 4.46694 1.84907 4.34973C1.96628 4.23251 2.12526 4.16667 2.29102 4.16667H7.08268ZM8.74935 8.125C8.74935 7.95924 8.6835 7.80027 8.56629 7.68306C8.44908 7.56585 8.29011 7.5 8.12435 7.5C7.95859 7.5 7.79962 7.56585 7.68241 7.68306C7.5652 7.80027 7.49935 7.95924 7.49935 8.125V14.375C7.49935 14.5408 7.5652 14.6997 7.68241 14.8169C7.79962 14.9342 7.95859 15 8.12435 15C8.29011 15 8.44908 14.9342 8.56629 14.8169C8.6835 14.6997 8.74935 14.5408 8.74935 14.375V8.125ZM11.8743 7.5C12.0401 7.5 12.1991 7.56585 12.3163 7.68306C12.4335 7.80027 12.4993 7.95924 12.4993 8.125V14.375C12.4993 14.5408 12.4335 14.6997 12.3163 14.8169C12.1991 14.9342 12.0401 15 11.8743 15C11.7086 15 11.5496 14.9342 11.4324 14.8169C11.3152 14.6997 11.2493 14.5408 11.2493 14.375V8.125C11.2493 7.95924 11.3152 7.80027 11.4324 7.68306C11.5496 7.56585 11.7086 7.5 11.8743 7.5ZM5.61102 15.3892C5.65596 15.853 5.87205 16.2835 6.21716 16.5968C6.56226 16.91 7.01164 17.0834 7.47768 17.0833H12.521C12.9871 17.0834 13.4364 16.91 13.7815 16.5968C14.1266 16.2835 14.3427 15.853 14.3877 15.3892L15.3527 5.41667H4.64602L5.61102 15.3892Z" fill="#121212"/>
                                                                        </svg>
                                                                    </a>
                                                                </div>
                                                            </div>

                                                        </div>
                                                        <div class="d-flex justify-content-between align-items-center template-border-bottom pb-4 mb-5">
                                                            <div class="d-flex justify-content-start align-items-center">
                                                                <div class="fs-14 color-black-1">
                                                                Final Alarm
                                                                </div>
                                                                <div class="fs-12 purper-color fw-500 purper-bg rounded-2 px-2 py-1 ms-3 cursor-pointer" data-bs-toggle="tooltip" data-bs-placement="top" title="Message body must display here and we need to add it in the title, Message body must display here and we need to add it in the title,">
                                                                Preview
                                                                </div>
                                                            </div>
                                                            <div class="d-flex justify-content-end align-items-center">
                                                                <div class="me-3">
                                                                    <a class="edit-temp" href="#">
                                                                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none">
                                                                            <path d="M11.6673 5.00001L13.5782 3.08917C13.7344 2.93295 13.9463 2.84518 14.1673 2.84518C14.3883 2.84518 14.6002 2.93295 14.7565 3.08917L16.9115 5.24417C17.0677 5.40045 17.1555 5.61237 17.1555 5.83334C17.1555 6.05431 17.0677 6.26623 16.9115 6.42251L15.0007 8.33334M11.6673 5.00001L3.57815 13.0892C3.42186 13.2454 3.33403 13.4573 3.33398 13.6783V15.8333C3.33398 16.0544 3.42178 16.2663 3.57806 16.4226C3.73434 16.5789 3.9463 16.6667 4.16732 16.6667H6.32232C6.54331 16.6666 6.75524 16.5788 6.91148 16.4225L15.0007 8.33334M11.6673 5.00001L15.0007 8.33334" stroke="#121212" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                                                        </svg>
                                                                    </a>
                                                                </div>
                                                                <div>
                                                                    <a class="delete-temp" href="#">
                                                                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none">
                                                                            <path d="M8.33268 4.16667H11.666C11.666 3.72464 11.4904 3.30072 11.1779 2.98816C10.8653 2.67559 10.4414 2.5 9.99935 2.5C9.55732 2.5 9.1334 2.67559 8.82084 2.98816C8.50828 3.30072 8.33268 3.72464 8.33268 4.16667ZM7.08268 4.16667C7.08268 3.78364 7.15812 3.40437 7.3047 3.05051C7.45128 2.69664 7.66612 2.37511 7.93695 2.10427C8.20779 1.83343 8.52932 1.61859 8.88319 1.47202C9.23706 1.32544 9.61633 1.25 9.99935 1.25C10.3824 1.25 10.7616 1.32544 11.1155 1.47202C11.4694 1.61859 11.7909 1.83343 12.0617 2.10427C12.3326 2.37511 12.5474 2.69664 12.694 3.05051C12.8406 3.40437 12.916 3.78364 12.916 4.16667H17.7077C17.8734 4.16667 18.0324 4.23251 18.1496 4.34973C18.2668 4.46694 18.3327 4.62591 18.3327 4.79167C18.3327 4.95743 18.2668 5.1164 18.1496 5.23361C18.0324 5.35082 17.8734 5.41667 17.7077 5.41667H16.6077L15.6327 15.5092C15.5579 16.2825 15.1977 17.0002 14.6224 17.5224C14.0471 18.0445 13.2979 18.3336 12.521 18.3333H7.47768C6.7009 18.3334 5.95193 18.0442 5.37681 17.5221C4.80168 16.9999 4.44163 16.2823 4.36685 15.5092L3.39102 5.41667H2.29102C2.12526 5.41667 1.96628 5.35082 1.84907 5.23361C1.73186 5.1164 1.66602 4.95743 1.66602 4.79167C1.66602 4.62591 1.73186 4.46694 1.84907 4.34973C1.96628 4.23251 2.12526 4.16667 2.29102 4.16667H7.08268ZM8.74935 8.125C8.74935 7.95924 8.6835 7.80027 8.56629 7.68306C8.44908 7.56585 8.29011 7.5 8.12435 7.5C7.95859 7.5 7.79962 7.56585 7.68241 7.68306C7.5652 7.80027 7.49935 7.95924 7.49935 8.125V14.375C7.49935 14.5408 7.5652 14.6997 7.68241 14.8169C7.79962 14.9342 7.95859 15 8.12435 15C8.29011 15 8.44908 14.9342 8.56629 14.8169C8.6835 14.6997 8.74935 14.5408 8.74935 14.375V8.125ZM11.8743 7.5C12.0401 7.5 12.1991 7.56585 12.3163 7.68306C12.4335 7.80027 12.4993 7.95924 12.4993 8.125V14.375C12.4993 14.5408 12.4335 14.6997 12.3163 14.8169C12.1991 14.9342 12.0401 15 11.8743 15C11.7086 15 11.5496 14.9342 11.4324 14.8169C11.3152 14.6997 11.2493 14.5408 11.2493 14.375V8.125C11.2493 7.95924 11.3152 7.80027 11.4324 7.68306C11.5496 7.56585 11.7086 7.5 11.8743 7.5ZM5.61102 15.3892C5.65596 15.853 5.87205 16.2835 6.21716 16.5968C6.56226 16.91 7.01164 17.0834 7.47768 17.0833H12.521C12.9871 17.0834 13.4364 16.91 13.7815 16.5968C14.1266 16.2835 14.3427 15.853 14.3877 15.3892L15.3527 5.41667H4.64602L5.61102 15.3892Z" fill="#121212"/>
                                                                        </svg>
                                                                    </a>
                                                                </div>
                                                            </div>

                                                        </div>
                                                        <div class="d-flex justify-content-between align-items-center template-border-bottom pb-4 mb-5">
                                                            <div class="d-flex justify-content-start align-items-center">
                                                                <div class="fs-14 color-black-1">
                                                                Breach
                                                                </div>
                                                                <div class="fs-12 purper-color fw-500 purper-bg rounded-2 px-2 py-1 ms-3 cursor-pointer" data-bs-toggle="tooltip" data-bs-placement="top" title="Message body must display here and we need to add it in the title, Message body must display here and we need to add it in the title,">
                                                                Preview
                                                                </div>
                                                            </div>
                                                            <div class="d-flex justify-content-end align-items-center">
                                                                <div class="me-3">
                                                                    <a class="edit-temp" href="#">
                                                                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none">
                                                                            <path d="M11.6673 5.00001L13.5782 3.08917C13.7344 2.93295 13.9463 2.84518 14.1673 2.84518C14.3883 2.84518 14.6002 2.93295 14.7565 3.08917L16.9115 5.24417C17.0677 5.40045 17.1555 5.61237 17.1555 5.83334C17.1555 6.05431 17.0677 6.26623 16.9115 6.42251L15.0007 8.33334M11.6673 5.00001L3.57815 13.0892C3.42186 13.2454 3.33403 13.4573 3.33398 13.6783V15.8333C3.33398 16.0544 3.42178 16.2663 3.57806 16.4226C3.73434 16.5789 3.9463 16.6667 4.16732 16.6667H6.32232C6.54331 16.6666 6.75524 16.5788 6.91148 16.4225L15.0007 8.33334M11.6673 5.00001L15.0007 8.33334" stroke="#121212" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                                                        </svg>
                                                                    </a>
                                                                </div>
                                                                <div>
                                                                    <a class="delete-temp" href="#">
                                                                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none">
                                                                            <path d="M8.33268 4.16667H11.666C11.666 3.72464 11.4904 3.30072 11.1779 2.98816C10.8653 2.67559 10.4414 2.5 9.99935 2.5C9.55732 2.5 9.1334 2.67559 8.82084 2.98816C8.50828 3.30072 8.33268 3.72464 8.33268 4.16667ZM7.08268 4.16667C7.08268 3.78364 7.15812 3.40437 7.3047 3.05051C7.45128 2.69664 7.66612 2.37511 7.93695 2.10427C8.20779 1.83343 8.52932 1.61859 8.88319 1.47202C9.23706 1.32544 9.61633 1.25 9.99935 1.25C10.3824 1.25 10.7616 1.32544 11.1155 1.47202C11.4694 1.61859 11.7909 1.83343 12.0617 2.10427C12.3326 2.37511 12.5474 2.69664 12.694 3.05051C12.8406 3.40437 12.916 3.78364 12.916 4.16667H17.7077C17.8734 4.16667 18.0324 4.23251 18.1496 4.34973C18.2668 4.46694 18.3327 4.62591 18.3327 4.79167C18.3327 4.95743 18.2668 5.1164 18.1496 5.23361C18.0324 5.35082 17.8734 5.41667 17.7077 5.41667H16.6077L15.6327 15.5092C15.5579 16.2825 15.1977 17.0002 14.6224 17.5224C14.0471 18.0445 13.2979 18.3336 12.521 18.3333H7.47768C6.7009 18.3334 5.95193 18.0442 5.37681 17.5221C4.80168 16.9999 4.44163 16.2823 4.36685 15.5092L3.39102 5.41667H2.29102C2.12526 5.41667 1.96628 5.35082 1.84907 5.23361C1.73186 5.1164 1.66602 4.95743 1.66602 4.79167C1.66602 4.62591 1.73186 4.46694 1.84907 4.34973C1.96628 4.23251 2.12526 4.16667 2.29102 4.16667H7.08268ZM8.74935 8.125C8.74935 7.95924 8.6835 7.80027 8.56629 7.68306C8.44908 7.56585 8.29011 7.5 8.12435 7.5C7.95859 7.5 7.79962 7.56585 7.68241 7.68306C7.5652 7.80027 7.49935 7.95924 7.49935 8.125V14.375C7.49935 14.5408 7.5652 14.6997 7.68241 14.8169C7.79962 14.9342 7.95859 15 8.12435 15C8.29011 15 8.44908 14.9342 8.56629 14.8169C8.6835 14.6997 8.74935 14.5408 8.74935 14.375V8.125ZM11.8743 7.5C12.0401 7.5 12.1991 7.56585 12.3163 7.68306C12.4335 7.80027 12.4993 7.95924 12.4993 8.125V14.375C12.4993 14.5408 12.4335 14.6997 12.3163 14.8169C12.1991 14.9342 12.0401 15 11.8743 15C11.7086 15 11.5496 14.9342 11.4324 14.8169C11.3152 14.6997 11.2493 14.5408 11.2493 14.375V8.125C11.2493 7.95924 11.3152 7.80027 11.4324 7.68306C11.5496 7.56585 11.7086 7.5 11.8743 7.5ZM5.61102 15.3892C5.65596 15.853 5.87205 16.2835 6.21716 16.5968C6.56226 16.91 7.01164 17.0834 7.47768 17.0833H12.521C12.9871 17.0834 13.4364 16.91 13.7815 16.5968C14.1266 16.2835 14.3427 15.853 14.3877 15.3892L15.3527 5.41667H4.64602L5.61102 15.3892Z" fill="#121212"/>
                                                                        </svg>
                                                                    </a>
                                                                </div>
                                                            </div>

                                                        </div>
                                                        <div class="d-flex justify-content-between align-items-center template-border-bottom pb-4 mb-5">
                                                            <div class="d-flex justify-content-start align-items-center">
                                                                <div class="fs-14 color-black-1">
                                                                Intruder Alert
                                                                </div>
                                                                <div class="fs-12 purper-color fw-500 purper-bg rounded-2 px-2 py-1 ms-3 cursor-pointer" data-bs-toggle="tooltip" data-bs-placement="top" title="Message body must display here and we need to add it in the title, Message body must display here and we need to add it in the title,">
                                                                Preview
                                                                </div>
                                                            </div>
                                                            <div class="d-flex justify-content-end align-items-center">
                                                                <div class="me-3">
                                                                    <a class="edit-temp" href="#">
                                                                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none">
                                                                            <path d="M11.6673 5.00001L13.5782 3.08917C13.7344 2.93295 13.9463 2.84518 14.1673 2.84518C14.3883 2.84518 14.6002 2.93295 14.7565 3.08917L16.9115 5.24417C17.0677 5.40045 17.1555 5.61237 17.1555 5.83334C17.1555 6.05431 17.0677 6.26623 16.9115 6.42251L15.0007 8.33334M11.6673 5.00001L3.57815 13.0892C3.42186 13.2454 3.33403 13.4573 3.33398 13.6783V15.8333C3.33398 16.0544 3.42178 16.2663 3.57806 16.4226C3.73434 16.5789 3.9463 16.6667 4.16732 16.6667H6.32232C6.54331 16.6666 6.75524 16.5788 6.91148 16.4225L15.0007 8.33334M11.6673 5.00001L15.0007 8.33334" stroke="#121212" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                                                        </svg>
                                                                    </a>
                                                                </div>
                                                                <div>
                                                                    <a class="delete-temp" href="#">
                                                                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none">
                                                                            <path d="M8.33268 4.16667H11.666C11.666 3.72464 11.4904 3.30072 11.1779 2.98816C10.8653 2.67559 10.4414 2.5 9.99935 2.5C9.55732 2.5 9.1334 2.67559 8.82084 2.98816C8.50828 3.30072 8.33268 3.72464 8.33268 4.16667ZM7.08268 4.16667C7.08268 3.78364 7.15812 3.40437 7.3047 3.05051C7.45128 2.69664 7.66612 2.37511 7.93695 2.10427C8.20779 1.83343 8.52932 1.61859 8.88319 1.47202C9.23706 1.32544 9.61633 1.25 9.99935 1.25C10.3824 1.25 10.7616 1.32544 11.1155 1.47202C11.4694 1.61859 11.7909 1.83343 12.0617 2.10427C12.3326 2.37511 12.5474 2.69664 12.694 3.05051C12.8406 3.40437 12.916 3.78364 12.916 4.16667H17.7077C17.8734 4.16667 18.0324 4.23251 18.1496 4.34973C18.2668 4.46694 18.3327 4.62591 18.3327 4.79167C18.3327 4.95743 18.2668 5.1164 18.1496 5.23361C18.0324 5.35082 17.8734 5.41667 17.7077 5.41667H16.6077L15.6327 15.5092C15.5579 16.2825 15.1977 17.0002 14.6224 17.5224C14.0471 18.0445 13.2979 18.3336 12.521 18.3333H7.47768C6.7009 18.3334 5.95193 18.0442 5.37681 17.5221C4.80168 16.9999 4.44163 16.2823 4.36685 15.5092L3.39102 5.41667H2.29102C2.12526 5.41667 1.96628 5.35082 1.84907 5.23361C1.73186 5.1164 1.66602 4.95743 1.66602 4.79167C1.66602 4.62591 1.73186 4.46694 1.84907 4.34973C1.96628 4.23251 2.12526 4.16667 2.29102 4.16667H7.08268ZM8.74935 8.125C8.74935 7.95924 8.6835 7.80027 8.56629 7.68306C8.44908 7.56585 8.29011 7.5 8.12435 7.5C7.95859 7.5 7.79962 7.56585 7.68241 7.68306C7.5652 7.80027 7.49935 7.95924 7.49935 8.125V14.375C7.49935 14.5408 7.5652 14.6997 7.68241 14.8169C7.79962 14.9342 7.95859 15 8.12435 15C8.29011 15 8.44908 14.9342 8.56629 14.8169C8.6835 14.6997 8.74935 14.5408 8.74935 14.375V8.125ZM11.8743 7.5C12.0401 7.5 12.1991 7.56585 12.3163 7.68306C12.4335 7.80027 12.4993 7.95924 12.4993 8.125V14.375C12.4993 14.5408 12.4335 14.6997 12.3163 14.8169C12.1991 14.9342 12.0401 15 11.8743 15C11.7086 15 11.5496 14.9342 11.4324 14.8169C11.3152 14.6997 11.2493 14.5408 11.2493 14.375V8.125C11.2493 7.95924 11.3152 7.80027 11.4324 7.68306C11.5496 7.56585 11.7086 7.5 11.8743 7.5ZM5.61102 15.3892C5.65596 15.853 5.87205 16.2835 6.21716 16.5968C6.56226 16.91 7.01164 17.0834 7.47768 17.0833H12.521C12.9871 17.0834 13.4364 16.91 13.7815 16.5968C14.1266 16.2835 14.3427 15.853 14.3877 15.3892L15.3527 5.41667H4.64602L5.61102 15.3892Z" fill="#121212"/>
                                                                        </svg>
                                                                    </a>
                                                                </div>
                                                            </div>

                                                        </div>
                                                        <div class="d-flex justify-content-between align-items-center template-border-bottom pb-4 mb-5">
                                                            <div class="d-flex justify-content-start align-items-center">
                                                                <div class="fs-14 color-black-1">
                                                                Curfew
                                                                </div>
                                                                <div class="fs-12 purper-color fw-500 purper-bg rounded-2 px-2 py-1 ms-3 cursor-pointer" data-bs-toggle="tooltip" data-bs-placement="top" title="Message body must display here and we need to add it in the title, Message body must display here and we need to add it in the title,">
                                                                Preview
                                                                </div>
                                                            </div>
                                                            <div class="d-flex justify-content-end align-items-center">
                                                                <div class="me-3">
                                                                    <a class="edit-temp" href="#">
                                                                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none">
                                                                            <path d="M11.6673 5.00001L13.5782 3.08917C13.7344 2.93295 13.9463 2.84518 14.1673 2.84518C14.3883 2.84518 14.6002 2.93295 14.7565 3.08917L16.9115 5.24417C17.0677 5.40045 17.1555 5.61237 17.1555 5.83334C17.1555 6.05431 17.0677 6.26623 16.9115 6.42251L15.0007 8.33334M11.6673 5.00001L3.57815 13.0892C3.42186 13.2454 3.33403 13.4573 3.33398 13.6783V15.8333C3.33398 16.0544 3.42178 16.2663 3.57806 16.4226C3.73434 16.5789 3.9463 16.6667 4.16732 16.6667H6.32232C6.54331 16.6666 6.75524 16.5788 6.91148 16.4225L15.0007 8.33334M11.6673 5.00001L15.0007 8.33334" stroke="#121212" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                                                        </svg>
                                                                    </a>
                                                                </div>
                                                                <div>
                                                                    <a class="delete-temp" href="#">
                                                                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none">
                                                                            <path d="M8.33268 4.16667H11.666C11.666 3.72464 11.4904 3.30072 11.1779 2.98816C10.8653 2.67559 10.4414 2.5 9.99935 2.5C9.55732 2.5 9.1334 2.67559 8.82084 2.98816C8.50828 3.30072 8.33268 3.72464 8.33268 4.16667ZM7.08268 4.16667C7.08268 3.78364 7.15812 3.40437 7.3047 3.05051C7.45128 2.69664 7.66612 2.37511 7.93695 2.10427C8.20779 1.83343 8.52932 1.61859 8.88319 1.47202C9.23706 1.32544 9.61633 1.25 9.99935 1.25C10.3824 1.25 10.7616 1.32544 11.1155 1.47202C11.4694 1.61859 11.7909 1.83343 12.0617 2.10427C12.3326 2.37511 12.5474 2.69664 12.694 3.05051C12.8406 3.40437 12.916 3.78364 12.916 4.16667H17.7077C17.8734 4.16667 18.0324 4.23251 18.1496 4.34973C18.2668 4.46694 18.3327 4.62591 18.3327 4.79167C18.3327 4.95743 18.2668 5.1164 18.1496 5.23361C18.0324 5.35082 17.8734 5.41667 17.7077 5.41667H16.6077L15.6327 15.5092C15.5579 16.2825 15.1977 17.0002 14.6224 17.5224C14.0471 18.0445 13.2979 18.3336 12.521 18.3333H7.47768C6.7009 18.3334 5.95193 18.0442 5.37681 17.5221C4.80168 16.9999 4.44163 16.2823 4.36685 15.5092L3.39102 5.41667H2.29102C2.12526 5.41667 1.96628 5.35082 1.84907 5.23361C1.73186 5.1164 1.66602 4.95743 1.66602 4.79167C1.66602 4.62591 1.73186 4.46694 1.84907 4.34973C1.96628 4.23251 2.12526 4.16667 2.29102 4.16667H7.08268ZM8.74935 8.125C8.74935 7.95924 8.6835 7.80027 8.56629 7.68306C8.44908 7.56585 8.29011 7.5 8.12435 7.5C7.95859 7.5 7.79962 7.56585 7.68241 7.68306C7.5652 7.80027 7.49935 7.95924 7.49935 8.125V14.375C7.49935 14.5408 7.5652 14.6997 7.68241 14.8169C7.79962 14.9342 7.95859 15 8.12435 15C8.29011 15 8.44908 14.9342 8.56629 14.8169C8.6835 14.6997 8.74935 14.5408 8.74935 14.375V8.125ZM11.8743 7.5C12.0401 7.5 12.1991 7.56585 12.3163 7.68306C12.4335 7.80027 12.4993 7.95924 12.4993 8.125V14.375C12.4993 14.5408 12.4335 14.6997 12.3163 14.8169C12.1991 14.9342 12.0401 15 11.8743 15C11.7086 15 11.5496 14.9342 11.4324 14.8169C11.3152 14.6997 11.2493 14.5408 11.2493 14.375V8.125C11.2493 7.95924 11.3152 7.80027 11.4324 7.68306C11.5496 7.56585 11.7086 7.5 11.8743 7.5ZM5.61102 15.3892C5.65596 15.853 5.87205 16.2835 6.21716 16.5968C6.56226 16.91 7.01164 17.0834 7.47768 17.0833H12.521C12.9871 17.0834 13.4364 16.91 13.7815 16.5968C14.1266 16.2835 14.3427 15.853 14.3877 15.3892L15.3527 5.41667H4.64602L5.61102 15.3892Z" fill="#121212"/>
                                                                        </svg>
                                                                    </a>
                                                                </div>
                                                            </div>

                                                        </div>
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

        <script src="/assets/js/manage_temp.js"></script>
    </form>
</body>
<!--end::Body-->
</html>
