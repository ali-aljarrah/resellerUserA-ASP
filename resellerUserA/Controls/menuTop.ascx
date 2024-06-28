<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="menuTop.ascx.cs" Inherits="resellerUserA.Controls.menuTop" %>

<div id="kt_app_header" class="app-header d-flex">
	<!--begin::Header container-->
	<div class="app-container container-fluid d-flex align-items-center justify-content-between" id="kt_app_header_container">
		<!--begin::Logo-->
		<div class="app-header-logo d-flex flex-center">
			<!--begin::Logo image-->
			<div class="p-3 rounded-1 bg-blue d-none d-lg-block">
				<a href="/index.aspx">
					<img alt="Logo" src="assets/img/LOGO.svg" class="mh-25px" />
				</a>
				<!--end::Logo image-->
			</div>
			<!--begin::Sidebar toggle-->
			<button class="btn btn-icon btn-sm btn-active-color-primary d-flex d-lg-none" id="kt_app_sidebar_mobile_toggle">
				<i class="ki-outline ki-abstract-14 fs-1"></i>
			</button>
			<!--end::Sidebar toggle-->
		</div>
		<!--end::Logo-->
		<div class="d-flex flex-lg-grow-1 flex-stack" id="kt_app_header_wrapper">
			<div class="app-header-wrapper d-flex align-items-center justify-content-around justify-content-lg-between flex-wrap gap-6 gap-lg-0 mb-6 mb-lg-0" data-kt-swapper="true" data-kt-swapper-mode="{default: 'prepend', lg: 'prepend'}" data-kt-swapper-parent="{default: '#kt_app_content_container', lg: '#kt_app_header_wrapper'}">
				<!--begin::Page title-->
				<div class="d-none d-md-block h-40px border-start border-gray-200 me-10"></div>
				<div class="d-flex flex-column justify-content-center">
					<ul class="breadcrumb breadcrumb-separatorless fw-semibold fs-base">
						<!--begin::Item-->
						<li class="breadcrumb-item text-muted" id="parentPage" runat="server"></li>
						<!--end::Item-->
						<!--begin::Item-->
						<li class="breadcrumb-item text-muted">/</li>
						<!--end::Item-->
						<!--begin::Item-->
						<li class="breadcrumb-item black" id="childPage" runat="server"></li>
						<!--end::Item-->
					</ul>
					<!--end::Breadcrumb-->
				</div>
				<!--end::Page title-->
				
				<div class="d-flex gap-3 gap-lg-8 flex-wrap">
					<div class="d-flex align-items-center gap-2">
					</div>
					<div class="d-flex align-items-center gap-2">
					</div>
					<div class="d-flex align-items-center gap-2">
					</div>
				</div>
			</div>
			<!--begin::Navbar-->
			<div class="app-navbar flex-shrink-0 gap-3 gap-lg-8 align-items-center">
				<button type="button" class="btn btn-sm btn-icon" data-kt-menu-trigger="{default: 'click'}" data-kt-menu-placement="bottom-end">
				    <svg width="28" height="34" viewBox="0 0 22 18" fill="none" xmlns="http://www.w3.org/2000/svg">
						<path d="M20.7946 16.9944C20.2743 16.0981 19.5009 13.5622 19.5009 10.25C19.5009 8.26088 18.7107 6.35322 17.3042 4.9467C15.8976 3.54018 13.99 2.75 12.0009 2.75C10.0117 2.75 8.10409 3.54018 6.69757 4.9467C5.29104 6.35322 4.50087 8.26088 4.50087 10.25C4.50087 13.5631 3.72649 16.0981 3.20618 16.9944C3.07331 17.2222 3.00287 17.4811 3.00196 17.7449C3.00106 18.0086 3.06972 18.268 3.20102 18.4967C3.33233 18.7255 3.52163 18.9156 3.74984 19.0478C3.97805 19.1801 4.2371 19.2498 4.50087 19.25H8.3268C8.49984 20.0967 8.96001 20.8577 9.62949 21.4042C10.299 21.9507 11.1367 22.2492 12.0009 22.2492C12.8651 22.2492 13.7028 21.9507 14.3722 21.4042C15.0417 20.8577 15.5019 20.0967 15.6749 19.25H19.5009C19.7646 19.2496 20.0235 19.1798 20.2516 19.0475C20.4796 18.9151 20.6688 18.725 20.8 18.4963C20.9312 18.2676 20.9998 18.0083 20.9988 17.7446C20.9979 17.4809 20.9274 17.2222 20.7946 16.9944ZM12.0009 20.75C11.5357 20.7499 11.082 20.6055 10.7022 20.3369C10.3225 20.0683 10.0353 19.6886 9.88024 19.25H14.1215C13.9664 19.6886 13.6793 20.0683 13.2995 20.3369C12.9197 20.6055 12.466 20.7499 12.0009 20.75Z" fill="url(#paint0_linear_1134_383)"/>
						<defs>
						<linearGradient id="paint0_linear_1134_383" x1="12.0004" y1="2.75" x2="12.0004" y2="22.2492" gradientUnits="userSpaceOnUse">
						<stop stop-color="#0E41C1" stop-opacity="0.870588"/>
						<stop offset="1" stop-color="#0047FF" stop-opacity="0.870588"/>
						</linearGradient>
						</defs>
					</svg>				
				</button>
			
				<!--begin::User menu-->
				<div class="app-navbar-item" id="kt_header_user_menu_toggle">
					<!--begin::Menu wrapper-->
					<div class="cursor-pointer symbol symbol-40px" data-kt-menu-trigger="{default: 'click', lg: 'hover'}" data-kt-menu-attach="parent" data-kt-menu-placement="bottom-end">
						<svg width="28" height="34" viewBox="0 0 22 18" fill="none" xmlns="http://www.w3.org/2000/svg">
							<path d="M3.67537 4.80769C3.67537 5.95016 4.13106 7.04584 4.94219 7.85369C5.75332 8.66154 6.85346 9.11539 8.00057 9.11539C9.14769 9.11539 10.2478 8.66154 11.059 7.85369C11.8701 7.04584 12.3258 5.95016 12.3258 4.80769C12.3258 3.66522 11.8701 2.56954 11.059 1.76169C10.2478 0.953845 9.14769 0.5 8.00057 0.5C6.85346 0.5 5.75332 0.953845 4.94219 1.76169C4.13106 2.56954 3.67537 3.66522 3.67537 4.80769ZM14.1794 16.5H1.20382C1.03995 16.5 0.882788 16.4352 0.766912 16.3198C0.651036 16.2044 0.585938 16.0478 0.585938 15.8846V14.0385C0.585938 13.2224 0.91143 12.4398 1.49081 11.8627C2.07019 11.2857 2.856 10.9615 3.67537 10.9615H12.3258C13.1451 10.9615 13.931 11.2857 14.5103 11.8627C15.0897 12.4398 15.4152 13.2224 15.4152 14.0385V15.8846C15.4152 16.0478 15.3501 16.2044 15.2342 16.3198C15.1184 16.4352 14.9612 16.5 14.7973 16.5H14.1794Z" fill="url(#paint0_linear_1097_390)"/>
							<defs>
							<linearGradient id="paint0_linear_1097_390" x1="8.00057" y1="1.5" x2="8.00057" y2="18.5" gradientUnits="userSpaceOnUse">
							<stop stop-color="#0E41C1" stop-opacity="0.870588"/>
							<stop offset="1" stop-color="#0047FF" stop-opacity="0.870588"/>
							</linearGradient>
							</defs>
						</svg>
					</div>
					<!--begin::User account menu-->
					<div class="menu menu-sub menu-sub-dropdown menu-column menu-rounded menu-gray-800 menu-state-bg menu-state-color fw-semibold py-4 fs-6 w-275px" data-kt-menu="true">
						<!--begin::Menu item-->
						<div class="menu-item px-3">
							<div class="menu-content d-flex align-items-center px-3">
								<!--begin::Avatar-->
								<div class="symbol symbol-50px me-5">
									<img alt="Logo" src="assets/media/avatars/300-2.jpg" />
								</div>
								<!--end::Avatar-->
								<!--begin::Username-->
								<div class="d-flex flex-column">
									<div class="fw-bold d-flex align-items-center fs-5">Ana Fox 
									<span class="badge badge-light-success fw-bold fs-8 px-2 py-1 ms-2">Pro</span></div>
									<a href="#" class="fw-semibold text-muted text-hover-primary fs-7">ana@kt.com</a>
								</div>
								<!--end::Username-->
							</div>
						</div>
						<!--end::Menu item-->
						<!--begin::Menu separator-->
						<div class="separator my-2"></div>
						<!--end::Menu separator-->
						<!--begin::Menu item-->
						<div class="menu-item px-5">
							<a href="account/overview.html" class="menu-link px-5">My Profile</a>
						</div>
						<!--end::Menu item-->
						<!--begin::Menu item-->
						<div class="menu-item px-5">
							<a href="apps/projects/list.html" class="menu-link px-5">
								<span class="menu-text">My Projects</span>
								<span class="menu-badge">
									<span class="badge badge-light-danger badge-circle fw-bold fs-7">3</span>
								</span>
							</a>
						</div>
						<!--end::Menu item-->
						<!--begin::Menu item-->
						<div class="menu-item px-5" data-kt-menu-trigger="{default: 'click', lg: 'hover'}" data-kt-menu-placement="left-start" data-kt-menu-offset="-15px, 0">
							<a href="#" class="menu-link px-5">
								<span class="menu-title">My Subscription</span>
								<span class="menu-arrow"></span>
							</a>
							<!--begin::Menu sub-->
							<div class="menu-sub menu-sub-dropdown w-175px py-4">
								<!--begin::Menu item-->
								<div class="menu-item px-3">
									<a href="account/referrals.html" class="menu-link px-5">Referrals</a>
								</div>
								<!--end::Menu item-->
								<!--begin::Menu item-->
								<div class="menu-item px-3">
									<a href="account/billing.html" class="menu-link px-5">Billing</a>
								</div>
								<!--end::Menu item-->
								<!--begin::Menu item-->
								<div class="menu-item px-3">
									<a href="account/statements.html" class="menu-link px-5">Payments</a>
								</div>
								<!--end::Menu item-->
								<!--begin::Menu item-->
								<div class="menu-item px-3">
									<a href="account/statements.html" class="menu-link d-flex flex-stack px-5">Statements 
									<span class="ms-2 lh-0" data-bs-toggle="tooltip" title="View your statements">
										<i class="ki-outline ki-information-5 fs-5"></i>
									</span></a>
								</div>
								<!--end::Menu item-->
								<!--begin::Menu separator-->
								<div class="separator my-2"></div>
								<!--end::Menu separator-->
								<!--begin::Menu item-->
								<div class="menu-item px-3">
									<div class="menu-content px-3">
										<label class="form-check form-switch form-check-custom form-check-solid">
											<input class="form-check-input w-30px h-20px" type="checkbox" value="1" checked="checked" name="notifications" />
											<span class="form-check-label text-muted fs-7">Notifications</span>
										</label>
									</div>
								</div>
								<!--end::Menu item-->
							</div>
							<!--end::Menu sub-->
						</div>
						<!--end::Menu item-->
						<!--begin::Menu item-->
						<div class="menu-item px-5">
							<a href="account/statements.html" class="menu-link px-5">My Statements</a>
						</div>
						<!--end::Menu item-->
						<!--begin::Menu separator-->
						<div class="separator my-2"></div>
						<!--end::Menu separator-->
						<!--begin::Menu item-->
						<div class="menu-item px-5" data-kt-menu-trigger="{default: 'click', lg: 'hover'}" data-kt-menu-placement="left-start" data-kt-menu-offset="-15px, 0">
							<a href="#" class="menu-link px-5">
								<span class="menu-title position-relative">Language 
								<span class="fs-8 rounded bg-light px-3 py-2 position-absolute translate-middle-y top-50 end-0">English 
								<img class="w-15px h-15px rounded-1 ms-2" src="assets/media/flags/united-states.svg" alt="" /></span></span>
							</a>
							<!--begin::Menu sub-->
							<div class="menu-sub menu-sub-dropdown w-175px py-4">
								<!--begin::Menu item-->
								<div class="menu-item px-3">
									<a href="account/settings.html" class="menu-link d-flex px-5 active">
									<span class="symbol symbol-20px me-4">
										<img class="rounded-1" src="assets/media/flags/united-states.svg" alt="" />
									</span>English</a>
								</div>
								<!--end::Menu item-->
								<!--begin::Menu item-->
								<div class="menu-item px-3">
									<a href="account/settings.html" class="menu-link d-flex px-5">
									<span class="symbol symbol-20px me-4">
										<img class="rounded-1" src="assets/media/flags/spain.svg" alt="" />
									</span>Spanish</a>
								</div>
								<!--end::Menu item-->
								<!--begin::Menu item-->
								<div class="menu-item px-3">
									<a href="account/settings.html" class="menu-link d-flex px-5">
									<span class="symbol symbol-20px me-4">
										<img class="rounded-1" src="assets/media/flags/germany.svg" alt="" />
									</span>German</a>
								</div>
								<!--end::Menu item-->
								<!--begin::Menu item-->
								<div class="menu-item px-3">
									<a href="account/settings.html" class="menu-link d-flex px-5">
									<span class="symbol symbol-20px me-4">
										<img class="rounded-1" src="assets/media/flags/japan.svg" alt="" />
									</span>Japanese</a>
								</div>
								<!--end::Menu item-->
								<!--begin::Menu item-->
								<div class="menu-item px-3">
									<a href="account/settings.html" class="menu-link d-flex px-5">
									<span class="symbol symbol-20px me-4">
										<img class="rounded-1" src="assets/media/flags/france.svg" alt="" />
									</span>French</a>
								</div>
								<!--end::Menu item-->
							</div>
							<!--end::Menu sub-->
						</div>
						<!--end::Menu item-->
						<!--begin::Menu item-->
						<div class="menu-item px-5 my-1">
							<a href="account/settings.html" class="menu-link px-5">Account Settings</a>
						</div>
						<!--end::Menu item-->
						<!--begin::Menu item-->
						<div class="menu-item px-5">
							<a href="authentication/layouts/corporate/sign-in.html" class="menu-link px-5">Sign Out</a>
						</div>
						<!--end::Menu item-->
					</div>
					<!--end::User account menu-->
					<!--end::Menu wrapper-->
				</div>
				<!--end::User menu-->
				<a href="/reload.aspx" class="btn btn-grad rotate-scale-hover d-none d-lg-block">
					<svg class="pe-1 pb-1" width="24" height="25" viewBox="0 0 24 25" fill="none" xmlns="http://www.w3.org/2000/svg">
						<path d="M18.15 18.1H3.85C3.5475 18.1 3.3 18.3475 3.3 18.65V19.75C3.3 20.0525 3.5475 20.3 3.85 20.3H18.15C18.4525 20.3 18.7 20.0525 18.7 19.75V18.65C18.7 18.3475 18.4525 18.1 18.15 18.1ZM20.35 7.1C19.4391 7.1 18.7 7.83906 18.7 8.75C18.7 8.99406 18.755 9.22094 18.8513 9.43063L16.3625 10.9225C15.8331 11.2388 15.1491 11.06 14.8431 10.5238L12.0416 5.62188C12.4094 5.31938 12.65 4.86563 12.65 4.35C12.65 3.43906 11.9109 2.7 11 2.7C10.0891 2.7 9.35 3.43906 9.35 4.35C9.35 4.86563 9.59063 5.31938 9.95844 5.62188L7.15688 10.5238C6.85094 11.06 6.16344 11.2388 5.6375 10.9225L3.15219 9.43063C3.245 9.22438 3.30344 8.99406 3.30344 8.75C3.30344 7.83906 2.56437 7.1 1.65344 7.1C0.7425 7.1 0 7.83906 0 8.75C0 9.66094 0.739062 10.4 1.65 10.4C1.73937 10.4 1.82875 10.3863 1.91469 10.3725L4.4 17H17.6L20.0853 10.3725C20.1712 10.3863 20.2606 10.4 20.35 10.4C21.2609 10.4 22 9.66094 22 8.75C22 7.83906 21.2609 7.1 20.35 7.1Z" fill="white"/>
					</svg>
					Try Premium
				</a>
			</div>
			<!--end::Navbar-->
		</div>
	</div>
	<!--end::Header container-->
</div>