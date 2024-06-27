<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="resellerUserA.login" %>


<!DOCTYPE html>
<html lang="en">
	<!--begin::Head-->
	<head>
	
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
		</head>
	<!--end::Head-->
	<!--begin::Body-->
	<body id="kt_body" class="app-blank">
        <!--<?php include 'include/loader.php' ?> -->
		<!--begin::Theme mode setup on page load-->
		<script>
            var defaultThemeMode = "light"; var themeMode; if (document.documentElement) { if (document.documentElement.hasAttribute("data-bs-theme-mode")) { themeMode = document.documentElement.getAttribute("data-bs-theme-mode"); } else { if (localStorage.getItem("data-bs-theme") !== null) { themeMode = localStorage.getItem("data-bs-theme"); } else { themeMode = defaultThemeMode; } } if (themeMode === "system") { themeMode = window.matchMedia("(prefers-color-scheme: dark)").matches ? "dark" : "light"; } document.documentElement.setAttribute("data-bs-theme", themeMode); }
            var onSubmit = function (token) {
                t = document.querySelector("#kt_sign_in_submit");
                t.setAttribute("data-kt-indicator", "on");
                (t.disabled = !0);
                document.getElementById('kt_sign_in_form').submit();
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
                            <form class="form w-100 fv-plugins-bootstrap5 fv-plugins-framework" novalidate="novalidate" id="kt_sign_in_form" name="kt_sign_in_form" data-kt-redirect-url="/" action="login" method="post">
                                <div class="text-center mb-10">
                                    <a href="/">
                                        <div style="
                                            text-align: center;
                                            font-weight: 600;
                                            width: 100%; 
                                            height: 40px; 
                                            border-radius: 8px; 
                                            background: #D9D9D9; 
                                            color:rgba(18, 18, 18, 1); 
                                            padding: 8px;">
                                            LOGO
                                        </div>
                                    </a>
                                </div>
                                <!--begin::Heading-->
                                <div class="mb-11">
                                    <!--begin::Title-->
                                    <h1 class="dark-color fw-bolder mb-3">Sign in</h1>
                                    <p class="fs-16 grey-color">
                                    If there are too many failed login attempts your account will be locked for 60 minutes.
                                    </p>
                                    <!--end::Title-->
                                </div>
                                <!--begin::Heading-->
                                <!--begin::Input group=-->
                                <div class="fv-row mb-8 fv-plugins-icon-container fv-plugins-bootstrap5-row-valid">
                                    <!--begin::Email-->
                                    <label for="email" class="form-label fs-14 dark-color required">Username/ Email</label>
                                    <input type="text" placeholder="Username/ Email" name="email" autocomplete="off" class="form-control form-control-solid">
                                    <!--end::Email-->
                                <div class="fv-plugins-message-container invalid-feedback"></div></div>
                                <!--end::Input group=-->
                                <div class="fv-row mb-3 fv-plugins-icon-container fv-plugins-bootstrap5-row-valid">
                                    <!--begin::Password-->
                                    <label for="password" class="form-label fs-14 dark-color required">Password</label>
                                    <input type="password" placeholder="Password" name="password" autocomplete="off" class="form-control form-control-solid">
                                    <!--end::Password-->
                                <div class="fv-plugins-message-container invalid-feedback"></div></div>
                                <!--end::Input group-->
                                <div>
                                    <div id="recaptcha" class="g-recaptcha " style="position: fixed; bottom: 0; right: 0;" data-badge="bottomright" data-style="bottomright" data-sitekey="6LeIxAcTAAAAAJcZVRqyHh71UMIEGNQ_MXjiZKhI" data-callback="onSubmit" data-size="invisible"></div>
                                </div>
                                <!--begin::Submit button-->
                                <div class="d-grid my-10">
                                    <button type="submit" id="kt_sign_in_submit" class="btn btn-dark py-2 px-8 rounded-3 w-100" data-kt-indicator="off">
                                        <!--begin::Indicator label-->
                                        <span class="indicator-label">Sign In</span>
                                        <!--end::Indicator label-->
                                        <!--begin::Indicator progress-->
                                        <span class="indicator-progress">Please wait...
                                        <span class="spinner-border spinner-border-sm align-middle ms-2"></span></span>
                                        <!--end::Indicator progress-->
                                    </button>
                                </div>
                                <!--end::Submit button-->
                                <!--begin::Sign up-->
                                <div class="d-flex justify-content-between align-items-center">
                                    <div>
                                        <a href="/register" class="link-primary">Don't have an account?</a>
                                    </div>
                                    <div>
                                    <a href="/forgot" class="link-primary">Forgot Password ?</a>
                                    </div>
                                </div>
                                <!--end::Sign up-->

                                <input type="hidden" value="{593AA78F-2A73-425B-BF35-65578491E64E}" name="token">
                                <input type="hidden" value="1da8810186435fedecd66694940d2d0bd2636fa737750f5f36518d43e32030e5||undefined" name="fpuser" id="fpuser">
                                <input type="hidden" value="1da8810186435fedecd66694940d2d0bd2636fa737750f5f36518d43e32030e5" name="fpuser_id" id="fpuser_id">
							</form>
						</div>
						<!--end::Wrapper-->
					</div>
				</div>
				<!--end::Body-->
				<!--begin::Aside-->
				<div class="d-flex flex-lg-row-fluid w-lg-50 bg-gradient order-1 order-lg-2">
					<!--begin::Content-->
					<div class="d-flex justify-content-center align-items-center flex-column py-7 py-lg-15 px-5 px-lg-20 w-100">
                        <div class="px-lg-20 px-5">
                            <!--begin::Title-->
                            <h1 class="d-none d-lg-block text-white fw-bolder fs-56 mb-7"></h1>
                            <!--end::Title-->
                            <!--begin::Text-->
                            <div class="d-none d-lg-block text-white fs-16"></div>
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
		<!--begin::Javascript-->
		<!--begin::Global Javascript Bundle(mandatory for all pages)-->
        <script src="https://www.google.com/recaptcha/api.js" async defer></script>
        <script src="/assets/plugins/global/plugins.bundle.js"></script>
		<script src="/assets/js/scripts.bundle.js"></script>
		<!--end::Global Javascript Bundle-->
		<!--begin::Custom Javascript(used for this page only)-->
		<script src="/assets/js/custom/authentication/sign-in/general.js"></script>
        <script src="/assets/js/main.js"></script>
		<!--end::Custom Javascript-->
		<!--end::Javascript-->
	</body>
	<!--end::Body-->
</html>