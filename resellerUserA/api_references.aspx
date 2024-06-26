<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="api_references.aspx.cs" Inherits="resellerUserA.api_references" %>

<%@ Register Src="~/Controls/head.ascx" TagPrefix="uc1" TagName="head" %>

<%@ Register Src="~/Controls/menuTop.ascx" TagPrefix="uc1" TagName="menuTop" %>
<%@ Register Src="~/Controls/sideBar.ascx" TagPrefix="uc1" TagName="sideBar" %>
<%@ Register Src="~/Controls/footer.ascx" TagPrefix="uc1" TagName="footer" %>
<%@ Register Src="~/Controls/footerLinks.ascx" TagPrefix="uc1" TagName="footerLinks" %>



<uc1:head runat="server" ID="head" />

<title>SMS API (3.0)</title>
<link rel="stylesheet" href="/assets/css/prism.css">
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
             <uc1:menuTop runat="server" id="menuTop1" parentPageText="API" childPageText="SMS API (3.0)"/>
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
                            <div id="kt_app_content_container" class="app-container container-fluid cutom-tabs">
                                <!--begin::Row-->
                                <div class="row g-5 g-xl-10">
                                    <!--begin::Col-->
                                    <div class="col-xl-12 mb-xl-10">
                                        <div class="mb-10">
                                            <ul class="nav nav-tabs nav-line-tabs nav-line-tabs-2x mb-5 fs-6">
                                                <li class="nav-item">
                                                    <a class="nav-link fs-18 active" data-bs-toggle="tab" href="#sms_api_tab">SMS API (3.0)</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link fs-18" data-bs-toggle="tab" href="#smpp_tab">SMPP (3.4)</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link fs-18" data-bs-toggle="tab" href="#credits_tab">Account Credits</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link fs-18" data-bs-toggle="tab" href="#http_tab">HTTP Callback</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link fs-18" data-bs-toggle="tab" href="#hlr_tab">HLR Lookup</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link fs-18" data-bs-toggle="tab" href="#samples_tab">Code Samples</a>
                                                </li>
                                            </ul>
                                        </div>
                                        <!--begin::List widget 10-->
                                        <div class="card card-flush shadow-xs">
                                            <!--begin::Body-->
                                            <div class="card-body">
                                            <div class="tab-content mt-0" id="myTabContent">
                                                        <div class="tab-pane fade show active" id="sms_api_tab" role="tabpanel">
                                                            <div>
                                                                <div class="fs-20 color-black-1 fw-600 mb-3">SMS API (3.0)</div>
                                                                <p class="fs-14 color-black-1">
                                                                HTTP Interface for Sending SMS: Empowering Seamless Integration with reseller
                                                                </p>
                                                                <p class="fs-14 color-black-1">
                                                                Welcome to the comprehensive reference page for utilizing the HTTP interface to send SMS through reseller.
                                                                </p>
                                                                <p class="fs-14 color-black-1">
                                                                Our HTTP-API enables seamless integration of your system (client) with reseller, utilizing the power of the HTTP protocol. For enhanced security, we also support HTTPS for secure transactions with SSL encryption.
                                                                </p>
                                                                <p class="fs-14 color-black-1">
                                                                To send SMS, the client can initiate either a GET or POST request to the reseller HTTP API, providing the necessary parameters. Our system will respond with an HTTP response, indicating the status of the sent message.
                                                                </p>
                                                                <p class="fs-14 color-black-1">
                                                                It's important to note that the HTTP-API is designed for one-way messaging purposes only, focusing on the transmission of messages from your system to recipients.
                                                                </p>
                                                                <p class="fs-14 color-black-1">
                                                                Experience the ease and efficiency of integrating with reseller through our robust HTTP interface, enabling seamless SMS delivery and enhancing your messaging capabilities.
                                                                </p>
                                                                <div class="table-responsive mt-8">
                                                                    <table class="table custom-table">
                                                                        <thead>
                                                                            <tr>
                                                                                <th class="white-color fs-16 fw-600">Method</th>
                                                                                <th class="white-color fs-16 fw-600">API URL</th>
                                                                            </tr>
                                                                        </thead>
                                                                        <tbody>
                                                                            <tr class="fs-14 color-black-1">
                                                                                <td class="color-black-1 fs-16">[Get, Post]</td>
                                                                                <td class="color-black-1 fs-16"><a target="_blank" href="https://api.reseller.io/bulksms?username=YourUsername&amp;password=YourPassword&amp;mt=MessageType&amp;sid=SenderName&amp;mno=MobileNumber&amp;msg=Message">https://api.reseller.io/bulksms?username=YourUsername&amp;password=YourPassword&amp;mt=MessageType&amp;sid=SenderName&amp;mno=MobileNumber&amp;msg=Message</a></td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                                <div class="table-responsive mt-8">
                                                                    <table class="table custom-table">
                                                                        <thead>
                                                                            <tr>
                                                                                <th class="white-color fs-16 fw-600">Parametres</th>
                                                                                <th class="white-color fs-16 fw-600">Description</th>
                                                                            </tr>
                                                                        </thead>
                                                                        <tbody>
                                                                            <tr class="fs-14 color-black-1">
                                                                                <td>Username</td>
                                                                                <td>Your reseller account username</td>
                                                                            </tr>
                                                                            <tr class="fs-14 color-black-1">
                                                                                <td>Password</td>
                                                                                <td>Your reseller account password</td>
                                                                            </tr>
                                                                            <tr class="fs-14 color-black-1">
                                                                                <td>MT</td>
                                                                                <td>Message Type ( English = 0, Unicode =1 and for messages in languages other than English =1 )</td>
                                                                            </tr>
                                                                            
                                                                            <tr class="fs-14 color-black-1">
                                                                                <td>SID</td>
                                                                                <td>Sender Name<br><br>
                                                                                    When specifying the sender name for your messages, please adhere to the following guidelines to ensure optimal display and compliance:<br><br>
                                                                                    <strong>Character Limit:</strong> The maximum length of the sender name is 18 characters if it consists solely of numeric characters. If the sender name includes both alphabetic and numeric characters, the maximum length is 11 characters.<br><br>
                                                                                    <strong>Prefixing with '+':</strong>  If you desire the sender address to be displayed with a plus sign ('+') on recipients' cell phones, please ensure that you prefix the plus sign to your sender address while submitting the message. It's important to note that the plus sign should be URL encoded for proper transmission.<br><br>
                                                                                    <strong>SMSC Restrictions:</strong> It's important to be aware that additional restrictions on the sender name field may be enforced by the Short Message Service Center (SMSC). These restrictions may vary, and it's advisable to ensure compliance with any applicable regulations or guidelines set forth by the SMSC.<br><br>
                                                                                </td>
                                                                            </tr>
                                                                            <tr class="fs-14 color-black-1">
                                                                                <td>MNO</td>
                                                                                <td>Recipient Mobile Numbers: Streamlined Delivery for Effective Messaging. <br><br>
                                                                                    To ensure seamless message delivery, please adhere to the following guidelines when specifying the mobile numbers of your recipients:<br><br>
                                                                                    <strong>Format:</strong> When entering the mobile numbers, do not include a plus sign ('+') or '00' prefix. Please provide the numbers in their standard format, without any additional symbols or characters.<br><br>
                                                                                    <strong>Multiple Numbers:</strong> If you need to send the message to multiple recipients, you can include multiple mobile numbers separated by commas.<br><br>
                                                                                    <strong>Submission Limit:</strong> For each message submission, you can include a maximum of 30 mobile numbers. This limit helps maintain optimal performance and ensures efficient processing of your messaging requests.<br><br>
                                                                                </td>
                                                                            </tr>
                                                                            <tr class="fs-14 color-black-1">
                                                                                <td>MSG</td>
                                                                                <td>Message Content: Ensuring Optimal Length and Concatenation for Effective Delivery<br><br>
                                                                                    When composing your message, please keep the following details in mind to ensure optimal length and proper handling:<br><br>
                                                                                    <strong>Message Types:</strong> The message content can be in English as plain text or in any other language encoded as Unicode. This allows for a wide range of language options to cater to your messaging needs.<br><br>
                                                                                    <strong>Maximum Message Length:</strong> The maximum length of a message is 5 parts. However, please note that the exact character limit may vary based on specific requirements and restrictions.<br><br>
                                                                                    <strong>Concatenated (Long) Messages:</strong> In the case of concatenated or long messages, the system counts every 153 characters as one message for plain text and 67 characters for Unicode. The remaining characters are reserved by the system to pack additional information required for reassembling the message on the recipient's cell phone.<br><br>
                                                                                </td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                                <!--begin::Menu separator-->
                                                                <div class="separator my-8"></div>
                                                                <!--end::Menu separator-->
                                                                <div class="fs-20 color-black-1 fw-600 mb-3">HTTP Response: Providing Status and Error Information</div>
                                                                <p class="fs-14 color-black-1">
                                                                When you receive an HTTP response from our system, it will contain the following details: 
                                                                </p>
                                                                <ul>
                                                                    <li class="fs-14 color-black-1 mb-2">
                                                                        <span class="fw-600">Status Code: </span> The response will include a status code indicating the outcome of the request.
                                                                    </li>
                                                                    <li class="fs-14 color-black-1 mb-2">
                                                                        <span class="fw-600">Sent OK Message ID: </span> This is an internal identifier for tracking purposes (internal use only).
                                                                    </li>
                                                                    <li class="fs-14 color-black-1 mb-2">
                                                                        <span class="fw-600">SMS ID: </span> The unique identifier assigned to the sent SMS.
                                                                    </li>
                                                                    <li class="fs-14 color-black-1 mb-2">
                                                                        <span class="fw-600">Error Message: </span> If an error occurred during the process, an error message will be included to provide additional information.
                                                                    </li>
                                                                </ul>
                                                                <!--begin::Menu separator-->
                                                                <div class="separator my-8"></div>
                                                                <!--end::Menu separator-->
                                                                <div class="fs-20 color-black-1 fw-600 mb-3">Status Codes:</div>
                                                                <p class="fs-14 color-black-1">
                                                                If the message was sent successfully, the status code will be returned as "OK," followed by the corresponding message ID. "OK: 760d54eb-3a82-405c-a7a7-0a0096833615" In the event of a request failure, the status code will be returned as "ERROR," as an error code. 00
                                                                </p>
                                                                <p class="fs-14 color-black-1">
                                                                For a smooth integration and error-free messaging, please refer to the provided examples and ensure the correct formatting and parameter values. Here's an example for a (GET method) request using the HTTP interface:
                                                                </p>
                                                                <ul>
                                                                    <li class="fs-14 color-black-1 mb-4">
                                                                        <div class="fw-600 mb-1">Send Single SMS:</div>
                                                                        Here's an example for a (GET method) request using the HTTP interface: Sending a Single SMS in English Please note that the message must be URL encoded, and the type parameter should be set to 0.
                                                                        <br>
                                                                        <a href="https://api.reseller.io/bulksms?username=YourUsername&password=YourPassword&mt=0&sid=SenderName&mno=MobileNumber&msg=Message">https://api.reseller.io/bulksms?username=YourUsername&password=YourPassword&mt=0&sid=SenderName&mno=MobileNumber&msg=Message</a>
                                                                    </li>
                                                                    <li class="fs-14 color-black-1 mb-4">
                                                                        <div class="fw-600 mb-1">Send Bulk SMS:</div>
                                                                        Here's an example for a (GET method) request using the HTTP interface: Sending a bulk SMS in English Please note that the message must be URL encoded, and the type parameter should be set to 0.
                                                                        <br>
                                                                        <a href="https://api.reseller.io/bulksms?username=YourUsername&password=YourPassword&mt=0&sid=SenderName&mno=61111111111111,61111111111111,61111111111111,61111111111111&msg=Message">https://api.reseller.io/bulksms?username=YourUsername&password=YourPassword&mt=0&sid=SenderName&mno=61111111111111,61111111111111,61111111111111,61111111111111&msg=Message</a>
                                                                    </li>
                                                                    <li class="fs-14 color-black-1 mb-4">
                                                                        <div class="fw-600 mb-1">Send Unicode SMS:</div>
                                                                        Here's an example for a (GET method) request using the HTTP interface: Sending a Single SMS in Unicode type. Please note that the message must Hexadecimal encoding represents characters using a combination of numbers and letters from 0 to 9 and A to F., and the type parameter should be set to 1.
                                                                        <br>
                                                                        <a href="https://api.reseller.io/bulksms?username=YourUsername&password=YourPassword&mt=1&sid=SenderName&mno=61111111111111&msg=627062D00200641064A0020062E062F0645062900200631063306270626064400200627064406">https://api.reseller.io/bulksms?username=YourUsername&password=YourPassword&mt=1&sid=SenderName&mno=61111111111111&msg=627062D00200641064A0020062E062F0645062900200631063306270626064400200627064406</a>
                                                                    </li>
                                                                    <li class="fs-14 color-black-1 mb-4">
                                                                        <div class="fw-600 mb-1">Rate Limit:</div>
                                                                        The default rate limit for SMS API requests is set at 30 requests per second per account.<br/>
                                                                        Additionally, our system has the capacity to handle up to 150 requests per second per IP address. It's important to note that any requests surpassing the defined rate limits will be rejected with a 429 Too Many Requests HTTP status code. This ensures fair usage and equitable resource allocation for all API users. If you require a higher rate limit, please feel free to contact our dedicated support team, who will be glad to assist you in adjusting the rate limit to meet your specific needs.
                                                                        </li>
                                                                </ul>
                                                                <!--begin::Menu separator-->
                                                                <div class="separator my-8"></div>
                                                                <!--end::Menu separator-->
                                                                <div class="fs-20 color-black-1 fw-600 mb-3">Error Codes:</div>
                                                                <p class="fs-14 color-black-1">
                                                                Please refer to these status codes and their descriptions for accurate troubleshooting and resolution within the HTTP/HTTPS Gateway system.
                                                                </p>
                                                                <div class="table-responsive mt-8">
                                                                    <table class="table custom-table">
                                                                        <thead>
                                                                            <tr>
                                                                                <th class="white-color fs-16 fw-600">Code</th>
                                                                                <th class="white-color fs-16 fw-600">Description</th>
                                                                            </tr>
                                                                        </thead>
                                                                        <tbody>
                                                                            <tr class="fs-14 color-black-1">
                                                                                <td>0000</td>
                                                                                <td>Service is temporarily unavailable or down.</td>
                                                                            </tr>
                                                                            <tr class="fs-14 color-black-1">
                                                                                <td>000</td>
                                                                                <td> Please ensure all required parameters are filled in correctly.</td>
                                                                            </tr>
                                                                            <tr class="fs-14 color-black-1">
                                                                                <td>00</td>
                                                                                <td>Invalid username or password or trial account expired.</td>
                                                                            </tr>
                                                                            <tr class="fs-14 color-black-1">
                                                                                <td>0020</td>
                                                                                <td>Insufficient account credits to perform the operation.</td>
                                                                            </tr>
                                                                            <tr class="fs-14 color-black-1">
                                                                                <td>0030</td>
                                                                                <td>Invalid sender name.</td>
                                                                            </tr>
                                                                            <tr class="fs-14 color-black-1">
                                                                                <td>0041</td>
                                                                                <td>Invalid mobile number.</td>
                                                                            </tr>
                                                                            <tr class="fs-14 color-black-1">
                                                                                <td>0042</td>
                                                                                <td>Network is not supported/ activated.</td>
                                                                            </tr>
                                                                            <tr class="fs-14 color-black-1">
                                                                                <td>0050</td>
                                                                                <td>Invalid SMS text message.</td>
                                                                            </tr>
                                                                            <tr class="fs-14 color-black-1">
                                                                                <td>0051</td>
                                                                                <td>Invalid message type.</td>
                                                                            </tr>
                                                                            <tr class="fs-14 color-black-1">
                                                                                <td>0060</td>
                                                                                <td>Invalid submission limit.</td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="tab-pane fade" id="smpp_tab" role="tabpanel">
                                                            <div>
                                                                <div class="fs-20 color-black-1 fw-600 mb-3">SMPP v3.4</div>
                                                                <p class="fs-14 color-black-1">
                                                                Introducing Enhanced SMPP Service: Empowering You with Unparalleled SMS Control and Lightning-Fast Latency
                                                                </p>  
                                                                <p class="fs-14 color-black-1">
                                                                To cater to our esteemed customers who require granular control over SMS messaging and demand the lowest possible latency, we proudly offer our Enhanced SMPP service.
                                                                </p>  
                                                                <p class="fs-14 color-black-1">
                                                                To avail yourself of this exceptional service, kindly reach out to our dedicated support team. They will assist you in getting your SMPP server IP white-listed, enabling seamless utilization of this feature-rich offering.
                                                                </p>  
                                                                <p class="fs-14 color-black-1">
                                                                This comprehensive document serves as a valuable reference, presenting an extensive array of features available to you through the SMPP interface for sending SMS. Notably, SMPP stands as the industry-standard protocol for transmitting SMS messages to network providers, and it serves as our native protocol.
                                                                </p>  
                                                                <p class="fs-14 color-black-1">
                                                                The Short Message Peer-to-Peer (SMPP) protocol plays a vital role in facilitating SMS message exchange between Short Message Service Centers (SMSC) and External Short Messaging Entities (ESME) within the telecommunications industry.
                                                                </p>  
                                                                <p class="fs-14 color-black-1">
                                                                Operating at the level-7 of the TCP/IP protocol stack, SMPP ensures swift and efficient delivery of SMS messages. Among the widely adopted versions of SMPP, v3.3 stands as the most prevalent and supported standard, while v3.4 introduces transceiver support, enabling single connections to both send and receive messages. Data exchange occurs in synchronous mode, where each peer awaits a response for each Protocol Data Unit (PDU) sent, or in asynchronous mode, allowing multiple requests to be issued and acknowledged in a non-linear fashion by the other peer.
                                                                </p>  
                                                                <p class="fs-14 color-black-1">
                                                                In line with our commitment to superior performance, we offer support for throughput of up to 300 SMS per second. To explore the details of this remarkable capability, we encourage you to contact our support team, who will be delighted to provide further information and assistance.
                                                                </p>  
                                                                <!--begin::Menu separator-->
                                                                <div class="separator my-8"></div>
                                                                <!--end::Menu separator-->
                                                                <div class="fs-20 color-black-1 fw-600 mb-3">SMPP Connection:</div>
                                                                <div class="table-responsive mt-8">
                                                                    <table class="table custom-table">
                                                                        <thead>
                                                                            <tr>
                                                                                <th class="white-color fs-16 fw-600">Parametres</th>
                                                                                <th class="white-color fs-16 fw-600">Description</th>
                                                                            </tr>
                                                                        </thead>
                                                                        <tbody>
                                                                            <tr class="fs-14 color-black-1">
                                                                                <td>Host</td>
                                                                                <td>smpp.reseller.io</td>
                                                                            </tr>
                                                                            <tr class="fs-14 color-black-1">
                                                                                <td>Port</td>
                                                                                <td>2779</td>
                                                                            </tr>
                                                                            <tr class="fs-14 color-black-1">
                                                                                <td>SSL Port</td>
                                                                                <td>2777</td>
                                                                            </tr>
                                                                            <tr class="fs-14 color-black-1">
                                                                                <td>Username</td>
                                                                                <td>Your reseller account username</td>
                                                                            </tr>
                                                                            <tr class="fs-14 color-black-1">
                                                                                <td>Password</td>
                                                                                <td>Your reseller account password</td>
                                                                            </tr>
                                                                            <tr class="fs-14 color-black-1">
                                                                                <td>Sessions</td>
                                                                                <td>2 sessions, in TX / RX / TRX mode </td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                                <!--begin::Menu separator-->
                                                                <div class="separator my-8"></div>
                                                                <!--end::Menu separator--> 
                                                                <p class="fs-14 color-black-1 fw-600">
                                                                Please note the following conventions for setting TON (Type of Number) and NPI (Numbering Plan Indicator) based on specific conditions:
                                                                </p>
                                                                <ol>
                                                                    <li class="fs-14 color-black-1 mb-2">If the sender address is alphanumeric or non-numeric, TON is set to 5, and NPI is set to 0.</li>
                                                                    <li class="fs-14 color-black-1 mb-2">If the sender address is a short code, TON is set to 3, and NPI is set to 0.</li>
                                                                    <li class="fs-14 color-black-1 mb-2">If the sender starts with a "+" symbol, TON is set to 1, and NPI is set to 1.</li>
                                                                    <li class="fs-14 color-black-1 mb-2">If the recipient starts with a "+" symbol, TON is set to 1, and NPI is set to 1.</li>
                                                                    <li class="fs-14 color-black-1 mb-2">For all other cases, TON is set to 0, and NPI is set to 1.</li>
                                                                </ol>
                                                                <p class="fs-14 color-black-1">
                                                                Should you require higher throughput than the standard offering, kindly reach out to our dedicated support team for further assistance.
                                                                </p>  
                                                            </div>
                                                        </div>
                                                        <div class="tab-pane fade" id="credits_tab" role="tabpanel">
                                                            <div>
                                                                <div class="fs-20 color-black-1 fw-600 mb-3">Get account credits</div>
                                                                <p class="fs-14 color-black-1">
                                                                reseller Balance API (GET, POST Method): Empowering Seamless Account Balance Queries
                                                                </p>  
                                                                <p class="fs-14 color-black-1">
                                                                Welcome to the reseller Balance API, designed to provide you with comprehensive access to various features through the HTTP interface for account balance inquiries.
                                                                </p>  
                                                                <p class="fs-14 color-black-1">
                                                                Through our HTTP-API, you can seamlessly integrate your system (client) with reseller, utilizing the robustness of the HTTP protocol to effortlessly request and verify your account balance. To ensure utmost security, HTTPS is also supported, enabling transactions with SSL encryption.
                                                                </p>  
                                                                <p class="fs-14 color-black-1">
                                                                By issuing a GET or POST request to the reseller HTTP API, accompanied by the necessary parameters, your client system can retrieve a detailed account balance. Our system promptly responds with an HTTP response in a text format, offering transparent insights into the current credit available in your account.
                                                                </p>  
                                                                <p class="fs-14 color-black-1">
                                                                Experience the convenience and efficiency of the reseller Balance API for effortlessly accessing real-time credit information.
                                                                </p>
                                                                 <div>
                                                                 <span class="fs-14 color-black-1 fw-600 mb-3 me-3">API URL [GET, POST]:</span>
                                                                 <a href="https://api.reseller.io/checkbalance?user=yourusername&pass=yourpassword">https://api.reseller.io/checkbalance?user=yourusername&pass=yourpassword</a>
                                                                 </div>
                                                                <!--begin::Menu separator-->
                                                                <div class="separator my-8"></div>
                                                                <!--end::Menu separator-->
                                                                <div class="table-responsive mt-8 mb-5">
                                                                    <table class="table custom-table">
                                                                        <thead>
                                                                            <tr>
                                                                                <th class="white-color fs-16 fw-600">Parametres</th>
                                                                                <th class="white-color fs-16 fw-600">Description</th>
                                                                            </tr>
                                                                        </thead>
                                                                        <tbody>
                                                                        
                                                                            <tr class="fs-14 color-black-1">
                                                                                <td>Username</td>
                                                                                <td>Your reseller account username</td>
                                                                            </tr>
                                                                            <tr class="fs-14 color-black-1">
                                                                                <td>Password</td>
                                                                                <td>Your reseller account password</td>
                                                                            </tr>
                                                                        
                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                                <div class="fs-20 color-black-1 fw-600 mb-3">Response:</div>
                                                                <ol>
                                                                    <li class="fs-14 color-black-1 mb-2">00 Invalid username or password.</li>
                                                                    <li class="fs-14 color-black-1 mb-2">0 or remaining credits.</li>
                                                                </ol>
                                                                <!--begin::Menu separator-->
                                                                <div class="separator my-8"></div>
                                                                <!--end::Menu separator--> 
                                                                <div class="fs-20 color-black-1 fw-600 mb-3">API Rate Limit: Ensuring Optimal Service with reseller</div>
                                                                <p class="fs-14 color-black-1">
                                                                At reseller, we prioritize delivering a high-quality service experience for all our valued customers. To maintain optimal performance, our API implements rate limits specifically for the HLR API.
                                                                </p>
                                                                <p class="fs-14 color-black-1">
                                                                By default, the request rate limit is set at a maximum of 2 requests per minute, per account. This careful restriction ensures fair usage and equitable distribution of resources. Requests surpassing this rate limit will be gracefully rejected by the API, accompanied by an HTTP status code of 429, indicating "Too Many Requests."
                                                                </p>
                                                                <p class="fs-14 color-black-1">
                                                                In the event that a request exceeds the rate limit, we recommend retrying the request after a brief waiting period of 60 seconds. This brief pause allows for efficient resource allocation and optimal performance for all API users.
                                                                </p>
                                                                <p class="fs-14 color-black-1">
                                                                Experience the smooth and reliable performance of the reseller API, where rate limits are thoughtfully implemented to maintain a high-quality service experience for each and every user.
                                                                </p>
                                                            </div>
                                                        </div>
                                                        <div class="tab-pane fade" id="http_tab" role="tabpanel">
                                                            <div>
                                                                <div class="fs-20 color-black-1 fw-600 mb-3">Delivery Reports Http callback</div>
                                                                <p class="fs-14 color-black-1">
                                                                As part of our commitment to providing comprehensive messaging services, reseller offers Webhook integration to facilitate the monitoring of your sent messages. Upon successful delivery, our system will perform a POST request to your designated Webhook URL, providing raw content that enables real-time status tracking.
                                                                </p>  
                                                                <p class="fs-14 color-black-1">
                                                                To ensure seamless integration, it is crucial that your Webhook URL meets the following requirements:
                                                                </p>
                                                                <ul>
                                                                    <li class="fs-14 color-black-1 mb-2">
                                                                        <span class="fw-600">URL Validation: </span> 
                                                                        Our system will validate your Webhook URL by checking for a HTTP status of 200 with no errors. This ensures the reliability and compatibility of your URL.
                                                                    </li>
                                                                    <li class="fs-14 color-black-1 mb-2">
                                                                        <span class="fw-600">Configuring Webhook URL: </span> 
                                                                        You can conveniently add and manage your Webhook URL in the "Webhook" section of your reseller account settings. Simply provide the desired URL to establish the connection.
                                                                    </li>
                                                                    <li class="fs-14 color-black-1 mb-2">
                                                                        <span class="fw-600">HTTP Methods and Status: </span> 
                                                                        Your Webhook URL must be capable of accepting GET, POST, and HEAD methods, and respond with an HTTP status of 200. While our system may send GET and HEAD requests for validation purposes, you can disregard them in your URL code. Focus on listening for the Post Raw Content, which contains the relevant message status information.
                                                                    </li>
                                                                </ul>
                                                                <p class="fs-14 color-black-1">
                                                                Upon successful addition of your Webhook URL to our system, you gain access to real-time Delivery Reports (DLR) for your messages. Our SMS system will dynamically post back relevant data to your designated Webhook URL, providing valuable insights through Webhooks or status callbacks. This enables you to efficiently track and manage your messaging operations.
                                                                </p>
                                                                <p class="fs-14 color-black-1">
                                                                With each webhook request, you receive a post back body containing crucial information. You can leverage this data by saving it to your database or file for further analysis and processing. This empowers you to perform additional actions based on the received content, allowing for seamless integration with your existing workflows.
                                                                </p>
                                                                <!--begin::Menu separator-->
                                                                <div class="separator my-8"></div>
                                                                <!--end::Menu separator-->
                                                                <div class="table-responsive mt-8 mb-5">
                                                                    <table class="table custom-table">
                                                                        <thead>
                                                                            <tr>
                                                                                <th class="white-color fs-16 fw-600">Method</th>
                                                                                <th class="white-color fs-16 fw-600">Notify Url Example</th>
                                                                            </tr>
                                                                        </thead>
                                                                        <tbody>
                                                                            <tr class="fs-14 color-black-1">
                                                                                <td>Post</td>
                                                                                <td>http://www.yourdomain.com/dlr_url.php                                                                     </td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                                <!--begin::Menu separator-->
                                                                <div class="separator my-8"></div>
                                                                <!--end::Menu separator-->
                                                                <div class="table-responsive mt-8">
                                                                    <table class="table custom-table">
                                                                        <thead>
                                                                            <tr>
                                                                                <th class="white-color fs-16 fw-600">Post Data</th>
                                                                                <th class="white-color fs-16 fw-600">Description</th>
                                                                            </tr>
                                                                        </thead>
                                                                        <tbody>
                                                                            <tr class="fs-14 color-black-1">
                                                                                <td>msisdn</td>
                                                                                <td>The number to which the SMS was sent.</td>
                                                                            </tr>
                                                                            <tr class="fs-14 color-black-1">
                                                                                <td>source</td>
                                                                                <td>Sender Id/From clause in the SMS message.</td>
                                                                            </tr>
                                                                            <tr class="fs-14 color-black-1">
                                                                                <td>sms_id</td>
                                                                                <td>A unique ID for the message</td>
                                                                            </tr>
                                                                            <tr class="fs-14 color-black-1">
                                                                                <td>sent_date</td>
                                                                                <td>The received status date and time</td>
                                                                            </tr>
                                                                            <tr class="fs-14 color-black-1">
                                                                                <td>response</td>
                                                                                <td>The status of the message. Possible statuses include, 'DELIVRD', 'UNDELIV' , 'EXPIRED'</td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="tab-pane fade" id="hlr_tab" role="tabpanel">
                                                            <div>
                                                                <div class="fs-20 color-black-1 fw-600 mb-3">HLR Lookup</div>
                                                                <p class="fs-14 color-black-1">
                                                                HLR Query via HTTP Interface Reference
                                                                </p>
                                                                <p class="fs-14 color-black-1">
                                                                This documentation details the comprehensive features accessible through the HTTP interface for HLR inquiries.<br/>
                                                                Utilizing our HTTP-API, you can seamlessly integrate your system with 1s2u. We support both HTTP and HTTPS (for encrypted transactions via SSL) to facilitate HLR requests. Clients should initiate either a GET or POST request to the 1s2u HTTP API, providing the necessary parameters. In response, our platform returns data in JSON format, reflecting key details such as number status, MCC, MNC, and portability.
                                                                </p>
                                                                <p class="fs-14 color-black-1">
                                                                Engaging in HLR Lookups enables the refinement of data lists and the verification of phone numbers prior to SMS dispatch. This optimization not only ensures effective communication but also offers potential cost savings for both bulk and individual SMS transmissions. Predominantly, SMS service providers leverage HLR Lookup to conduct Mobile Number Portability inquiries, extracting crucial MCC and MNC (IMSI) data. 
                                                                </p>
                                                                <p class="fs-14 color-black-1">
                                                                To ensure premium service quality for every user, 1s2uAPI sets rate restrictions on its HLR API. Each account from a specific IP address can send up to 30 requests per second. Any requests beyond this limit will receive a 429 Too Many Requests HTTP response. Please wait for 1 second before trying again. 
                                                                </p>
                                                                <div class="table-responsive mt-8">
                                                                    <table class="table custom-table">
                                                                        <thead>
                                                                            <tr>
                                                                                <th class="white-color fs-16 fw-600">Method</th>
                                                                                <th class="white-color fs-16 fw-600">HLR base URL</th>
                                                                            </tr>
                                                                        </thead>
                                                                        <tbody>
                                                                            <tr class="fs-14 color-black-1">
                                                                                <td>Post, GET</td>
                                                                                <td>https://api.1s2u.io/hlr                                                                    </td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                                <!--begin::Menu separator-->
                                                                <div class="separator my-8"></div>
                                                                <!--end::Menu separator-->
                                                                <div class="table-responsive mt-8 mb-5">
                                                                    <table class="table custom-table">
                                                                        <thead>
                                                                            <tr>
                                                                                <th class="white-color fs-16 fw-600">Parameter</th>
                                                                                <th class="white-color fs-16 fw-600">Description</th>
                                                                            </tr>
                                                                        </thead>
                                                                        <tbody>
                                                                            <tr class="fs-14 color-black-1">
                                                                                <td>msisdn</td>
                                                                                <td>The number to check.</td>
                                                                            </tr>
                                                                            <tr class="fs-14 color-black-1">
                                                                                <td>username</td>
                                                                                <td>Your account username</td>
                                                                            </tr>
                                                                            <tr class="fs-14 color-black-1">
                                                                                <td>password</td>
                                                                                <td>Your account password or your API dedicated password (if you set at your account settings)	</td>
                                                                            </tr>
                                                                        
                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                                <p class="fs-14 color-black-1 fw-600">
                                                                Example:
                                                                </p>
                                                                <p class="fs-14 color-black-1">
                                                                Here's a sample request using the 'GET' method on the HTTP interface.
                                                                </p>
                                                                <pre class="language-http"><code class="language-http">https://api.1s2u.io/hlr?username=your_username&password=your_password&msisdn=12345678900</code></pre>
                                                                <p class="fs-14 color-black-1 fw-600 mt-5">
                                                                Output:
                                                                </p>
                                                                <pre class="language-json"><code class="language-json">{
    "12345678900": {
    "msisdn": "12345678900",
    "country": "United States of America",
    "err_desc": "Live",
    "operator": "First Communications",
    "type": "VoIP",
    "mccmnc": "",
    "roaming": "False",
    "err_code": "0",
    "status": "Delivered",
    "ported": "True"
    }
}</code></pre>
                                                                <!--begin::Menu separator-->
                                                                <div class="separator my-8"></div>
                                                                <!--end::Menu separator-->
                                                                <div class="fs-20 color-black-1 fw-600 mb-3">Sample for a bulk HLR lookup (up to 30 numbers per request).</div>
                                                                <pre class="language-http"><code class="language-http">https://api.1s2u.io/hlr?username=your_username&password=your_password&msisdn=12345678900,12345678900</code></pre>
                                                                <p class="fs-14 color-black-1 fw-600 mt-5">
                                                                Output:
                                                                </p>
                                                                <pre class="language-json"><code class="language-json">{
    "12345678900": {
    "msisdn": "12345678900",
    "country": "United States of America",
    "err_desc": "Live",
    "operator": "First Communications",
    "type": "VoIP",
    "mccmnc": "",
    "roaming": "False",
    "err_code": "0",
    "status": "Delivered",
    "ported": "True"
    },
    "12345678901": {
    "msisdn": "12345678901",
    "country": "United States of America",
    "err_desc": "Live",
    "operator": "First Communications",
    "type": "VoIP",
    "mccmnc": "",
    "roaming": "False",
    "err_code": "0",
    "status": "Delivered",
    "ported": "True"
    }
}</code></pre>
                                                                <!--begin::Menu separator-->
                                                                <div class="separator my-8"></div>
                                                                <!--end::Menu separator-->
                                                                <div class="fs-20 color-black-1 fw-600 mb-3">Lookup Response Result</div>
                                                                <div class="table-responsive mt-8">
                                                                    <table class="table custom-table">
                                                                        <thead>
                                                                            <tr>
                                                                                <th class="white-color fs-16 fw-600">value</th>
                                                                                <th class="white-color fs-16 fw-600">Description</th></tr>
                                                                        </thead>
                                                                        <tbody>
                                                                            <tr class="fs-14 color-black-1">
                                                                                <td>msisdn</td>
                                                                                <td>
                                                                                    Subscriber msisdn to check.
                                                                                </td>
                                                                            </tr>
                                                                            <tr class="fs-14 color-black-1">
                                                                                <td>country</td>
                                                                                <td>
                                                                                    The Subscriber network country.
                                                                                </td>
                                                                            </tr>
                                                                            <tr class="fs-14 color-black-1">
                                                                                <td>err_desc</td>
                                                                                <td>If have error otherwise will Show Live if the number active. error description can beon of the folowing:
                                                                                    <p>Live</p>
                                                                                    <p>Dead</p>
                                                                                    <p>Inconclusive</p>
                                                                                    <p>No Teleservice Provisioned</p>
                                                                                    <p>Absent Subscriber</p>
                                                                                </td>
                                                                            </tr>
                                                                            <tr class="fs-14 color-black-1">
                                                                                <td>operator</td>
                                                                                <td>the Subscriber mobile network operator.</td>
                                                                            </tr>
                                                                            <tr class="fs-14 color-black-1">
                                                                                <td>type</td>
                                                                                <td>number type like Mobile,Fixed.</td>
                                                                            </tr>
                                                                            <tr class="fs-14 color-black-1">
                                                                                <td>mccmnc</td>
                                                                                <td>actual MCC and MNC of a subscriber.</td>
                                                                            </tr>
                                                                            <tr class="fs-14 color-black-1">
                                                                                <td>roaming</td>
                                                                                <td>if the subscriber number currently roaming.</td>
                                                                            </tr>
                                                                            <tr class="fs-14 color-black-1">
                                                                                <td>error_code</td>
                                                                                <td>anything marked as Live in error_desc will always be Error Code  1, error code can be on of the folowing: <p>0=Active mobile number</p>
                                                                                    <p>1=Number decommissioned by the owning network</p>
                                                                                
                                                                                <p>5=We are unable to retrieve a response from the network for this numb</p>
                                                                                <p>11=This number is not able to receive calls or SMS messages. This is usually a number relating to a data SIM</p>
                                                                                <p>27=There are a number of ways a number can be returned as Absent Subscriber Please see our Absent Subscriber information page for further details.</p>
                                                                                </td>
                                                                            </tr>
                                                                            <tr class="fs-14 color-black-1">
                                                                                <td>status</td>
                                                                                <td>number status. <p>error_code, error_desc and Status  are all linked and you can use any of these fields.status can be one of the folowing state:</p>
                                                                                    <p>Delivered</p><p>Undelivered</p>
                                                                                </td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                                <!--begin::Menu separator-->
                                                                <div class="separator my-8"></div>
                                                                <!--end::Menu separator-->
                                                                <div class="fs-20 color-black-1 fw-600 mb-3">API Error Codes:</div>
                                                                <div class="table-responsive mt-8">
                                                                    <table class="table custom-table">
                                                                        <thead>
                                                                            <tr>
                                                                                <th class="white-color fs-16 fw-600">Error Text</th>
                                                                                <th class="white-color fs-16 fw-600">Description</th>
                                                                            </tr>
                                                                        </thead>
                                                                        <tbody>
                                                                            <tr class="fs-14 color-black-1">
                                                                                <td>MSISDN value format is incorrect.</td>
                                                                                <td>Invalid MSISDN. This means the parameter was not provided or left blank.</td>
                                                                            </tr>
                                                                            <tr class="fs-14 color-black-1">
                                                                                <td>Invalid Password Parameter</td>
                                                                                <td>Invalid password. This means the parameter was not provided or left blank.</td>
                                                                            </tr>
                                                                            <tr class="fs-14 color-black-1">
                                                                                <td>Username input is not valid.</td>
                                                                                <td>Invalid username. This means the parameter was not provided or left blank.</td>
                                                                            </tr>
                                                                            <tr class="fs-14 color-black-1">
                                                                                <td>HLR credentials are incorrect.</td>
                                                                                <td>Invalid username or password, or account not active or exists.</td>
                                                                            </tr>
                                                                            <tr class="fs-14 color-black-1">
                                                                                <td>Insufficient hlr credits.</td>
                                                                                <td>Insufficient HLR Credits, your account does not have enough HLR credits to proceed with the request.</td>
                                                                            </tr>
                                                                            <tr class="fs-14 color-black-1">
                                                                                <td>Http Error Code: 429</td>
                                                                                <td>API calls quota exceeded! maximum admitted 30 per 1s/.</td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="tab-pane fade" id="samples_tab" role="tabpanel">
                                                            <div>
                                                                <div class="fs-20 color-black-1 fw-600 mb-3">Code Samples</div>
                                                                <p class="fs-14 color-black-1">
                                                                Explore Our API Code Snippets: Unleash the Power of Integration
                                                                </p>
                                                                <p class="fs-14 color-black-1">
                                                                Discover a collection of meticulously crafted code snippets that showcase the versatility and functionality of our API. Whether you're an experienced developer or a beginner, these examples are designed to simplify your integration journey.
                                                                </p>
                                                                <p class="fs-14 color-black-1">
                                                                Each code snippet focuses on a specific feature or use case, allowing you to quickly find the relevant information you need. Whether you prefer to copy and paste the code directly into your project or use it as a foundation to develop your custom solution, our code snippets provide a solid starting point.
                                                                </p>
                                                                <p class="fs-14 color-black-1">
                                                                Accelerate your development process, leverage our API's capabilities, and unlock endless possibilities for seamless integration. Our code snippets are tailored to empower developers at every level, making it effortless to harness the true potential of our API.
                                                                </p>
                                                                <!--begin::Menu separator-->
                                                                <div class="separator my-8"></div>
                                                                <!--end::Menu separator-->
                                                                <div class="fs-20 color-black-1 fw-600 mb-3">Sending SMS Sample:</div>
                                                                <div>
                                                                    <ul class="nav nav-tabs nav-line-tabs mb-5 fs-6">
                                                                        <li class="nav-item">
                                                                            <a class="nav-link active" data-bs-toggle="tab" href="#net-code-tab">.NET</a>
                                                                        </li>
                                                                        <li class="nav-item">
                                                                            <a class="nav-link" data-bs-toggle="tab" href="#php-code-tab">PHP</a>
                                                                        </li>
                                                                        <li class="nav-item">
                                                                            <a class="nav-link" data-bs-toggle="tab" href="#java-code-tab">Java</a>
                                                                        </li>
                                                                        <li class="nav-item">
                                                                            <a class="nav-link" data-bs-toggle="tab" href="#python-code-tab">Python</a>
                                                                        </li>
                                                                    </ul>

                                                                    <div class="tab-content" id="myTabContentCode">
                                                                        <div class="tab-pane fade show active" id="net-code-tab" role="tabpanel">
                                                                            <pre class="language-basic h-350px overflow-y-scroll"><code class="language-basic">using System.Collections.Generic;
