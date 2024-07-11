<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="paymentsreport.aspx.cs" Inherits="resellerUserA.paymentsreport" %>

<%@ Register Src="~/Controls/head.ascx" TagPrefix="uc1" TagName="head" %>

<%@ Register Src="~/Controls/menuTop.ascx" TagPrefix="uc1" TagName="menuTop" %>
<%@ Register Src="~/Controls/sideBar.ascx" TagPrefix="uc1" TagName="sideBar" %>
<%@ Register Src="~/Controls/footer.ascx" TagPrefix="uc1" TagName="footer" %>
<%@ Register Src="~/Controls/footerLinks.ascx" TagPrefix="uc1" TagName="footerLinks" %>
<%@ Register Src="~/Controls/loader.ascx" TagPrefix="uc1" TagName="loader" %>

<uc1:head runat="server" ID="head" />

 <title>Account Payment History</title>
        <style>
			@media screen {
				#printSection {
					display: none;
				}
			}
			#printThis {
				display: none;
			}
			@media print {
				body * {
					visibility: hidden;
				}
				#printSection,
				#printSection * {
					visibility: visible;
				}
				#printSection {
					position: absolute;
					left: 0;
					top: 0;
					right: 0;
					height: 99%;
				}
				#printThis {
					display: block;
					padding-top: 50px;
				}
			}
		</style>
	</head>
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
               <uc1:menuTop runat="server" id="menuTop1" parentPageText="Report" childPageText="Payments Report"/>
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
                                        <div class="col-md-12 mb-md-0 mb-5 mt-5">
                                            <!--begin::Page title-->
                                            <div class="card card-flush shadow-xs h-lg-100 p-8">
                                            <div class="page-title gap-1 d-flex justify-content-between align-items-start">
                                                <div>
                                                   <!--begin::Title-->
                                                    <div class="d-flex justify-content-start align-items-center mb-1">
                                                        <h1 class="page-heading text-dark fw-bold m-0 me-3">Account Payment History</h1>
                                                        <span class="fs-12 cyan-color fw-bold cyan-bg px-2 py-1">3 available</span>
                                                    </div>
                                                    <p class="fs-14  color-neutral-grey">
                                                    This report allows you to view a log of the payments you have made for your account. Additionally, you can access other relevant details associated with each payment.
                                                    </p>
                                                    <!--end::Title-->
                                                </div>
                                            </div>
                                            <!--end::Page title-->
                                            <!--begin::Card widget 4-->
                                           
                                                <!--begin::Card body-->
                                                <div class="card-body pb-4 mt-0 pt-5 ps-0 pr-0">
                                                    <div class="table-responsive">
                                                        <table id="payment-report-table" class="table custom-table table-row-gray-300 gy-5 datatable">
                                                            <thead>
                                                                <tr class="fs-14 fw-600 dark-color">
                                                                    <th class="white-color">Trans. Method</th>
                                                                    <th class="white-color">Timestamp</th>
                                                                    <th class="white-color">Amount</th>
                                                                    <th class="white-color">Trans. Status</th>
                                                                    <th class="white-color">Email</th>
                                                                    <th class="white-color">Order ID</th>
                                                                    <th class="white-color">Document</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td>test</td>
                                                                    <td>test</td>
                                                                    <td>test</td>
                                                                    <td>test</td>
                                                                    <td>test</td>
                                                                    <td>test</td>
                                                                    <td>
                                                                        <a html-invoice="/invoice-3.html" class="print-invoice" href="javascript:void(0)">Print</a>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                                <!--end::Card body-->
                                            </div>
                                            <!--end::Card widget 4-->
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

      

        <div class="modal fade" tabindex="-1" id="invoice-modal">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<div class="modal-header">
						<h3 class="modal-title">Print invoice</h3>

						<!--begin::Close-->
						<div class="btn btn-icon btn-sm btn-active-light-primary ms-2" data-bs-dismiss="modal" aria-label="Close">
							<span class="svg-icon svg-icon-2x">
								<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
									<rect opacity="0.5" x="6" y="17.3137" width="16" height="2" rx="1" transform="rotate(-45 6 17.3137)" fill="currentColor"></rect>
									<rect x="7.41422" y="6" width="16" height="2" rx="1" transform="rotate(45 7.41422 6)" fill="currentColor"></rect>
								</svg>
							</span>
						</div>
						<!--end::Close-->
					</div>

					<div id="invoice-body" class="modal-body"></div>

					<div class="modal-footer">
						<button type="button" class="btn btn-primary btn-grad py-4 px-6 rounded-1 btn-bordered py-2 px-8" data-bs-dismiss="modal">Close</button>
						<button id="print-btn" type="button" class="btn btn-outline-dark btn-bordered py-4 px-6 rounded-1">Print</button>
					</div>
				</div>
			</div>
		</div>

        <div id="printThis"></div>

        <uc1:footerLinks runat="server" id="footerLinks" />
        <script src="/assets/js/payment_report.js"></script>

	</body>
	<!--end::Body-->
</html>
