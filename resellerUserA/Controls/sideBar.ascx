<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="sideBar.ascx.cs" Inherits="resellerUserA.Controls.sideBar" %>

<div id="kt_app_sidebar" class="app-sidebar" data-kt-drawer="true" data-kt-drawer-name="app-sidebar" data-kt-drawer-activate="{default: true, lg: false}" data-kt-drawer-overlay="true" data-kt-drawer-width="auto" data-kt-drawer-direction="start" data-kt-drawer-toggle="#kt_app_sidebar_mobile_toggle">
    <!--begin::Primary menu-->
    <div id="kt_aside_menu_wrapper" class="app-sidebar-menu flex-grow-1 hover-scroll-y scroll-lg-ps my-5 pt-8" data-kt-scroll="true" data-kt-scroll-height="auto" data-kt-scroll-dependencies="#kt_app_sidebar_logo, #kt_app_sidebar_footer" data-kt-scroll-wrappers="#kt_app_sidebar_menu" data-kt-scroll-offset="5px">
        <!--begin::Menu-->
        <div id="kt_aside_menu" class="menu menu-rounded menu-column menu-title-gray-600 menu-state-primary menu-state-icon-primary menu-state-bullet-primary menu-arrow-gray-500 fw-semibold fs-6" data-kt-menu="true">
            <!--begin:Menu item-->
            <div data-kt-menu-placement="right-start" class="menu-item here show py-2">
                <!--begin:Menu link-->
                <span class="menu-link menu-center" id="home-lg-link">
                    <a class="menu-link" href="/index.aspx">
                        <svg class="have-sec-child" width="24" height="25" viewBox="0 0 24 25" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd" clip-rule="evenodd" d="M11.9994 3.54167C11.4094 3.54167 10.8735 3.71084 10.291 3.99334C9.72935 4.26667 9.07935 4.67001 8.26852 5.17334L6.54602 6.24251C5.77935 6.71917 5.16352 7.10084 4.69018 7.46334C4.19935 7.83834 3.82268 8.22167 3.55018 8.71917C3.27852 9.21501 3.15685 9.74334 3.09768 10.3675C3.04102 10.9717 3.04102 11.7117 3.04102 12.6392V13.9833C3.04102 15.57 3.04102 16.8225 3.16852 17.8017C3.29852 18.8058 3.57352 19.6167 4.19352 20.2575C4.81602 20.9017 5.60768 21.19 6.58935 21.3258C7.53935 21.4583 8.75435 21.4583 10.2843 21.4583H13.7143C15.2443 21.4583 16.4594 21.4583 17.4094 21.3258C18.3902 21.19 19.1827 20.9017 19.806 20.2575C20.4252 19.6167 20.7002 18.8058 20.831 17.8017C20.9577 16.8225 20.9577 15.57 20.9577 13.9833V12.6392C20.9577 11.7117 20.9577 10.9725 20.901 10.3675C20.8427 9.74251 20.7202 9.21501 20.4485 8.71917C20.176 8.22167 19.7985 7.83917 19.3085 7.46334C18.8352 7.10001 18.2202 6.71917 17.4527 6.24251L15.7302 5.17334C14.9193 4.67001 14.2693 4.26667 13.7068 3.99334C13.126 3.71001 12.5902 3.54167 11.9994 3.54167Z" fill="url(#paint0_linear_1154_6701)"/>
                            <path d="M10.957 17.4999C10.957 17.7651 11.0624 18.0195 11.2499 18.207C11.4375 18.3946 11.6918 18.4999 11.957 18.4999C12.2222 18.4999 12.4766 18.3946 12.6641 18.207C12.8517 18.0195 12.957 17.7651 12.957 17.4999V13.4999C12.957 13.2347 12.8517 12.9804 12.6641 12.7928C12.4766 12.6053 12.2222 12.4999 11.957 12.4999C11.6918 12.4999 11.4375 12.6053 11.2499 12.7928C11.0624 12.9804 10.957 13.2347 10.957 13.4999V17.4999Z" fill="#F5F5F5"/>
                            <defs>
                                <linearGradient id="paint0_linear_1154_6701" x1="11.9993" y1="3.54167" x2="11.9993" y2="21.4583" gradientUnits="userSpaceOnUse">
                                    <stop stop-color="#0E41C1" stop-opacity="0.870588"/>
                                    <stop offset="1" stop-color="#0047FF" stop-opacity="0.870588"/>
                                </linearGradient>
                            </defs>
                        </svg>
                    </a>
                </span>
                <!--end:Menu link-->
            </div>
            <!--end:Menu item-->
            <!--begin:Menu item-->
            <div data-kt-menu-trigger="{default: 'click', lg: 'hover'}" data-kt-menu-placement="right-start" class="menu-item py-2">
                <!--begin:Menu link-->
                <span class="menu-link menu-center" id="sms-lg-btn">
                    <svg width="24" height="25" viewBox="0 0 24 25" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd" clip-rule="evenodd" d="M13.629 20.972L13.087 21.888C12.604 22.704 11.397 22.704 10.913 21.888L10.371 20.972C9.951 20.262 9.741 19.906 9.403 19.71C9.065 19.513 8.64 19.506 7.79 19.491C6.534 19.47 5.747 19.393 5.087 19.119C4.48037 18.8677 3.92917 18.4994 3.46487 18.0351C3.00057 17.5708 2.63227 17.0196 2.381 16.413C2 15.495 2 14.33 2 12V11C2 7.727 2 6.09 2.737 4.888C3.14904 4.2152 3.71445 3.64945 4.387 3.237C5.59 2.5 7.228 2.5 10.5 2.5H13.5C16.773 2.5 18.41 2.5 19.613 3.237C20.2854 3.64917 20.8508 4.21456 21.263 4.887C22 6.09 22 7.728 22 11V12C22 14.33 22 15.495 21.62 16.413C21.3686 17.0197 21.0002 17.571 20.5357 18.0353C20.0712 18.4996 19.5198 18.8678 18.913 19.119C18.253 19.393 17.466 19.469 16.21 19.491C15.36 19.506 14.935 19.513 14.597 19.71C14.259 19.906 14.049 20.261 13.629 20.972ZM8 12.25C7.80109 12.25 7.61032 12.329 7.46967 12.4697C7.32902 12.6103 7.25 12.8011 7.25 13C7.25 13.1989 7.32902 13.3897 7.46967 13.5303C7.61032 13.671 7.80109 13.75 8 13.75H13.5C13.6989 13.75 13.8897 13.671 14.0303 13.5303C14.171 13.3897 14.25 13.1989 14.25 13C14.25 12.8011 14.171 12.6103 14.0303 12.4697C13.8897 12.329 13.6989 12.25 13.5 12.25H8ZM7.25 9.5C7.25 9.30109 7.32902 9.11032 7.46967 8.96967C7.61032 8.82902 7.80109 8.75 8 8.75H16C16.1989 8.75 16.3897 8.82902 16.5303 8.96967C16.671 9.11032 16.75 9.30109 16.75 9.5C16.75 9.69891 16.671 9.88968 16.5303 10.0303C16.3897 10.171 16.1989 10.25 16 10.25H8C7.80109 10.25 7.61032 10.171 7.46967 10.0303C7.32902 9.88968 7.25 9.69891 7.25 9.5Z" fill="url(#paint0_linear_1097_3600)"/>
                        <defs>
                        <linearGradient id="paint0_linear_1097_3600" x1="12" y1="2.5" x2="12" y2="22.5" gradientUnits="userSpaceOnUse">
                        <stop stop-color="#0E41C1" stop-opacity="0.870588"/>
                        <stop offset="1" stop-color="#0047FF" stop-opacity="0.870588"/>
                        </linearGradient>
                        </defs>
                    </svg>
                </span>
                <!--end:Menu link-->
                <!--begin:Menu sub-->
                <div class="menu-sub menu-sub-dropdown menu-sub-indention px-2 py-4 w-250px mh-75 overflow-auto">
                    <!--begin:Menu item-->
                    <div class="menu-item">
                        <!--begin:Menu content-->
                        <div class="menu-content">
                            <span class="menu-section fs-5 fw-bolder ps-1 py-1">Send SMS</span>
                        </div>
                        <!--end:Menu content-->
                    </div>
                    <div class="menu-item">
                        <!--begin:Menu link-->
                        <a class="menu-link" href="/send_sms.aspx" id="send-single-sms-lg-link">
                            <span class="menu-bullet">
                                <span class="bullet bullet-dot"></span>
                            </span>
                            <span class="menu-title">Single SMS</span>
                        </a>
                        <!--end:Menu link-->
                    </div>
                    <div class="menu-item">
                        <!--begin:Menu link-->
                        <a class="menu-link" href="/bulksms.aspx" id="send-bulk-sms-lg-link">
                            <span class="menu-bullet">
                                <span class="bullet bullet-dot"></span>
                            </span>
                            <span class="menu-title">Bulk SMS</span>
                        </a>
                        <!--end:Menu link-->
                    </div>
                    <!--end:Menu item-->
                </div>
                <!--end:Menu sub-->
            </div>
            <!--end:Menu item-->
            <!--begin:Menu item-->
            <div data-kt-menu-trigger="{default: 'click', lg: 'hover'}" data-kt-menu-placement="right-start" class="menu-item py-2">
                <!--begin:Menu link-->
                <span class="menu-link menu-center" id="hlr-lg-btn">
                    <svg width="24" height="25" viewBox="0 0 24 25" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M22.3731 11.9677C20.396 8.11004 16.4818 5.49998 12 5.49998C7.51817 5.49998 3.6029 8.11187 1.62686 11.9681C1.54345 12.133 1.5 12.3153 1.5 12.5002C1.5 12.685 1.54345 12.8673 1.62686 13.0323C3.60399 16.89 7.51817 19.5 12 19.5C16.4818 19.5 20.3971 16.8881 22.3731 13.0319C22.4565 12.8669 22.5 12.6847 22.5 12.4998C22.5 12.315 22.4565 12.1327 22.3731 11.9677ZM12 17.75C10.9616 17.75 9.94661 17.4421 9.08325 16.8652C8.21989 16.2883 7.54698 15.4684 7.14962 14.5091C6.75226 13.5498 6.64829 12.4942 6.85087 11.4758C7.05344 10.4574 7.55346 9.52191 8.28768 8.78768C9.02191 8.05345 9.95737 7.55344 10.9758 7.35087C11.9942 7.14829 13.0498 7.25226 14.0091 7.64962C14.9684 8.04698 15.7883 8.71989 16.3652 9.58325C16.9421 10.4466 17.25 11.4616 17.25 12.5C17.2503 13.1895 17.1148 13.8724 16.8511 14.5095C16.5873 15.1466 16.2006 15.7255 15.7131 16.2131C15.2255 16.7006 14.6466 17.0873 14.0095 17.3511C13.3724 17.6148 12.6895 17.7503 12 17.75ZM12 8.99999C11.6876 9.00436 11.3772 9.05084 11.0772 9.13817C11.3245 9.4742 11.4432 9.88771 11.4117 10.3037C11.3802 10.7197 11.2007 11.1107 10.9057 11.4057C10.6107 11.7007 10.2197 11.8802 9.80373 11.9117C9.38771 11.9432 8.9742 11.8245 8.63817 11.5772C8.44682 12.2822 8.48137 13.0294 8.73693 13.7137C8.9925 14.398 9.45622 14.9849 10.0628 15.3919C10.6694 15.7988 11.3884 16.0053 12.1185 15.9822C12.8486 15.9591 13.5531 15.7077 14.1328 15.2633C14.7125 14.8189 15.1382 14.2038 15.3501 13.5048C15.562 12.8057 15.5493 12.0578 15.3138 11.3664C15.0784 10.6749 14.632 10.0747 14.0375 9.65016C13.4431 9.22566 12.7305 8.99827 12 8.99999Z" fill="url(#paint0_linear_1134_3606)"/>
                        <defs>
                        <linearGradient id="paint0_linear_1134_3606" x1="12" y1="5.49998" x2="12" y2="19.5" gradientUnits="userSpaceOnUse">
                        <stop stop-color="#0E41C1" stop-opacity="0.870588"/>
                        <stop offset="1" stop-color="#0047FF" stop-opacity="0.870588"/>
                        </linearGradient>
                        </defs>
                    </svg>
                </span>
                <!--end:Menu link-->
                <!--begin:Menu sub-->
                <div class="menu-sub menu-sub-dropdown menu-sub-indention px-2 py-4 w-250px mh-75 overflow-auto">
                    <!--begin:Menu item-->
                    <div class="menu-item">
                        <!--begin:Menu content-->
                        <div class="menu-content">
                            <span class="menu-section fs-5 fw-bolder ps-1 py-1">HLR</span>
                        </div>
                        <!--end:Menu content-->
                    </div>
                    <!--end:Menu item-->
                    <!--begin:Menu item-->
                   <div data-kt-menu-trigger="click" class="menu-item menu-accordion">
                        <div class="menu-item">
                            <!--begin:Menu link-->
                            <a class="menu-link" href="/hlr.aspx" id="hlr-lookup-lg-link">
                                <span class="menu-bullet">
                                    <span class="bullet bullet-dot"></span>
                                </span>
                                <span class="menu-title">Single Lookup</span>
                            </a>
                            <!--end:Menu link-->
                        </div>
                        <div class="menu-item">
                            <!--begin:Menu link-->
                            <a class="menu-link" href="/hlr_log.aspx" id="hlr-log-lg-link">
                                <span class="menu-bullet">
                                    <span class="bullet bullet-dot"></span>
                                </span>
                                <span class="menu-title">Lookup Log</span>
                            </a>
                            <!--end:Menu link-->
                        </div>
                    </div>
                    <!--end:Menu item-->
                </div>
                <!--end:Menu sub-->
            </div>
            <!--end:Menu item-->
            <!--begin:Menu item-->
            <div data-kt-menu-trigger="{default: 'click', lg: 'hover'}" data-kt-menu-placement="right-start" class="menu-item py-2">
                <!--begin:Menu link-->
                <span class="menu-link menu-center" id="managment-lg-btn">
                    <svg width="24" height="25" viewBox="0 0 24 25" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M9.15323 5.908C10.4202 3.636 11.0532 2.5 12.0002 2.5C12.9472 2.5 13.5802 3.636 14.8472 5.908L15.1752 6.496C15.5352 7.142 15.7152 7.465 15.9952 7.678C16.2752 7.891 16.6252 7.97 17.3252 8.128L17.9612 8.272C20.4212 8.829 21.6502 9.107 21.9432 10.048C22.2352 10.988 21.3972 11.969 19.7202 13.93L19.2862 14.437C18.8102 14.994 18.5712 15.273 18.4642 15.617C18.3572 15.962 18.3932 16.334 18.4652 17.077L18.5312 17.754C18.7842 20.371 18.9112 21.679 18.1452 22.26C17.3792 22.842 16.2272 22.311 13.9252 21.251L13.3282 20.977C12.6742 20.675 12.3472 20.525 12.0002 20.525C11.6532 20.525 11.3262 20.675 10.6712 20.977L10.0762 21.251C7.77323 22.311 6.62123 22.841 5.85624 22.261C5.08924 21.679 5.21623 20.371 5.46923 17.754L5.53523 17.078C5.60723 16.334 5.64323 15.962 5.53523 15.618C5.42923 15.273 5.19024 14.994 4.71424 14.438L4.28024 13.93C2.60324 11.97 1.76523 10.989 2.05723 10.048C2.35024 9.107 3.58024 8.828 6.04024 8.272L6.67624 8.128C7.37524 7.97 7.72424 7.891 8.00524 7.678C8.28524 7.465 8.46523 7.142 8.82523 6.496L9.15323 5.908Z" fill="url(#paint0_linear_1134_3613)"/>
                        <defs>
                        <linearGradient id="paint0_linear_1134_3613" x1="12.0002" y1="2.5" x2="12.0002" y2="22.4999" gradientUnits="userSpaceOnUse">
                        <stop stop-color="#0E41C1" stop-opacity="0.870588"/>
                        <stop offset="1" stop-color="#0047FF" stop-opacity="0.870588"/>
                        </linearGradient>
                        </defs>
                    </svg>
                </span>
                <!--end:Menu link-->
                <!--begin:Menu sub-->
                <div class="menu-sub menu-sub-dropdown menu-sub-indention px-2 py-4 w-250px mh-75 overflow-auto">
                    <!--begin:Menu item-->
                    <div class="menu-item">
                        <!--begin:Menu content-->
                        <div class="menu-content">
                            <span class="menu-section fs-5 fw-bolder ps-1 py-1">Management</span>
                        </div>
                        <!--end:Menu content-->
                    </div>
                    <!--end:Menu item-->
                    <!--begin:Menu item-->
                    <div class="menu-item">
                        <!--begin:Menu link-->
                        <a class="menu-link" href="/sms_temp.aspx" id="template-managment-lg-link">
                            <span class="menu-bullet">
                                <span class="bullet bullet-dot"></span>
                            </span>
                            <span class="menu-title">Templates Management</span>
                        </a>
                        <!--end:Menu link-->
                    </div>
                    <!--end:Menu item-->
                      <!--begin:Menu item-->
                      <div class="menu-item">
                        <!--begin:Menu link-->
                        <a class="menu-link" href="/groups_manager.aspx" id="group-manager-lg-link">
                            <span class="menu-bullet">
                                <span class="bullet bullet-dot"></span>
                            </span>
                            <span class="menu-title">Groups Manager</span>
                        </a>
                        <!--end:Menu link-->
                    </div>
                    <!--end:Menu item-->
                </div>
                <!--end:Menu sub-->
            </div>
            <!--end:Menu item-->
            <!--begin:Menu item-->
            <div data-kt-menu-trigger="{default: 'click', lg: 'hover'}" data-kt-menu-placement="right-start" class="menu-item py-2">
                <!--begin:Menu link-->
                <span class="menu-link menu-center" id="report-lg-btn">
                    <svg width="24" height="25" viewBox="0 0 24 25" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M21.4041 13.6764H12.6802L18.4901 19.4863C18.7122 19.7084 19.0776 19.7264 19.3059 19.5113C20.7287 18.1709 21.7074 16.3639 21.9945 14.3327C22.0438 13.9849 21.7552 13.6764 21.4041 13.6764ZM20.8221 11.2941C20.5191 6.9022 17.0096 3.39265 12.6177 3.08971C12.2824 3.06655 12 3.34927 12 3.68529V11.9117H20.2269C20.5629 11.9117 20.8452 11.6294 20.8221 11.2941ZM10.2353 13.6764V4.95257C10.2353 4.60147 9.92689 4.31287 9.57947 4.36213C5.19823 4.98125 1.84935 8.80881 2.00523 13.3959C2.16552 18.1069 6.22176 21.9702 10.935 21.911C12.7879 21.8878 14.5 21.2908 15.9078 20.2922C16.1982 20.0863 16.2173 19.6588 15.9655 19.4069L10.2353 13.6764Z" fill="url(#paint0_linear_1134_3617)"/>
                        <defs>
                        <linearGradient id="paint0_linear_1134_3617" x1="12" y1="3.08838" x2="12" y2="21.9116" gradientUnits="userSpaceOnUse">
                        <stop stop-color="#0E41C1" stop-opacity="0.870588"/>
                        <stop offset="1" stop-color="#0047FF" stop-opacity="0.870588"/>
                        </linearGradient>
                        </defs>
                    </svg>
                </span>
                <!--end:Menu link-->
                <!--begin:Menu sub-->
                <div class="menu-sub menu-sub-dropdown px-2 py-4 w-200px w-lg-225px mh-75 overflow-auto">
                    <!--begin:Menu item-->
                    <div class="menu-item">
                        <!--begin:Menu content-->
                        <div class="menu-content">
                            <span class="menu-section fs-5 fw-bolder ps-1 py-1">Report</span>
                        </div>
                        <!--end:Menu content-->
                    </div>
                    <!--end:Menu item-->
                    <!--begin:Menu item-->
                    <div class="menu-item">
                       <!--begin:Menu link-->
                       <a class="menu-link" href="/sentreport.aspx" id="sent-report-lg-link">
                            <span class="menu-bullet">
                                <span class="bullet bullet-dot"></span>
                            </span>
                            <span class="menu-title">Sent Report</span>
                        </a>
                        <!--end:Menu link-->
                    </div>
                    <!--end:Menu item-->
                    <!--begin:Menu item-->
                    <div class="menu-item">
                       <!--begin:Menu link-->
                       <a class="menu-link" href="/queuereport.aspx" id="queue-report-lg-link">
                            <span class="menu-bullet">
                                <span class="bullet bullet-dot"></span>
                            </span>
                            <span class="menu-title">Queue Report</span>
                        </a>
                        <!--end:Menu link-->
                    </div>
                    <!--end:Menu item-->
                    <!--begin:Menu item-->
                    <div class="menu-item">
                        <!--begin:Menu link-->
                        <a class="menu-link" href="/reloadreport.aspx" id="reload-report-lg-link">
                            <span class="menu-bullet">
                                <span class="bullet bullet-dot"></span>
                            </span>
                            <span class="menu-title">Credits Report</span>
                        </a>
                        <!--end:Menu link-->
                    </div>
                    <!--end:Menu item-->
                     <!--begin:Menu item-->
                     <div class="menu-item">
                        <!--begin:Menu link-->
                        <a class="menu-link" href="/paymentsreport.aspx" id="payment-report-lg-link">
                            <span class="menu-bullet">
                                <span class="bullet bullet-dot"></span>
                            </span>
                            <span class="menu-title">Payments Report</span>
                        </a>
                        <!--end:Menu link-->
                    </div>
                    <!--end:Menu item-->
                </div>
                <!--end:Menu sub-->
            </div>
            <!--end:Menu item-->
              <!--begin:Menu item-->
              <div class="menu-item py-2" data-bs-toggle="tooltip" data-bs-placement="right" title="Reload">
                <!--begin:Menu link-->
                <span class="menu-link menu-center" id="reload-lg-link">
                  <a class="menu-link" href="/reload.aspx">
                    <svg width="21" height="18" viewBox="0 0 21 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd" clip-rule="evenodd" d="M19.1006 5.504C19.0456 5.5 18.9846 5.5 18.9206 5.5H16.3956C14.3276 5.5 12.5586 7.128 12.5586 9.25C12.5586 11.372 14.3286 13 16.3956 13H18.9206C18.9846 13 19.0456 13 19.1026 12.996C19.5276 12.9704 19.9288 12.7911 20.2315 12.4916C20.5341 12.1921 20.7176 11.7927 20.7476 11.368C20.7516 11.308 20.7516 11.243 20.7516 11.183V7.317C20.7516 7.257 20.7516 7.192 20.7476 7.132C20.7176 6.70726 20.5341 6.30793 20.2315 6.00842C19.9288 5.7089 19.5276 5.52963 19.1026 5.504H19.1006ZM16.1726 10.25C16.7046 10.25 17.1356 9.802 17.1356 9.25C17.1356 8.698 16.7046 8.25 16.1726 8.25C15.6396 8.25 15.2086 8.698 15.2086 9.25C15.2086 9.802 15.6396 10.25 16.1726 10.25Z" fill="url(#paint0_linear_1134_3624)"/>
                        <path fill-rule="evenodd" clip-rule="evenodd" d="M18.918 14.5C18.9526 14.4986 18.987 14.5054 19.0184 14.5198C19.0499 14.5342 19.0775 14.5558 19.099 14.5829C19.1206 14.61 19.1354 14.6418 19.1424 14.6757C19.1493 14.7096 19.1481 14.7446 19.139 14.778C18.939 15.49 18.62 16.098 18.109 16.608C17.36 17.358 16.411 17.689 15.239 17.847C14.099 18 12.644 18 10.806 18H8.694C6.856 18 5.4 18 4.261 17.847C3.089 17.689 2.14 17.357 1.391 16.609C0.643 15.86 0.311 14.911 0.153 13.739C1.19209e-07 12.599 0 11.144 0 9.306V9.194C0 7.356 1.19209e-07 5.9 0.153 4.76C0.311 3.588 0.643 2.639 1.391 1.89C2.14 1.142 3.089 0.81 4.261 0.652C5.401 0.5 6.856 0.5 8.694 0.5H10.806C12.644 0.5 14.1 0.5 15.239 0.653C16.411 0.811 17.36 1.143 18.109 1.891C18.62 2.403 18.939 3.01 19.139 3.722C19.1481 3.75537 19.1493 3.79042 19.1424 3.82432C19.1354 3.85822 19.1206 3.89 19.099 3.91708C19.0775 3.94417 19.0499 3.96579 19.0184 3.9802C18.987 3.9946 18.9526 4.00139 18.918 4H16.394C13.557 4 11.057 6.24 11.057 9.25C11.057 12.26 13.557 14.5 16.394 14.5H18.918ZM3.75 4.5C3.55109 4.5 3.36032 4.57902 3.21967 4.71967C3.07902 4.86032 3 5.05109 3 5.25C3 5.44891 3.07902 5.63968 3.21967 5.78033C3.36032 5.92098 3.55109 6 3.75 6H7.75C7.94891 6 8.13968 5.92098 8.28033 5.78033C8.42098 5.63968 8.5 5.44891 8.5 5.25C8.5 5.05109 8.42098 4.86032 8.28033 4.71967C8.13968 4.57902 7.94891 4.5 7.75 4.5H3.75Z" fill="url(#paint1_linear_1134_3624)"/>
                        <defs>
                        <linearGradient id="paint0_linear_1134_3624" x1="16.6551" y1="5.5" x2="16.6551" y2="13" gradientUnits="userSpaceOnUse">
                        <stop stop-color="#0E41C1" stop-opacity="0.870588"/>
                        <stop offset="1" stop-color="#0047FF" stop-opacity="0.870588"/>
                        </linearGradient>
                        <linearGradient id="paint1_linear_1134_3624" x1="9.57342" y1="0.5" x2="9.57342" y2="18" gradientUnits="userSpaceOnUse">
                        <stop stop-color="#0E41C1" stop-opacity="0.870588"/>
                        <stop offset="1" stop-color="#0047FF" stop-opacity="0.870588"/>
                        </linearGradient>
                        </defs>
                    </svg>
                  </a>
                </span>
            </div>
            <!--end:Menu item-->
                  <!--begin:Menu item-->
            <div class="menu-item py-2" data-bs-toggle="tooltip" data-bs-placement="right" title="API References">
                <!--begin:Menu link-->
                <span class="menu-link menu-center" id="api-lg-link">
                  <a class="menu-link" href="/api_references.aspx">
                    <svg width="24" height="25" viewBox="0 0 24 25" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M21.5088 3.98751L20.515 2.99376C20.4775 2.95626 20.4306 2.93985 20.3814 2.93985C20.3322 2.93985 20.2853 2.9586 20.2478 2.99376L18.4642 4.77735C17.6889 4.25201 16.7735 3.97191 15.8369 3.97344C14.6369 3.97344 13.4369 4.43047 12.5205 5.34688L10.1322 7.73516C10.0973 7.7704 10.0777 7.81799 10.0777 7.86758C10.0777 7.91718 10.0973 7.96477 10.1322 8.00001L16.5002 14.368C16.5377 14.4055 16.5845 14.4219 16.6338 14.4219C16.6806 14.4219 16.7299 14.4031 16.7674 14.368L19.1556 11.9797C20.7705 10.3625 20.9603 7.86173 19.7252 6.03829L21.5088 4.25469C21.5814 4.17969 21.5814 4.06016 21.5088 3.98751ZM13.5681 13.3133C13.5329 13.2784 13.4853 13.2588 13.4357 13.2588C13.3861 13.2588 13.3385 13.2784 13.3033 13.3133L11.7424 14.8742L9.62595 12.7578L11.1892 11.1945C11.2619 11.1219 11.2619 11.0023 11.1892 10.9297L10.3361 10.0766C10.3009 10.0417 10.2533 10.0221 10.2037 10.0221C10.1541 10.0221 10.1065 10.0417 10.0713 10.0766L8.50798 11.6398L7.50017 10.632C7.48268 10.6145 7.46183 10.6007 7.43887 10.5915C7.41592 10.5822 7.39133 10.5777 7.36658 10.5781C7.3197 10.5781 7.27048 10.5969 7.23298 10.632L4.84705 13.0203C3.2322 14.6375 3.04236 17.1383 4.27752 18.9617L2.49392 20.7453C2.45903 20.7806 2.43945 20.8281 2.43945 20.8777C2.43945 20.9273 2.45903 20.9749 2.49392 21.0102L3.48767 22.0039C3.52517 22.0414 3.57205 22.0578 3.62127 22.0578C3.67048 22.0578 3.71736 22.0391 3.75486 22.0039L5.53845 20.2203C6.3283 20.757 7.24705 21.0242 8.1658 21.0242C9.3658 21.0242 10.5658 20.5672 11.4822 19.6508L13.8705 17.2625C13.9431 17.1898 13.9431 17.0703 13.8705 16.9977L12.8627 15.9899L14.426 14.4266C14.4986 14.3539 14.4986 14.2344 14.426 14.1617L13.5681 13.3133ZM10.3525 18.5258C10.0657 18.8141 9.72451 19.0427 9.34877 19.1984C8.97303 19.3541 8.57017 19.4338 8.16345 19.4328C7.33611 19.4328 6.56033 19.1117 5.97439 18.5258C5.68607 18.2389 5.45746 17.8978 5.30177 17.522C5.14608 17.1463 5.06641 16.7434 5.06736 16.3367C5.06736 15.5094 5.38845 14.7336 5.97439 14.1477L7.36658 12.7555L11.7447 17.1336L10.3525 18.5258Z" fill="url(#paint0_linear_1134_3629)"/>
                        <defs>
                        <linearGradient id="paint0_linear_1134_3629" x1="12.0014" y1="2.93985" x2="12.0014" y2="22.0578" gradientUnits="userSpaceOnUse">
                        <stop stop-color="#0E41C1" stop-opacity="0.870588"/>
                        <stop offset="1" stop-color="#0047FF" stop-opacity="0.870588"/>
                        </linearGradient>
                        </defs>
                    </svg>
                  </a>
                </span>
                <!--end:Menu link-->
            </div>
            <!--end:Menu item-->
              <!--begin:Menu item-->
            <div class="menu-item py-2" data-bs-toggle="tooltip" data-bs-placement="right" title="Coverage">
                <!--begin:Menu link-->
                <span class="menu-link menu-center" id="coverage-lg-link">
                  <a class="menu-link" href="/cov.aspx">
                    <svg width="24" height="25" viewBox="0 0 24 25" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd" clip-rule="evenodd" d="M11.6276 23.2196L11.6312 23.2208C11.8676 23.324 11.9996 23.3 11.9996 23.3C11.9996 23.3 12.1316 23.324 12.3692 23.2208L12.3716 23.2196L12.3788 23.216L12.4004 23.2064C12.5143 23.1535 12.6268 23.0975 12.7376 23.0384C12.9608 22.9232 13.2728 22.7504 13.646 22.5188C14.39 22.058 15.38 21.3596 16.3748 20.4008C18.362 18.4856 20.3996 15.4916 20.3996 11.3C20.3996 10.1969 20.1823 9.10459 19.7602 8.08545C19.3381 7.06632 18.7193 6.14031 17.9393 5.3603C17.1593 4.58028 16.2333 3.96155 15.2142 3.53941C14.195 3.11727 13.1027 2.89999 11.9996 2.89999C10.8965 2.89999 9.8042 3.11727 8.78507 3.53941C7.76593 3.96155 6.83992 4.58028 6.05991 5.3603C5.2799 6.14031 4.66116 7.06632 4.23902 8.08545C3.81688 9.10459 3.59961 10.1969 3.59961 11.3C3.59961 15.4904 5.63721 18.4856 7.62561 20.4008C8.45811 21.2004 9.37233 21.9103 10.3532 22.5188C10.7331 22.7547 11.124 22.9725 11.5244 23.1716L11.5988 23.2064L11.6204 23.216L11.6276 23.2196ZM11.9996 14C12.7157 14 13.4024 13.7155 13.9088 13.2092C14.4151 12.7028 14.6996 12.0161 14.6996 11.3C14.6996 10.5839 14.4151 9.89715 13.9088 9.39081C13.4024 8.88446 12.7157 8.59999 11.9996 8.59999C11.2835 8.59999 10.5968 8.88446 10.0904 9.39081C9.58407 9.89715 9.29961 10.5839 9.29961 11.3C9.29961 12.0161 9.58407 12.7028 10.0904 13.2092C10.5968 13.7155 11.2835 14 11.9996 14Z" fill="url(#paint0_linear_1134_3632)"/>
                        <defs>
                        <linearGradient id="paint0_linear_1134_3632" x1="11.9996" y1="2.89999" x2="11.9996" y2="23.3024" gradientUnits="userSpaceOnUse">
                        <stop stop-color="#0E41C1" stop-opacity="0.870588"/>
                        <stop offset="1" stop-color="#0047FF" stop-opacity="0.870588"/>
                        </linearGradient>
                        </defs>
                    </svg>
                   </a>
                </span>
                <!--end:Menu link-->
            </div>
            <!--end:Menu item-->
                 <!--begin:Menu item-->
            <div class="menu-item py-2" data-bs-toggle="tooltip" data-bs-placement="right" title="Settings">
                <!--begin:Menu link-->
                <span class="menu-link menu-center" id="settings-lg-link">
                  <a class="menu-link" href="/settings.aspx">     
                    <svg width="19" height="21" viewBox="0 0 19 21" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd" clip-rule="evenodd" d="M11.2793 0.652C10.9093 0.5 10.4393 0.5 9.50032 0.5C8.56132 0.5 8.09132 0.5 7.72132 0.652C7.22877 0.854211 6.8367 1.24377 6.63132 1.735C6.53732 1.958 6.50132 2.219 6.48632 2.598C6.47965 2.8726 6.40305 3.14097 6.26376 3.37772C6.12448 3.61447 5.92711 3.81178 5.69032 3.951C5.44906 4.0851 5.17786 4.15615 4.90184 4.15754C4.62582 4.15894 4.35392 4.09065 4.11132 3.959C3.77332 3.781 3.52832 3.683 3.28632 3.651C2.75687 3.58148 2.22139 3.7238 1.79632 4.047C1.47832 4.289 1.24332 4.693 0.774315 5.5C0.304315 6.307 0.0703155 6.71 0.0173155 7.105C-0.0526845 7.631 0.0913156 8.163 0.417316 8.584C0.565316 8.776 0.774316 8.937 1.09732 9.139C1.57432 9.436 1.88032 9.942 1.88032 10.5C1.88032 11.058 1.57432 11.564 1.09832 11.86C0.774316 12.063 0.565315 12.224 0.416315 12.416C0.255398 12.6239 0.137285 12.8617 0.0687999 13.1156C0.000314891 13.3694 -0.0171837 13.6343 0.0173155 13.895C0.0703155 14.289 0.304315 14.693 0.774315 15.5C1.24432 16.307 1.47832 16.71 1.79632 16.953C2.22032 17.276 2.75632 17.418 3.28632 17.349C3.52832 17.317 3.77332 17.219 4.11132 17.041C4.35404 16.9092 4.62613 16.8408 4.90234 16.8422C5.17855 16.8436 5.44994 16.9147 5.69132 17.049C6.17732 17.329 6.46532 17.844 6.48632 18.402C6.50132 18.782 6.53732 19.042 6.63132 19.265C6.83532 19.755 7.22732 20.145 7.72132 20.348C8.09132 20.5 8.56132 20.5 9.50032 20.5C10.4393 20.5 10.9093 20.5 11.2793 20.348C11.7719 20.1458 12.1639 19.7562 12.3693 19.265C12.4633 19.042 12.4993 18.782 12.5143 18.402C12.5343 17.844 12.8233 17.328 13.3103 17.049C13.5516 16.9149 13.8228 16.8439 14.0988 16.8425C14.3748 16.8411 14.6467 16.9093 14.8893 17.041C15.2273 17.219 15.4723 17.317 15.7143 17.349C16.2443 17.419 16.7803 17.276 17.2043 16.953C17.5223 16.711 17.7573 16.307 18.2263 15.5C18.6963 14.693 18.9303 14.29 18.9833 13.895C19.0177 13.6343 19 13.3693 18.9314 13.1155C18.8627 12.8616 18.7444 12.6239 18.5833 12.416C18.4353 12.224 18.2263 12.063 17.9033 11.861C17.4263 11.564 17.1203 11.058 17.1203 10.5C17.1203 9.942 17.4263 9.436 17.9023 9.14C18.2263 8.937 18.4353 8.776 18.5843 8.584C18.7452 8.37606 18.8633 8.13829 18.9318 7.88443C19.0003 7.63057 19.0178 7.36566 18.9833 7.105C18.9303 6.711 18.6963 6.307 18.2263 5.5C17.7563 4.693 17.5223 4.29 17.2043 4.047C16.7792 3.7238 16.2438 3.58148 15.7143 3.651C15.4723 3.683 15.2273 3.781 14.8893 3.959C14.6466 4.09083 14.3745 4.15922 14.0983 4.15782C13.8221 4.15642 13.5507 4.08528 13.3093 3.951C13.0727 3.81166 12.8755 3.61429 12.7364 3.37755C12.5973 3.14081 12.5209 2.87251 12.5143 2.598C12.4993 2.218 12.4633 1.958 12.3693 1.735C12.2677 1.49174 12.1191 1.27088 11.9321 1.08506C11.745 0.899233 11.5232 0.752078 11.2793 0.652ZM9.50032 13.5C11.1703 13.5 12.5233 12.157 12.5233 10.5C12.5233 8.843 11.1693 7.5 9.50032 7.5C7.83032 7.5 6.47732 8.843 6.47732 10.5C6.47732 12.157 7.83132 13.5 9.50032 13.5Z" fill="url(#paint0_linear_1134_3636)"/>
                        <defs>
                        <linearGradient id="paint0_linear_1134_3636" x1="9.50026" y1="0.5" x2="9.50026" y2="20.5" gradientUnits="userSpaceOnUse">
                        <stop stop-color="#0E41C1" stop-opacity="0.870588"/>
                        <stop offset="1" stop-color="#0047FF" stop-opacity="0.870588"/>
                        </linearGradient>
                        </defs>
                    </svg>
                   </a>
                </span>
                <!--end:Menu link-->
            </div>
            <!--end:Menu item-->
        </div>
        <!--end::Menu-->
    </div>
    <!--end::Primary menu-->
</div>