// No more boilerplate needed with top level statements
(https://docs.microsoft.com/en-us/dotnet/core/tutorials/top-level-templates)
var client = new HttpClient();
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.1s2u.io/bulksms");
request.Headers.Add("Cookie", "ASPSESSIONIDACTQTSTS=GEAEKPFCNECDACOHHKHDONEB;
ASPSESSIONIDCATTSSST=HFAGPIFCMLKJADCMIOHCLBKD");
var collection = new List>();
    collection.Add(new("username", "username"));
    collection.Add(new("password", "password"));
    collection.Add(new("mno", "6111111111111"));
    collection.Add(new("sid", "test"));
    collection.Add(new("msg", "Hello World"));
    collection.Add(new("mt", "0"));
    var content = new FormUrlEncodedContent(collection);
    request.Content = content;
    var response = await client.SendAsync(request);
    response.EnsureSuccessStatusCode();
    Console.WriteLine(await response.Content.ReadAsStringAsync());</code></pre>
                                                                        </div>
                                                                        <div class="tab-pane fade" id="php-code-tab" role="tabpanel">
                                                                            <pre class="language-php h-350px overflow-y-scroll"><code class="language-php">$client = new Client();
$headers = [
  'Content-Type' => 'application/x-www-form-urlencoded',
  'Cookie' => 'ASPSESSIONIDACTQTSTS=GEAEKPFCNECDACOHHKHDONEB; ASPSESSIONIDCATTSSST=HFAGPIFCMLKJADCMIOHCLBKD'
];
$options = [
'form_params' => [
  'username' => 'username',
  'password' => 'password',
  'mno' => '6111111111111',
  'sid' => 'test',
  'msg' => 'Hello World',
  'mt' => '0'
]];
$request = new Request('POST', 'https://api.1s2u.io/bulksms', $headers);
$res = $client->sendAsync($request, $options)->wait();
echo $res->getBody();</code></pre>
                                                                        </div>
                                                                        <div class="tab-pane fade" id="java-code-tab" role="tabpanel">
                                                                            <pre class="language-java h-350px overflow-y-scroll"><code class="language-java">OkHttpClient client = new OkHttpClient().newBuilder()
  .build();
MediaType mediaType = MediaType.parse("application/x-www-form-urlencoded");
RequestBody body = RequestBody.create(mediaType, "username=username&password=password&mno=6111111111111&sid=test&msg=Hello World&mt=0");
Request request = new Request.Builder()
  .url("https://api.1s2u.io/bulksms")
  .method("POST", body)
  .addHeader("Content-Type", "application/x-www-form-urlencoded")
  .addHeader("Cookie", "ASPSESSIONIDACTQTSTS=GEAEKPFCNECDACOHHKHDONEB; ASPSESSIONIDCATTSSST=HFAGPIFCMLKJADCMIOHCLBKD")
  .build();
Response response = client.newCall(request).execute();</code></pre>
                                                                        </div>
                                                                        <div class="tab-pane fade" id="python-code-tab" role="tabpanel">
                                                                            <pre class="language-java h-350px overflow-y-scroll"><code class="language-java">import requests

url = "https://api.1s2u.io/bulksms"

payload = 'username=username&password=password&mno=6111111111111&sid=test&msg=Hello%20World&mt=0'
headers = {
'Content-Type': 'application/x-www-form-urlencoded',
'Cookie': 'ASPSESSIONIDACTQTSTS=GEAEKPFCNECDACOHHKHDONEB; ASPSESSIONIDCATTSSST=HFAGPIFCMLKJADCMIOHCLBKD'
}

response = requests.request("POST", url, headers=headers, data=payload)

print(response.text)</code></pre>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <!--begin::Menu separator-->
                                                                <div class="separator my-8"></div>
                                                                <!--end::Menu separator-->
                                                                <div class="fs-20 color-black-1 fw-600 mb-3">Http Callback Sample:</div>
                                                                <pre class="language-http"><code class="language-http">http://www.yourdomain.com/dlr_url.php</code></pre>
                                                                <p class="fs-14 color-black-1 mt-5">
                                                                once your Webhook URL is added successfully to our system, you will receive real-time DLR to your end. When specific events occur, Our SMS system will post back the data to your own Webhook URL, these requests are called Webhooks or status callbacks. You then can save the post back body content to your DB or file, for further work.
                                                                </p>
                                                                <!--begin::Menu separator-->
                                                                <div class="separator my-8"></div>
                                                                <!--end::Menu separator-->
                                                                <div class="fs-20 color-black-1 fw-600 mb-3">Classic ASP Sample:</div>
                                                                <pre class="language-basic"><code class="language-basic">Response.CodePage = 65001 ' Set the code page to UTF-8
                                                                        
If Request.ServerVariables("REQUEST_METHOD") = "POST" Then
' The request is a POST request
                                                            
    Dim PhysicalPath, fs, fname
    PhysicalPath = "YourFilePath\dlr.txt" ' Set the file path, make sure to give the correct permission for writing.
    Set fs = Server.CreateObject("Scripting.FileSystemObject") ' Create a FileSystemObject
    Set fname = fs.OpenTextFile(PhysicalPath, 8) ' Open the text file for writing

For Each key In Request.Form
    fname.WriteLine key & "--- " & Request.Form(key) ' Write each form key-value pair to the file
                                                            
    '' At this point you can use any other DB connection to save the WebHook DLR details, 
    and you can also combine each pushed request to the sent one using the sms_id - key 
Next
                                                            
fname.WriteLine Request.Form ' Write the entire form data to the file
                                                            
                                                            
    ' Data will be saved to file as below example 

    'source--- test
    'msisdn--- 12345678900
    'response--- UNDELIV
    'sent_date--- 5/23/2023 5:39:50 AM
    'sms_id--- 4c48eaa6-5200-4789-8fcf-5e648b6e30b8
                                                            
                                                            
fname.Close ' Close the file
Set fname = Nothing ' Release the file object
Set fs = Nothing ' Release the FileSystemObject
                                                            
    Response.Write "This is a WebHook POST request." ' Send a response indicating it's a POST request
Else
    ' The request is not a POST request
    Response.Write "OK." ' Send a response indicating it's not a POST request
End If</code></pre>
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

    <script src="/assets/js/prism.js"></script>
</body>
<!--end::Body-->
</html>
