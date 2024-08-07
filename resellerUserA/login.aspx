﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="resellerUserA.login" %>


<!DOCTYPE html>
<html lang="en">
<!--begin::Head-->
<head>
    <title>Reseller - Login</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="shortcut icon" href="/assets/img/LOGO.svg" />
    <!--begin::Fonts(mandatory for all pages)-->
    <link rel="stylesheet" href="/assets/css/font.css" />
    <!--end::Fonts-->
    <!--begin::Vendor Stylesheets(used for this page only)-->
    <link href="/assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css" />
    <!--end::Vendor Stylesheets-->
    <!--begin::Global Stylesheets Bundle(mandatory for all pages)-->
    <link href="/assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
    <link href="/assets/css/style.bundle.css" rel="stylesheet" type="text/css" />
    <!--end::Global Stylesheets Bundle-->
    <link rel="stylesheet" href="/assets/css/custom.css" />
    <script>// Frame-busting to prevent site from being loaded within a frame without permission (click-jacking) if (window.top != window.self) { window.top.location.replace(window.self.location.href); }</script>
    <!--begin::Javascript-->
    <!--begin::Global Javas -->
    <script src="https://www.google.com/recaptcha/api.js" async defer></script>
    <script src="/assets/plugins/global/plugins.bundle.js"></script>
    <script src="/assets/js/scripts.bundle.js"></script>
    <!--end::Global Javascript Bundle-->
    <!--begin::Custom Javascript(used for this page only)-->
    <script src="/assets/js/custom/authentication/sign-in/general.js"></script>
    <script src="/assets/js/main.js"></script>
