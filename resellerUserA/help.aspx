<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="help.aspx.cs" Inherits="resellerUserA.help" %>

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
            <uc1:menuTop runat="server" id="Help" parentPageText="Home" childPageText="Help"/>
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
                                    <div class="row g-5 g-xl-10 mb-xl-10 mt-0 mb-5">
                                            <!--begin::Col-->
                                            <div class="col-md-8 mb-md-0 mb-5 mt-5">
                                            <div class="card card-flush shadow-xs h-100 border-0">
                                                <!--begin::Page title-->
                                                <div class="page-title px-5 py-5 d-flex flex-column justify-content-center gap-1">
                                                    <!--begin::Title-->
                                                    <h1 class="page-heading d-flex flex-column justify-content-center text-dark fw-bold m-1">Frequently Asked Questions</h1>
                                                    <p class="fs-14 grey-color">
                                                        Frequently asked questions (FAQs) about our SMS service, covering common inquiries in various contexts.
                                                    </p>
                                                    <!--end::Title-->
                                                </div>
                                                <!--end::Page title-->
                                                <!--begin::Card widget 4-->
                                               
                                                    <!--begin::Card body-->
                                                    <div class="card-body pb-3 mt-5 pt-0 ps-5 pr-5">
                                                        <div>
                                                            <div class="mb-5 fs-16 dark-color fw-600">
                                                            Sending SMS
                                                            </div>
                                                            <!--begin::Accordion-->
                                                            <div class="accordion accordion-icon-collapse" id="help_accordion_1">
                                                                <!--begin::Item-->
                                                                <div class="mb-5">
                                                                    <!--begin::Header-->
                                                                    <div class="accordion-header py-3 d-flex collapsed" data-bs-toggle="collapse" data-bs-target="#help_accordion_1_item_1">
                                                                        <span class="accordion-icon">
                                                                            <i class="ki-duotone ki-plus-square fs-3 accordion-icon-off"><span class="path1"></span><span class="path2"></span><span class="path3"></span></i>
                                                                            <i class="ki-duotone ki-minus-square fs-3 accordion-icon-on"><span class="path1"></span><span class="path2"></span></i>
                                                                        </span>
                                                                        <h3 class="fs-14 dark-color mb-0 ms-4">How to send single SMS?</h3>
                                                                    </div>
                                                                    <!--end::Header-->

                                                                    <!--begin::Body-->
                                                                    <div id="help_accordion_1_item_1" class="fs-14 dark-color collapse ps-10" data-bs-parent="#help_accordion_1">
                                                                        <div>
                                                                            <div class="mb-2">Please follow these steps to send your message:</div>
                                                                            <ol class="mb-0">
                                                                                <li>
                                                                                Enter the sender's name.
                                                                                </li>
                                                                                <li>
                                                                                Select the type of message you wish to send.
                                                                                </li>
                                                                                <li>
                                                                                Enter the recipient's phone numbers (up to 30 numbers, if there are more, use "Send Bulk SMS" option).
                                                                                </li>
                                                                                <li>
                                                                                Compose your text, ensuring it doesn't exceed the SMS character limit, max 5 parts.
                                                                                </li>
                                                                                <li>
                                                                                Click the "Send" button to send your message.
                                                                                </li>
                                                                            </ol>
                                                                        </div>
                                                                    </div>
                                                                    <!--end::Body-->
                                                                </div>
                                                                <!--end::Item-->

                                                                <!--begin::Item-->
                                                                <div class="mb-5">
                                                                    <!--begin::Header-->
                                                                    <div class="accordion-header py-3 d-flex collapsed" data-bs-toggle="collapse" data-bs-target="#help_accordion_1_item_2">
                                                                        <span class="accordion-icon">
                                                                        <i class="ki-duotone ki-plus-square fs-3 accordion-icon-off"><span class="path1"></span><span class="path2"></span><span class="path3"></span></i>
                                                                        <i class="ki-duotone ki-minus-square fs-3 accordion-icon-on"><span class="path1"></span><span class="path2"></span></i>
                                                                        </span>
                                                                        <h3 class="fs-14 dark-color mb-0 ms-4">How to send bulk SMS?</h3>
                                                                    </div>
                                                                    <!--end::Header-->

                                                                    <!--begin::Body-->
                                                                    <div id="help_accordion_1_item_2" class="collapse fs-14 dark-color ps-10" data-bs-parent="#help_accordion_1">
                                                                        <div>
                                                                            <div class="mb-2">Please follow these steps to send your message:</div>
                                                                            <ol class="mb-0">
                                                                                <li>
                                                                                Enter the sender's name.
                                                                                </li>
                                                                                <li>
                                                                                Select the type of your message.
                                                                                </li>
                                                                                <li>
                                                                                Choose the recipient file from the right panel (Please note that you can select a maximum of 10 file). If you wish to upload a new file, check the File Manager in the left menu.
                                                                                </li>
                                                                                <li>
                                                                                Compose your text and make sure to check the character count to ensure it fits within the SMS limit.
                                                                                </li>
                                                                                <li>
                                                                                Click the "Send" button to transmit your message.
                                                                                </li>
                                                                            </ol>
                                                                        </div>
                                                                    </div>
                                                                    <!--end::Body-->
                                                                </div>
                                                                <!--end::Item-->

                                                                <!--begin::Item-->
                                                                <div class="mb-5">
                                                                    <!--begin::Header-->
                                                                    <div class="accordion-header py-3 d-flex collapsed" data-bs-toggle="collapse" data-bs-target="#help_accordion_1_item_3">
                                                                        <span class="accordion-icon">
                                                                        <i class="ki-duotone ki-plus-square fs-3 accordion-icon-off"><span class="path1"></span><span class="path2"></span><span class="path3"></span></i>
                                                                        <i class="ki-duotone ki-minus-square fs-3 accordion-icon-on"><span class="path1"></span><span class="path2"></span></i>
                                                                        </span>
                                                                        <h3 class="fs-14 dark-color mb-0 ms-4">How to upload bulk numbers file (.txt)?</h3>
                                                                    </div>
                                                                    <!--end::Header-->

                                                                    <!--begin::Body-->
                                                                    <div id="help_accordion_1_item_3" class="collapse fs-14 dark-color ps-10" data-bs-parent="#help_accordion_1">
                                                                        <div>
                                                                            <div class="mb-2">Follow these steps to manage and upload your file for sending bulk SMS:</div>
                                                                            <ol class="mb-0">
                                                                                <li>
                                                                                Click on the "Favorites" link in the left menu, then select "File Manager."
                                                                                </li>
                                                                                <li>
                                                                                Ensure your file is in one of the following formats: txt, csv, xlsx, or xls. The file should contain a maximum of 60,000 numbers, and it must only contain numbers without any [00] or [+] prefixes.
                                                                                </li>
                                                                                <li>
                                                                                In the File Manager page, click on the "Choose File" button to select the desired file from your local PC.
                                                                                </li>
                                                                                <li>
                                                                                Once you've selected the file, click the "Upload" button to proceed.
                                                                                </li>
                                                                                <li>
                                                                                Your file will be successfully uploaded and can now be edited in the File Manager page.
                                                                                </li>
                                                                                <li>
                                                                                You can utilize this uploaded file in the "Send Bulk SMS" page to efficiently send bulk messages.
                                                                                </li>
                                                                            </ol>
                                                                        </div>
                                                                    </div>
                                                                    <!--end::Body-->
                                                                </div>
                                                                <!--end::Item-->
                                                                <!--begin::Item-->
                                                                <div class="mb-5">
                                                                    <!--begin::Header-->
                                                                    <div class="accordion-header py-3 d-flex collapsed" data-bs-toggle="collapse" data-bs-target="#help_accordion_1_item_4">
                                                                        <span class="accordion-icon">
                                                                        <i class="ki-duotone ki-plus-square fs-3 accordion-icon-off"><span class="path1"></span><span class="path2"></span><span class="path3"></span></i>
                                                                        <i class="ki-duotone ki-minus-square fs-3 accordion-icon-on"><span class="path1"></span><span class="path2"></span></i>
                                                                        </span>
                                                                        <h3 class="fs-14 dark-color mb-0 ms-4">How to create ready template?</h3>
                                                                    </div>
                                                                    <!--end::Header-->

                                                                    <!--begin::Body-->
                                                                    <div id="help_accordion_1_item_4" class="collapse fs-14 dark-color ps-10" data-bs-parent="#help_accordion_1">
                                                                        <div>
                                                                            <div class="mb-2">To create and manage your templates, follow these steps:</div>
                                                                            <ol class="mb-0">
                                                                                <li>
                                                                                Click on the "Favorites" link located in the left menu, then select "SMS Templates."
                                                                                </li>
                                                                                <li>
                                                                                Enter a name for your new template.
                                                                                </li>
                                                                                <li>
                                                                                Type in the content of your template.
                                                                                </li>
                                                                                <li>
                                                                                Click the "Save" button to save your newly created template.
                                                                                </li>
                                                                                <li>
                                                                                If you wish to edit or delete a template later on, you can find the "Templates List" on the right panel, where you'll have the option to make modifications or remove templates as needed.
                                                                                </li>
                                                                            </ol>
                                                                        </div>
                                                                    </div>
                                                                    <!--end::Body-->
                                                                </div>
                                                                <!--end::Item-->
                                                            </div>
                                                            <!--end::Accordion-->
                                                        </div>
                                                        <!--begin::Menu separator-->
                                                        <div class="separator my-5"></div>
                                                        <!--end::Menu separator-->
                                                        <div>
                                                            <div class="mb-5 fs-16 dark-color fw-600">
                                                            Account Reloading
                                                            </div>
                                                            <!--begin::Accordion-->
                                                            <div class="accordion accordion-icon-collapse" id="help_accordion_2">
                                                                <!--begin::Item-->
                                                                <div class="mb-5">
                                                                    <!--begin::Header-->
                                                                    <div class="accordion-header py-3 d-flex collapsed" data-bs-toggle="collapse" data-bs-target="#help_accordion_2_item_1">
                                                                        <span class="accordion-icon">
                                                                            <i class="ki-duotone ki-plus-square fs-3 accordion-icon-off"><span class="path1"></span><span class="path2"></span><span class="path3"></span></i>
                                                                            <i class="ki-duotone ki-minus-square fs-3 accordion-icon-on"><span class="path1"></span><span class="path2"></span></i>
                                                                        </span>
                                                                        <h3 class="fs-14 dark-color mb-0 ms-4">How to reload my account?</h3>
                                                                    </div>
                                                                    <!--end::Header-->

                                                                    <!--begin::Body-->
                                                                    <div id="help_accordion_2_item_1" class="fs-14 dark-color collapse ps-10" data-bs-parent="#help_accordion_2">
                                                                        <div>
                                                                            <div class="mb-2">To reload your account, follow these steps:</div>
                                                                            <ol class="mb-0">
                                                                                <li>
                                                                                Click on the "Account Reloading" link located in the left menu.
                                                                                </li>
                                                                                <li>
                                                                                Choose the route type you wish to reload your account with.
                                                                                </li>
                                                                                <li>
                                                                                Choose the package you wish to reload your account with.
                                                                                </li>
                                                                                <li>
                                                                                Click the "Pay" button to proceed with the payment.
                                                                                </li>
                                                                                <li>
                                                                                After our billing team approves your payment, the account reloading process will take between 20 minutes to 1 hour.
                                                                                </li>
                                                                                <li>
                                                                                We accept various payment methods, including PayPal, credit & debit cards, as well as cryptocurrencies such as BTC, USDT, and ETH.
                                                                                </li>
                                                                            </ol>
                                                                        </div>
                                                                    </div>
                                                                    <!--end::Body-->
                                                                </div>
                                                                <!--end::Item-->
                                                                <!--begin::Item-->
                                                                <div class="mb-5">
                                                                    <!--begin::Header-->
                                                                    <div class="accordion-header py-3 d-flex collapsed" data-bs-toggle="collapse" data-bs-target="#help_accordion_2_item_2">
                                                                        <span class="accordion-icon">
                                                                        <i class="ki-duotone ki-plus-square fs-3 accordion-icon-off"><span class="path1"></span><span class="path2"></span><span class="path3"></span></i>
                                                                        <i class="ki-duotone ki-minus-square fs-3 accordion-icon-on"><span class="path1"></span><span class="path2"></span></i>
                                                                        </span>
                                                                        <h3 class="fs-14 dark-color mb-0 ms-4">Does the system reminds me when the balance reach a certain amount?</h3>
                                                                    </div>
                                                                    <!--end::Header-->

                                                                    <!--begin::Body-->
                                                                    <div id="help_accordion_2_item_2" class="collapse fs-14 dark-color ps-10" data-bs-parent="#help_accordion_2">
                                                                        <div>
                                                                            <div class="mb-2">To configure your balance settings, follow these steps:</div>
                                                                            <ol class="mb-0">
                                                                                <li>
                                                                                Navigate to the account settings.
                                                                                </li>
                                                                                <li>
                                                                                Locate the "Notifications" section.
                                                                                <ul>
                                                                                    <li>
                                                                                    Choose "Yes" for the "Low Balance Alert" option.
                                                                                    </li>
                                                                                    <li>
                                                                                    Enter the desired low amount of SMS in the "Low Balance Amount" field (for example, 500).
                                                                                    </li>
                                                                                    <li>
                                                                                    Provide the email address where you wish to receive the Balance Alert.
                                                                                    </li>
                                                                                </ul>
                                                                                </li>
                                                                                <li>
                                                                                Click the "Save" button to save your settings.
                                                                                </li>
                                                                            </ol>
                                                                        </div>
                                                                    </div>
                                                                    <!--end::Body-->
                                                                </div>
                                                                <!--end::Item-->
                                                            </div>
                                                            <!--end::Accordion-->
                                                        </div>
                                                        <!--begin::Menu separator-->
                                                        <div class="separator my-5"></div>
                                                        <!--end::Menu separator-->
                                                        <div>
                                                            <div class="mb-5 fs-16 dark-color fw-600">
                                                            Reports
                                                            </div>
                                                            <!--begin::Accordion-->
                                                            <div class="accordion accordion-icon-collapse" id="help_accordion_3">
                                                                <!--begin::Item-->
                                                                <div class="mb-5">
                                                                    <!--begin::Header-->
                                                                    <div class="accordion-header py-3 d-flex collapsed" data-bs-toggle="collapse" data-bs-target="#help_accordion_3_item_1">
                                                                        <span class="accordion-icon">
                                                                            <i class="ki-duotone ki-plus-square fs-3 accordion-icon-off"><span class="path1"></span><span class="path2"></span><span class="path3"></span></i>
                                                                            <i class="ki-duotone ki-minus-square fs-3 accordion-icon-on"><span class="path1"></span><span class="path2"></span></i>
                                                                        </span>
                                                                        <h3 class="fs-14 dark-color mb-0 ms-4">How to check my sent messages?</h3>
                                                                    </div>
                                                                    <!--end::Header-->

                                                                    <!--begin::Body-->
                                                                    <div id="help_accordion_3_item_1" class="fs-14 dark-color collapse ps-10" data-bs-parent="#help_accordion_3">
                                                                        <div>
                                                                            <div class="mb-2">To access your Sent SMS Report, follow these steps:</div>
                                                                            <ol class="mb-0">
                                                                                <li>
                                                                                Click on the "Reports" link in the left menu, then select "Sent SMS Report."
                                                                                </li>
                                                                                <li>
                                                                                A new page will open, displaying detailed information about your sent SMS, including date, recipient, sender name, status, and more.
                                                                                </li>
                                                                                <li>
                                                                                The report will show today's sent messages. If you need an older report, you can request an export report for your desired timeframe.
                                                                                </li>
                                                                            </ol>
                                                                        </div>
                                                                    </div>
                                                                    <!--end::Body-->
                                                                </div>
                                                                <!--end::Item-->
                                                                <!--begin::Item-->
                                                                <div class="mb-5">
                                                                    <!--begin::Header-->
                                                                    <div class="accordion-header py-3 d-flex collapsed" data-bs-toggle="collapse" data-bs-target="#help_accordion_3_item_2">
                                                                        <span class="accordion-icon">
                                                                        <i class="ki-duotone ki-plus-square fs-3 accordion-icon-off"><span class="path1"></span><span class="path2"></span><span class="path3"></span></i>
                                                                        <i class="ki-duotone ki-minus-square fs-3 accordion-icon-on"><span class="path1"></span><span class="path2"></span></i>
                                                                        </span>
                                                                        <h3 class="fs-14 dark-color mb-0 ms-4">What is the queue report?</h3>
                                                                    </div>
                                                                    <!--end::Header-->

                                                                    <!--begin::Body-->
                                                                    <div id="help_accordion_3_item_2" class="collapse fs-14 dark-color ps-10" data-bs-parent="#help_accordion_3">
                                                                        <div>
                                                                            <div>
                                                                            The Queue Report displays your bulk SMS groups after sending. In this report, you can view all your bulk message files along with their respective statuses. The bulk group files will remain in the queue until the system finishes sending the messages. During this time, the status will be indicated as "In Progress." Once the system successfully sends your bulk groups, the files will be removed from the queue list and will appear in the Sent Report.
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <!--end::Body-->
                                                                </div>
                                                                <!--end::Item-->
                                                                <!--begin::Item-->
                                                                <div class="mb-5">
                                                                    <!--begin::Header-->
                                                                    <div class="accordion-header py-3 d-flex collapsed" data-bs-toggle="collapse" data-bs-target="#help_accordion_3_item_3">
                                                                        <span class="accordion-icon">
                                                                        <i class="ki-duotone ki-plus-square fs-3 accordion-icon-off"><span class="path1"></span><span class="path2"></span><span class="path3"></span></i>
                                                                        <i class="ki-duotone ki-minus-square fs-3 accordion-icon-on"><span class="path1"></span><span class="path2"></span></i>
                                                                        </span>
                                                                        <h3 class="fs-14 dark-color mb-0 ms-4">What is credits report?</h3>
                                                                    </div>
                                                                    <!--end::Header-->

                                                                    <!--begin::Body-->
                                                                    <div id="help_accordion_3_item_3" class="collapse fs-14 dark-color ps-10" data-bs-parent="#help_accordion_3">
                                                                        <div>
                                                                            <div>
                                                                            In the Reload Report, you can review your account reloading log, which includes details such as adding new credits, dates, current balance, and more.
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <!--end::Body-->
                                                                </div>
                                                                <!--end::Item-->
                                                                <!--begin::Item-->
                                                                <div class="mb-5">
                                                                    <!--begin::Header-->
                                                                    <div class="accordion-header py-3 d-flex collapsed" data-bs-toggle="collapse" data-bs-target="#help_accordion_3_item_4">
                                                                        <span class="accordion-icon">
                                                                        <i class="ki-duotone ki-plus-square fs-3 accordion-icon-off"><span class="path1"></span><span class="path2"></span><span class="path3"></span></i>
                                                                        <i class="ki-duotone ki-minus-square fs-3 accordion-icon-on"><span class="path1"></span><span class="path2"></span></i>
                                                                        </span>
                                                                        <h3 class="fs-14 dark-color mb-0 ms-4">What is payment report?</h3>
                                                                    </div>
                                                                    <!--end::Header-->

                                                                    <!--begin::Body-->
                                                                    <div id="help_accordion_3_item_4" class="collapse fs-14 dark-color ps-10" data-bs-parent="#help_accordion_3">
                                                                        <div>
                                                                            <div>
                                                                            Within the Payment Reports section, you can access comprehensive information about your payments, including billing name, paid amount, and other relevant details. Additionally, you have the option to view and download your payment receipts. Simply click on the "Receipt" link, and it will display your payment receipt, which you can print or save for your records and other purposes.
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <!--end::Body-->
                                                                </div>
                                                                <!--end::Item-->
                                                            </div>
                                                            <!--end::Accordion-->
                                                        </div>
                                                    </div>
                                                    <!--end::Card body-->
                                                </div>
                                                <!--end::Card widget 4-->
                                            </div>
                                            <!--end::Col-->
                                            <!--begin::Col-->
                                            <div class="col-md-4 mb-md-0 mb-5 mt-5">
                                                <div class="card card-flush shadow-xs h-100 border-0 mb-5">
                                                    <div class="custom-border-left h-100 mt-10 mt-md-0">
                                                        <div class="p-8">
                                                        
                                                                <div class="mb-6">
                                                                    <p class="fs-16  fw-600 dark-color mb-1">
                                                                    Support Ticket
                                                                    </p>
                                                                    <p class="fs-14 dark-color mb-0">
                                                                    Log in to your support center account to access our comprehensive knowledgebase or submit a ticket to dedicated support team.
                                                                    </p>
                                                                    <div class="mt-5">
                                                                        <a class="btn btn-primary btn-grad py-4 px-6 rounded-1" href="#">Submit request</a>
                                                                    </div>
                                                                </div>
                                                        
                                                            <!--begin::Menu separator-->
                                                            <div class="separator my-5"></div>
                                                            <!--end::Menu separator-->
                                                            <div>
                                                                <div class="mb-6">
                                                                    <p class="fs-16  fw-600 dark-color mb-1">
                                                                    Knowledgebase
                                                                    </p>
                                                                    <p class="fs-14 dark-color mb-0">
                                                                    Explore knowledgebase for comprehensive information on SMS service and gain valuable insights to enhance your understanding.
                                                                    </p>
                                                                    <div class="mt-5">
                                                                        <a class="btn btn-primary btn-grad py-4 px-6 rounded-1" href="#">Explore now</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <!--begin::Menu separator-->
                                                            <div class="separator my-5"></div>
                                                            <!--end::Menu separator-->
                                                            <div>
                                                                <div class="mb-6">
                                                                    <p class="fs-16 fw-600 dark-color mb-1">
                                                                    Live Support
                                                                    </p>
                                                                    <p class="fs-14 dark-color mb-0">
                                                                    Need assistance? Our support team is just a WhatsApp away! Reach out to us through live chat for prompt and personalized help.
                                                                    </p>
                                                                    <div class="mt-5 d-flex justify-content-start align-items-center">
                                                                        <a class="btn btn-primary btn-grad py-4 px-6 rounded-1 me-3" href="#">WhatsApp</a>
                                                                        <a class="btn btn-primary btn-grad py-4 px-6 rounded-1" href="#">Live Chat</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <!--begin::Menu separator-->
                                                            <div class="separator my-5"></div>
                                                            <!--end::Menu separator-->
                                                            <div>
                                                                <div class="mb-6">
                                                                    <p class="fs-16 fw-600 dark-color mb-1">
                                                                    Email
                                                                    </p>
                                                                    <p class="fs-14 dark-color mb-0">
                                                                    Our dedicated support team is ready to provide you with the help you need. Simply reach out to us, and we'll respond promptly to address your concerns.
                                                                    </p>
                                                                    <div class="mt-5">
                                                                        <a class="btn btn-primary btn-grad py-4 px-6 rounded-1" href="#">Send email</a>
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
                               
                            <div class="row g-5 g-xl-10 mb-xl-10 mt-5 px-5">
                                <div class="card card-flush shadow-xs h-100 border-0 mt-5 py-5">   
                                    <div class="page-title d-flex flex-column justify-content-center gap-1">
                                             <!--begin::Title-->
                                             <div class="mb-1 fs-16 dark-color fw-600 ps-4">
                                                 Video Tutorials
                                             </div>
                                             <p class="fs-14 color-neutral-grey ps-4">
                                                 Access our collection of video guides designed to assist you in navigating our dashboard seamlessly.
                                             </p>
                                             <!--end::Title-->
                                    </div>
                                    <div class="row g-xl-12 mt-0 px-5">
                                        <div class="col-4 p-4 ">
                                            <div class="border-1 rounded-2">
                                                 <img src="assets/img/youtube.png" class="img-fluid p-4" height="160" width="360" loading="lazy" alt="reseller">
                                                    <div class="mb-5 mt-5 fs-16 dark-color fw-600 ps-4">
                                                         How to Send Single SMS
                                                    </div>
                                                    <p class="fs-14 grey-color ps-4 pe-5">
                                                        This video will guide you to send your first send single SMS in a brief and easiest way possible.
                                                    </p>
                                            </div>
                                        </div>
                                        <div class="col-4 p-4 ">
                                            <div class="border-1 rounded-2">
                                                 <img src="assets/img/youtube.png" class="img-fluid p-4" height="160" width="360" loading="lazy" alt="reseller">
                                                    <div class="mb-5 mt-5 fs-16 dark-color fw-600 ps-4">
                                                         How to Send Single SMS
                                                    </div>
                                                    <p class="fs-14 grey-color ps-4 pe-5">
                                                        This video will guide you to send your first send single SMS in a brief and easiest way possible.
                                                    </p>
                                            </div>
                                        </div>
                                        <div class="col-4 p-4 ">
                                            <div class="border-1 rounded-2">
                                               <img src="assets/img/youtube.png" class="img-fluid p-4" height="160" width="360" loading="lazy" alt="reseller">
                                                <div class="mb-5 mt-5 fs-16 dark-color fw-600 ps-4">
                                                    How to Send Single SMS
                                                </div>
                                                <p class="fs-14 grey-color ps-4 pe-5">
                                                    This video will guide you to send your first send single SMS in a brief and easiest way possible.
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row g-xl-10 mt-0 px-5">
                                        <div class="col-4 p-4">
                                            <div class="border-1 rounded-2">
                                               <img src="assets/img/youtube.png" class="img-fluid p-4" height="160" width="360" loading="lazy" alt="reseller">
                                                <div class="mb-5 mt-5 fs-16 dark-color fw-600 ps-4">
                                                    How to Send Single SMS
                                                </div>
                                                <p class="fs-14 grey-color ps-4 pe-5">
                                                    This video will guide you to send your first send single SMS in a brief and easiest way possible.
                                                </p>
                                            </div>
                                        </div>
                                        <div class="col-4 p-4 ">
                                            <div class="border-1 rounded-2">
                                               <img src="assets/img/youtube.png" class="img-fluid p-4" height="160" width="360" loading="lazy" alt="reseller">
                                                <div class="mb-5 mt-5 fs-16 dark-color fw-600 ps-4">
                                                    How to Send Single SMS
                                                </div>
                                                <p class="fs-14 grey-color ps-4 pe-5">
                                                    This video will guide you to send your first send single SMS in a brief and easiest way possible.
                                                </p>
                                            </div>
                                        </div>
                                        <div class="col-4">
                                        </div>
                                    </div>
                                </div>
							</div>
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
