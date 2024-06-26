<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="send_sms.aspx.cs" Inherits="resellerUserA.send_sms" %>

<%@ Register Src="~/Controls/head.ascx" TagPrefix="uc1" TagName="head" %>

<%@ Register Src="~/Controls/menuTop.ascx" TagPrefix="uc1" TagName="menuTop" %>
<%@ Register Src="~/Controls/sideBar.ascx" TagPrefix="uc1" TagName="sideBar" %>
<%@ Register Src="~/Controls/footer.ascx" TagPrefix="uc1" TagName="footer" %>
<%@ Register Src="~/Controls/footerLinks.ascx" TagPrefix="uc1" TagName="footerLinks" %>



<uc1:head runat="server" ID="head" />

<title>Send Single SMS</title>
</head>
<!--end::Head-->
<!--begin::Body-->
<body id="kt_app_body" data-kt-app-header-fixed="true" data-kt-app-header-fixed-mobile="true" data-kt-app-sidebar-enabled="true" data-kt-app-sidebar-fixed="true" data-kt-app-sidebar-push-toolbar="true" data-kt-app-sidebar-push-footer="true" class="app-default">
     <form action="#" id="frmSendSingleSms" name="frmSendSingleSms" novalidate="novalidate" runat="server">
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
                <uc1:menuTop runat="server" id="menuTop1" parentPageText="Send SMS" childPageText="Single SMS"/>
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
                                                    Send Single SMS
                                                    </h3>
                                                    <!--end::Title-->
                                                    <p class="color-neutral-grey mt-1 fs-14">
                                                    Easily send messages to multiple numbers by adding commas between them. You can send to a maximum of 30 numbers each time. Happy texting!
                                                    </p>
                                                </div>
                                                <!--end::Header-->
                                                <!--begin::Body-->
                                                <div class="card-body">
                                                    <div>
                                                        <div class="mb-8">
                                                            <label for="txtSender" class="form-label fs-14 color-black-1 required">Sender name</label>
                                                            <input runat="server" type="text" class="form-control form-custom-input" name="txtSender" id="txtSender" placeholder="Sender name" data-bs-toggle="tooltip" data-bs-placement="top" title="Please Enter Sender For Message,Max length for numeric:18 and alphanumeric:11"/>
                                                        </div>
                                                        <div class="mb-8">
                                                            <label for="cmbMessageType" class="form-label fs-14 color-black-1 required">SMS type</label>
                                                            <select runat="server" class="form-select form-custom-select" onchange="javascript:setMessageLength();" id="cmbMessageType" name="cmbMessageType" data-bs-toggle="tooltip" data-bs-trigger="hover" data-bs-placement="top" title="Please Select Message Type">
                                                                <option value="">Please select one</option>
                                                                <option value="0">Text</option>
                                                                <option value="2">Arabic</option>
                                                                <option value="9">Unicode</option>
                                                            </select>
                                                        </div>
                                                        <div class="mb-8">
                                                            <label for="txtNumber" class="form-label fs-14 color-black-1 required">Mobile number</label>
                                                            <input runat="server" type="text" class="form-control form-custom-input" onkeypress="return goodchars(event,'0123456789,+');" name="txtNumber" id="txtNumber" placeholder="Use number with country code" data-bs-toggle="tooltip" data-bs-placement="top" title="Please Enter Mobile Number,Maximum 30 numbers can be added seperated by comma.."/>
                                                        </div>
                                                        <div class="mb-8">
                                                            <div class="d-flex justify-content-between align-items-center mb-1">
                                                                <label for="txtMessage" class="form-label fs-14 color-black-1 required">Message</label>
                                                                <div class="d-flex justify-content-end align-items-center">
                                                                    <a id="chooseTemplateBtn" href="#" data-bs-toggle="tooltip" data-bs-placement="top" title="Choose template">
                                                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                                            <path d="M19.5 4.5V7.5H4.5V4.5H19.5ZM19.5 3H4.5C4.10218 3 3.72064 3.15804 3.43934 3.43934C3.15804 3.72064 3 4.10218 3 4.5V7.5C3 7.89782 3.15804 8.27936 3.43934 8.56066C3.72064 8.84196 4.10218 9 4.5 9H19.5C19.8978 9 20.2794 8.84196 20.5607 8.56066C20.842 8.27936 21 7.89782 21 7.5V4.5C21 4.10218 20.842 3.72064 20.5607 3.43934C20.2794 3.15804 19.8978 3 19.5 3ZM7.5 12V19.5H4.5V12H7.5ZM7.5 10.5H4.5C4.10218 10.5 3.72064 10.658 3.43934 10.9393C3.15804 11.2206 3 11.6022 3 12V19.5C3 19.8978 3.15804 20.2794 3.43934 20.5607C3.72064 20.842 4.10218 21 4.5 21H7.5C7.89782 21 8.27936 20.842 8.56066 20.5607C8.84196 20.2794 9 19.8978 9 19.5V12C9 11.6022 8.84196 11.2206 8.56066 10.9393C8.27936 10.658 7.89782 10.5 7.5 10.5ZM19.5 12V19.5H12V12H19.5ZM19.5 10.5H12C11.6022 10.5 11.2206 10.658 10.9393 10.9393C10.658 11.2206 10.5 11.6022 10.5 12V19.5C10.5 19.8978 10.658 20.2794 10.9393 20.5607C11.2206 20.842 11.6022 21 12 21H19.5C19.8978 21 20.2794 20.842 20.5607 20.5607C20.842 20.2794 21 19.8978 21 19.5V12C21 11.6022 20.842 11.2206 20.5607 10.9393C20.2794 10.658 19.8978 10.5 19.5 10.5Z" fill="#121212"/>
                                                                        </svg>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                            <input runat="server" type="hidden" name="codePoints" id="codePoints" value="" onblur="document.frmSendSingleSms.txtMessage.value = convertCP2Char( document.frmSendSingleSms.codePoints.value );&#10;document.frmSendSingleSms.UTF16.value = convertCP2UTF16( document.frmSendSingleSms.codePoints.value );&#10;return false;" readonly="readonly"/>                                                    
                                                            <input runat="server" type="hidden" name="UTF16" value="" onblur="document.frmSendSingleSms.codePoints.value = convertUTF162CP( document.frmSendSingleSms.UTF16.value );&#10;return false;" rows="3" cols="50" />  
                                                            <textarea runat="server" name="txtMessage" rows="4" id="txtMessage" placeholder="Write message here..." class="form-control form-custom-textarea" size="30" maxlength="335" onkeypress="javascript:setCounter()" onblur="javascript:setCounter(); document.frmSendSingleSms.codePoints.value = convertChar2CP(document.frmSendSingleSms.txtMessage.value);
                                                            document.frmSendSingleSms.UTF16.value = convertCP2UTF16( document.frmSendSingleSms.codePoints.value );
                                                            return false;" onclick="javascript:setCounter();document.frmSendSingleSms.codePoints.value = convertChar2CP(document.frmSendSingleSms.txtMessage.value);
                                                            document.frmSendSingleSms.UTF16.value = convertCP2UTF16( document.frmSendSingleSms.codePoints.value );
                                                            return false;" onkeyup="javascript:setCounter(); document.frmSendSingleSms.codePoints.value = convertChar2CP(document.frmSendSingleSms.txtMessage.value);
                                                            document.frmSendSingleSms.UTF16.value = convertCP2UTF16( document.frmSendSingleSms.codePoints.value );
                                                            return false;" dir="ltr"></textarea>
                                                        
                                                            <div class="fs-12 text-gradients-blue">
                                                                <input runat="server" type="text" name="txtcount" id="txtcount" value="0 : 1 SMS Parts" readonly="readonly" class="fs-12 text-gradients-blue text-start border-0">
                                                                <input runat="server" type="hidden" name="hiddcount" value="160" id="hiddcount">
                                                                <input runat="server" type="hidden" name="txtMessageCount" id="txtMessageCount" value="1">
                                                            </div>
                                                        </div>
                                                        <div class="d-flex justify-content-start align-items-start">
                                                            <button runat="server" type="submit" class="btn btn-grad-1 py-4 px-9 rounded-3" id="btnSubmit" name="btnSubmit">
                                                                <span class="indicator-label">Send SMS</span>
                                                                <span class="indicator-progress">
                                                                    <span class="spinner-border text-white" role="status">
                                                                        <span class="visually-hidden">Loading...</span>
                                                                    </span>
                                                                </span>
                                                            </button>
                                                            <button runat="server" type="button" class="btn btn-outline-dark btn-bordered py-4 px-8 rounded-2 ms-8" id="btnSaveTemplate" name="btnSaveTemplate">
                                                                <span class="indicator-label">Save as template</span>
                                                                <span class="indicator-progress">
                                                                    <span class="spinner-border text-white" role="status">
                                                                        <span class="visually-hidden">Loading...</span>
                                                                    </span>
                                                                </span>
                                                            </button>
                                                        </div>
                                                    </div>
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
                                                    Recently Sent Messages
                                                    </h3>
                                                </div>
                                                <!--end::Header-->
                                                <!--begin::Body-->
                                                <div class="card-body">
                                                    <div class="table-responsive">
                                                        <table id="recent-sms-table" class="table custom-table">
                                                            <thead>
                                                                <tr>
                                                                    <th class="white-color fs-16 fw-600">Number</th>
                                                                    <th class="white-color fs-16 fw-600">Sent at</th>
                                                                    <th class="white-color fs-16 fw-600">Status</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td class="color-black-1 fs-16">+600138927737</td>
                                                                    <td class="color-black-1 fs-16">21 August 2023, 11:23 AM</td>
                                                                    <td class="text-success fs-16">Delivered</td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="color-black-1 fs-16">+600138927737</td>
                                                                    <td class="color-black-1 fs-16">21 August 2023, 11:23 AM</td>
                                                                    <td class="text-success fs-16">Delivered</td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="color-black-1 fs-16">+600138927737</td>
                                                                    <td class="color-black-1 fs-16">21 August 2023, 11:23 AM</td>
                                                                    <td class="text-success fs-16">Delivered</td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="color-black-1 fs-16">+600138927737</td>
                                                                    <td class="color-black-1 fs-16">21 August 2023, 11:23 AM</td>
                                                                    <td class="text-success fs-16">Delivered</td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="color-black-1 fs-16">+600138927737</td>
                                                                    <td class="color-black-1 fs-16">21 August 2023, 11:23 AM</td>
                                                                    <td class="text-success fs-16">Delivered</td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="color-black-1 fs-16">+600138927737</td>
                                                                    <td class="color-black-1 fs-16">21 August 2023, 11:23 AM</td>
                                                                    <td class="text-success fs-16">Delivered</td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="color-black-1 fs-16">+600138927737</td>
                                                                    <td class="color-black-1 fs-16">21 August 2023, 11:23 AM</td>
                                                                    <td class="text-success fs-16">Delivered</td>
                                                                </tr>
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

        <!-- Choose template modal -->
        <div class="modal fade" tabindex="-1" id="chooseTemplate">
            <div class="modal-dialog modal-dialog-scrollable">
                <div class="modal-content">
                    <div class="modal-header py-3">
                        <h3 class="modal-title primary-color fs-16 fw-500">Choose Message Template</h3>
                        <!--begin::Close-->
                        <div class="btn btn-icon btn-sm btn-active-light-primary ms-2" data-bs-dismiss="modal" aria-label="Close">
                            <span class="svg-icon svg-icon-1">
                                <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <rect opacity="0.5" x="6" y="17.3137" width="16" height="2" rx="1" transform="rotate(-45 6 17.3137)" fill="currentColor"></rect>
                                    <rect x="7.41422" y="6" width="16" height="2" rx="1" transform="rotate(45 7.41422 6)" fill="currentColor"></rect>
                                </svg>
                            </span>
                        </div>
                        <!--end::Close-->
                    </div>

                    <div class="modal-body">
                        <div class="table-responsive">
                            <table id="templates-table" class="table dashed-bottom-table gy-6">
                                <tbody>
                                
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <div class="modal-footer justify-content-start">
                        <button runat="server" type="submit" class="btn btn-grad-1 py-3 px-8 rounded-3" name="chooseTemplateSubmitBtn" id="chooseTemplateSubmitBtn">
                            <span class="indicator-label">Confirm</span>
                            <span class="indicator-progress">
                                <span class="spinner-border text-white" role="status">
                                    <span class="visually-hidden">Loading...</span>
                                </span>
                            </span>
                        </button>
                        <button type="button" class="btn btn-outline-dark btn-bordered py-3 px-8 rounded-3" data-bs-dismiss="modal">Cancel</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Save template modal -->
        <div class="modal fade" tabindex="-1" id="saveTemplate">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header py-3">
                        <h3 class="modal-title primary-color fs-16 fw-500">Save template</h3>
                        <!--begin::Close-->
                        <div class="btn btn-icon btn-sm btn-active-light-primary ms-2" data-bs-dismiss="modal" aria-label="Close">
                            <span class="svg-icon svg-icon-1">
                                <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <rect opacity="0.5" x="6" y="17.3137" width="16" height="2" rx="1" transform="rotate(-45 6 17.3137)" fill="currentColor"></rect>
                                    <rect x="7.41422" y="6" width="16" height="2" rx="1" transform="rotate(45 7.41422 6)" fill="currentColor"></rect>
                                </svg>
                            </span>
                        </div>
                        <!--end::Close-->
                    </div>
                
                    <div class="modal-body">
                    
                        <div class="mb-8 templateNewName" style="">
                            <label for="templateName" class="form-label fs-14 color-black-1 required">Template name</label>
                            <input type="text" class="form-control form-custom-input" name="templateName" id="templateName" placeholder="Type Template Name" data-bs-toggle="tooltip" data-bs-placement="top" aria-label="New template name" data-bs-original-title="New template name" data-kt-initialized="1" fdprocessedid="nnyci4">
                        </div>
                    </div>

                    <div class="modal-footer justify-content-start">
                        <button type="submit" class="btn btn-grad-1 py-4 px-8 rounded-3" name="saveTemplateSubmitBtn" id="saveTemplateSubmitBtn">
                            <span class="indicator-label">Select</span>
                            <span class="indicator-progress">
                                <span class="spinner-border text-white" role="status">
                                    <span class="visually-hidden">Loading...</span>
                                </span>
                            </span>
                        </button>
                        <button type="button" class="btn btn-outline-dark btn-bordered py-4 px-8 rounded-3" data-bs-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    
        <uc1:footerLinks runat="server" id="footerLinks" />

        <script src="/assets/js/sendsms.js" defer></script>
    </form>
</body>
<!--end::Body-->
</html>