</head>
<!--end::Head-->
<!--begin::Body-->
<body id="kt_body" data-kt-app-header-fixed="true" data-kt-app-header-fixed-mobile="true" data-kt-app-sidebar-enabled="true" data-kt-app-sidebar-fixed="true" data-kt-app-sidebar-push-toolbar="true" data-kt-app-sidebar-push-footer="true" class="a">
    <!--begin::Theme mode setup on page load-->
    <script>
        var defaultThemeMode = "light"; var themeMode; if (document.documentElement) { if (document.documentElement.hasAttribute("data-bs-theme-mode")) { themeMode = document.documentElement.getAttribute("data-bs-theme-mode"); } else { if (localStorage.getItem("data-bs-theme") !== null) { themeMode = localStorage.getItem("data-bs-theme"); } else { themeMode = defaultThemeMode; } } if (themeMode === "system") { themeMode = window.matchMedia("(prefers-color-scheme: dark)").matches ? "dark" : "light"; } document.documentElement.setAttribute("data-bs-theme", themeMode); }
        var onSubmit = function (token) {
            t = document.querySelector("#sign_in_submit");
            //t.setAttribute("data-kt-indicator", "on");
            (t.disabled = !0);
            //document.getElementById('kt_sign_in_form').submit();
            __doPostBack("sign_in_submit", '');
        };
    </script>
    <!--end::Theme mode setup on page load-->
    <!--begin::Root-->
    <div class="d-flex flex-column flex-root" id="kt_app_root">
        <!--begin::Authentication - Sign-in -->
        <div class="d-flex flex-column flex-lg-row flex-column-fluid">
            <!--begin::Body-->
            <div class="d-flex flex-column flex-lg-row-fluid w-lg-50 p-10 order-2 order-lg-1">
                <!--begin::Form-->
                <div class="d-flex flex-center flex-column flex-lg-row-fluid">
                    <!--begin::Wrapper-->
                    <div class="w-lg-500px p-10">
                        <form class="form w-100 fv-plugins trap5 fv-plugins-framework" novalidate="novalidate" id="kt_sign_in_form" runat="server" name="kt_sign_in_form" data-kt-redirect-url="/" action="login.aspx" method="post">
                            <!--begin::List widget 10-->
                            <div class="card card-flush shadow-xs">
                                <!--begin::Header-->
                                <div class="card-header d-block pt-7">
                                    <!--begin::Title-->
                                    <h3 class="card-title card-label fs-32 fw-bold color-black-1">Sign in
                                    </h3>
                                    <!--end::Title-->
                                    <p class="color-neutral-grey mt-1 fs-14">
                                        If there are too many failed login attempts your account will be locked for 60 minutes.
                                    </p>
                                </div>
                                <!--end::Header-->
                                <!--begin::Body-->
                                <div class="card-body">
                                    <div class="fv-row mb-8 fv-plugins-icon-container fv-plugins-bootstrap5-row-valid">
                                        <!--begin::Email-->
                                        <label for="email" class="form-label fs-14 dark-color required">Username/ Email</label>
                                        <input type="text" placeholder="Username/ Email" name="email" id="email" runat="server" autocomplete="off" class="form-control form-control-solid">
                                        <!--end::Email-->
                                        <div class="fv-plugins-message-container invalid-feedback"></div>
                                    </div>
                                    <!--end::Input group=-->
                                    <div class="fv-row mb-3 fv-plugins-icon-container fv-plugins-bootstrap5-row-valid">
                                        <!--begin::Password-->
                                        <label for="password" class="form-label fs-14 dark-color required">Password</label>
                                        <input type="password" placeholder="Password" name="password" id="password" runat="server" autocomplete="off" class="form-control form-control-solid">
                                        <!--end::Password-->
                                        <div class="fv-plugins-message-container invalid-feedback"></div>
                                    </div>
                                    <!--end::Input group-->
                                    <div>
                                        <div id="recaptcha" class="g-recaptcha " style="position: fixed; bottom: 0; right: 0;" data-badge="bottomright" data-style="bottomright" data-sitekey="6LeIxAcTAAAAAJcZVRqyHh71UMIEGNQ_MXjiZKhI" data-callback="onSubmit" data-size="invisible"></div>
                                    </div>
                                    <!--begin::Submit button-->
                                    <div class="d-grid my-10">
                                        <asp:Button ID="sign_in_submit" runat="server" Text="Sign In"
                                            CssClass="btn btn-grad-1 py-2 px-8 rounded-3 w-100"
                                            OnClientClick="return false;" OnClick="sign_in_submit_Click" />
                                    </div>
                                    <!--end::Submit button-->
                                    <!--begin::Sign up-->
                                    <div class="d-flex justify-content-between align-items-center">
                                        <div>
                                            <a href="/register.aspx" class="link-primary text-decoration-underline">Don't have an account?</a>
                                        </div>
                                        <div>
                                            <a href="/forgot.aspx" class="link-primary text-decoration-underline">Forgot Password ?</a>
                                        </div>
                                    </div>
                                    <!--end::Sign up-->

                                    <input type="hidden" value="{593AA78F-2A73-425B-BF35-65578491E64E}" name="token" id="token" runat="server">
                                    <input type="hidden" value="1da8810186435fedecd66694940d2d0bd2636fa737750f5f36518d43e32030e5||undefined" name="fpuser" id="fpuser" runat="server">
                                    <input type="hidden" value="1da8810186435fedecd66694940d2d0bd2636fa737750f5f36518d43e32030e5" name="fpuser_id" id="fpuser_id" runat="server">
                                </div>
                                <!--end: Card Body-->
                            </div>
                            <!--end::List widget 10-->
                            <!--begin::Input group=-->
                            <asp:ScriptManager ID="ScriptManager1" runat="server" />
                        </form>

                    </div>

                </div>
            </div>
            <!--end::Body-->
            <!--begin::Aside-->
            <div class="d-flex flex-lg-row-fluid w-lg-50 bg-gradient order-1 order-lg-2">
                <!--begin::Content-->
                <div class="d-flex justify-content-center align-items-center flex-column py-7 py-lg-15 px-5 px-lg-20 w-100">
                    <div class="px-lg-20 px-5">
                        <div>
                            <img class="img-fluid" width="580" height="431" loading="lazy" src="assets/img/login-img.webp" alt="Login image" />
                        </div>
                        <!--begin::Title-->
                        <h1 class="d-none d-lg-block text-white fw-bolder fs-55 mb-7">
                            <span class="text-btn-grad">Unlock profits</span> with every text.
                        </h1>
                        <!--end::Title-->
                        <!--begin::Text-->
                        <div class="d-none d-lg-block text-white fs-16">
                            Earn additional revenue by buying and then reselling SMS credits to their customers. A reseller buys SMS credits in bulk and sells them in smaller batches to their customers.
                        </div>
                        <!--end::Text-->
                    </div>
                </div>
                <!--end::Content-->
            </div>
            <!--end::Aside-->
        </div>
        <!--end::Authentication - Sign-in-->
    </div>
    <!--end::Root-->


</body>
<!--end::Body-->
</html>
