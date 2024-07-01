<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="resellerUserA.index" %>

<%@ Register Src="~/Controls/head.ascx" TagPrefix="uc1" TagName="head" %>

<%@ Register Src="~/Controls/menuTop.ascx" TagPrefix="uc1" TagName="menuTop" %>
<%@ Register Src="~/Controls/sideBar.ascx" TagPrefix="uc1" TagName="sideBar" %>
<%@ Register Src="~/Controls/footer.ascx" TagPrefix="uc1" TagName="footer" %>
<%@ Register Src="~/Controls/footerLinks.ascx" TagPrefix="uc1" TagName="footerLinks" %>
<%@ Register Src="~/Controls/loader.ascx" TagPrefix="uc1" TagName="loader" %>


<uc1:head runat="server" ID="head" />
	<title>Metronic - The World's #1 Selling Bootstrap Admin Template by KeenThemes</title>
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
                <uc1:menuTop runat="server" id="menuTop1" parentPageText="Home" childPageText="Dashboard"/>
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
										<div class="col-xl-12">
											<!--begin::Row-->
											<div class="row g-2 g-xl-10">
												<!--begin::Col-->
												<div class="col-lg-4">
													<!--begin::Chart Widget 47-->
													<div class="card card-flush shadow-xs">
														<!--begin::Card body-->
														<div class="d-flex align-items-center">
															<!--begin::Wrapper-->
															<div class="d-flex flex-stack flex-row-fluid p-4">
																<!--begin::Block-->
																<div class="d-flex flex-column">
																	<!--begin::Total-->
																	<span class="fw-semibold text-gray-800 opacity-50 fs-16">SMS Sent Today</span>
																	<!--end::Total-->
																	<!--begin::Stats-->
																	<div class="d-flex align-items-center mb-1">
																		<!--begin::Amount-->
																		<span class="fs-20 fw-bold me-2 text-gray-800">$682.5</span>
																		<!--end::Amount-->
																	</div>
																	<!--end::Stats-->																	
																</div>
																<!--end::Block-->
																<!--begin::Chart-->
																<div id="kt_charts_widget_47 ">
																	<svg width="101" height="46" viewBox="0 0 101 46" fill="none" xmlns="http://www.w3.org/2000/svg">
																		<rect x="92.4414" y="45.5704" width="45.5705" height="8.48315" rx="4.24158" transform="rotate(-90 92.4414 45.5704)" fill="#E9EDF7"/>
																		<rect x="92.4414" y="45.5704" width="10.8668" height="8.48316" rx="4.24158" transform="rotate(-90 92.4414 45.5704)" fill="url(#paint0_linear_1091_6397)"/>
																		<rect x="69.3457" y="45.5704" width="45.5705" height="8.48308" rx="4.24154" transform="rotate(-90 69.3457 45.5704)" fill="#E9EDF7"/>
																		<rect x="69.3457" y="45.5704" width="41.364" height="8.48319" rx="4.24159" transform="rotate(-90 69.3457 45.5704)" fill="url(#paint1_linear_1091_6397)"/>
																		<rect x="46.252" y="45.5704" width="45.5705" height="8.48315" rx="4.24158" transform="rotate(-90 46.252 45.5704)" fill="#E9EDF7"/>
																		<rect x="46.252" y="45.5704" width="31.5488" height="8.48315" rx="4.24158" transform="rotate(-90 46.252 45.5704)" fill="url(#paint2_linear_1091_6397)"/>
																		<rect x="23.1582" y="45.5704" width="45.5705" height="8.48317" rx="4.24158" transform="rotate(-90 23.1582 45.5704)" fill="#E9EDF7"/>
																		<rect x="23.1582" y="45.5704" width="23.4863" height="8.48317" rx="4.24159" transform="rotate(-90 23.1582 45.5704)" fill="url(#paint3_linear_1091_6397)"/>
																		<rect x="0.0625" y="45.5704" width="45.5705" height="8.48318" rx="4.24159" transform="rotate(-90 0.0625 45.5704)" fill="#E9EDF7"/>
																		<rect x="0.0625" y="45.5704" width="37.508" height="8.4832" rx="4.2416" transform="rotate(-90 0.0625 45.5704)" fill="url(#paint4_linear_1091_6397)"/>
																		<defs>
																		<linearGradient id="paint0_linear_1091_6397" x1="97.8748" y1="45.5704" x2="97.8748" y2="54.0536" gradientUnits="userSpaceOnUse">
																		<stop stop-color="#0E41C1" stop-opacity="0.870588"/>
																		<stop offset="1" stop-color="#0047FF" stop-opacity="0.870588"/>
																		</linearGradient>
																		<linearGradient id="paint1_linear_1091_6397" x1="90.0277" y1="45.5704" x2="90.0277" y2="54.0536" gradientUnits="userSpaceOnUse">
																		<stop stop-color="#0E41C1" stop-opacity="0.870588"/>
																		<stop offset="1" stop-color="#0047FF" stop-opacity="0.870588"/>
																		</linearGradient>
																		<linearGradient id="paint2_linear_1091_6397" x1="62.0263" y1="45.5704" x2="62.0263" y2="54.0536" gradientUnits="userSpaceOnUse">
																		<stop stop-color="#0E41C1" stop-opacity="0.870588"/>
																		<stop offset="1" stop-color="#0047FF" stop-opacity="0.870588"/>
																		</linearGradient>
																		<linearGradient id="paint3_linear_1091_6397" x1="34.9014" y1="45.5704" x2="34.9014" y2="54.0536" gradientUnits="userSpaceOnUse">
																		<stop stop-color="#0E41C1" stop-opacity="0.870588"/>
																		<stop offset="1" stop-color="#0047FF" stop-opacity="0.870588"/>
																		</linearGradient>
																		<linearGradient id="paint4_linear_1091_6397" x1="18.8165" y1="45.5704" x2="18.8165" y2="54.0536" gradientUnits="userSpaceOnUse">
																		<stop stop-color="#0E41C1" stop-opacity="0.870588"/>
																		<stop offset="1" stop-color="#0047FF" stop-opacity="0.870588"/>
																		</linearGradient>
																		</defs>
																	</svg>
																</div>
																<!--end::Chart-->
															</div>
															<!--end::Wrapper-->
														</div>
														<!--end::Card body-->
													</div>
													<!--end::Chart Widget 47-->
												</div>
												<!--end::Col-->
												<!--begin::Col-->
												<div class="col-lg-4 mb-xl-10">
													<!--begin::Chart Widget 47-->
													<!--begin::Chart Widget 48-->
													<div class="card card-flush shadow-xs">
														<div class="d-flex align-items-start">
															<!--begin::Wrapper-->
															<div class="d-flex flex-row-fluid p-4 align-items-center">
																<!--begin::Chart-->
																<div id="kt_charts_widget_48">
																	<i class="ki-duotone ki-graph">
 																		<span class="path1 fs-55"></span>
 																		<span class="path2 fs-55"></span>
 																		<span class="path3 fs-55"></span>
 																		<span class="path4 fs-55"></span>
																	</i>
																</div>
																<!--end::Chart-->
																<!--begin::Block-->
																<div class="d-flex flex-column px-3">
																	<!--begin::Total-->
																	<span class="fw-semibold text-gray-800 opacity-50 fs-16">SMS Balance</span>
																	<!--end::Total-->
																	<!--begin::Stats-->
																	<div class="d-flex align-items-center mb-1">
																		<!--begin::Amount-->
																		<span class="fs-20 fw-bold text-gray-800 me-2">$350.40</span>
																		<!--end::Amount-->							
																	</div>
																	<!--end::Stats-->																
																</div>
																<!--end::Wrapper-->															
															</div>
															<!--end::Wrapper-->
														</div>
														<!--end::Card body-->
													</div>
													<!--end::Chart Widget 48-->
												</div>
												<!--end::Col-->
												<!--begin::Col-->
												<div class="col-lg-4 mb-xl-10">
													<!--begin::Chart Widget 47-->
													<!--begin::Chart Widget 48-->
													<div class="card card-flush shadow-xs bg-blue mb-1">
														<div class="d-flex align-items-start">
															<!--begin::Wrapper-->
															<div class="d-flex flex-stack flex-row-fluid p-4">
																<!--begin::Block-->
																<div class="d-flex flex-column px-3">
																	<!--begin::Total-->
																	<span class="fw-semibold text-white fs-14">All-Time SMS Sent</span>
																	<!--end::Total-->
																	<!--begin::Stats-->
																	<div class="d-flex align-items-center mb-1">
																		<!--begin::Amount-->
																		<span class="fs-20 fw-bold text-white me-2">$540.50</span>			
																    </div>
																	<!--end::Stats-->
																</div>
																<!--end::Wrapper-->
																<!--begin::Chart-->
																<div class="d-flex flex-column px-3">
																	<svg width="92" height="44" viewBox="0 0 92 44" fill="none" xmlns="http://www.w3.org/2000/svg">
																		<path d="M2.5 41.5C2.5 41.5 8.77975 -6.00537 24.5 16C40.2203 38.0054 46.5 36.9946 52.5 20C59.9168 -1.0075 87.258 17.0806 90 2" stroke="url(#paint0_linear_943_46353)" stroke-width="4" stroke-linecap="round" stroke-linejoin="round"/>
																		<defs>
																		<linearGradient id="paint0_linear_943_46353" x1="-1.00002" y1="46.5" x2="71.0778" y2="-16.9144" gradientUnits="userSpaceOnUse">
																		<stop stop-color="white"/>
																		<stop offset="1" stop-color="white" stop-opacity="0"/>
																		</linearGradient>
																		</defs>
																	</svg>
																</div>
																	<!--end::Chart-->
															</div>
															<!--end::Wrapper-->
														</div>
														<!--end::Card body-->
													</div>
													<!--end::Chart Widget 48-->
												</div>
												<!--end::Col-->
											</div>
											<!--end::Row-->
											<!--begin::Row-->
											<div class="row g-2 gx-xl-10">
												<!--begin::Col-->
												<div class="col-xl-8 mb-5 mb-xl-10">
													<!--begin::Table widget 9-->
													<div class="card card-flush shadow-xs h-xl-100 mt-1">
														<!--begin::Header-->
														<div class="card-header pt-5">
															<!--begin::Title-->
															<h3 class="card-title align-items-start flex-column">
																<span class="card-label fw-bold text-gray-800">SMS Balance</span>
															</h3>
															<!--end::Title-->
														</div>
														<!--end::Header-->
														<div class="row d-flex justify-content-center m-5 p-5">
															<div class="col-xl-4 mb-xs-10 d-flex justify-content-start shadow-xs rounded-2 p-3 mb-5 me-4">
																	<!--begin::Block-->
																<div class="d-flex flex-column px-3">
																	<!--begin::Total-->
																	<span class="fw-semibold fs-12 gray">Spending</span>
																	<!--end::Total-->
																	<!--begin::Stats-->
																	<div class="d-flex align-items-center mb-1">
																		<!--begin::Amount-->
																		<span class="fs-18 fw-bold me-2">43.50%</span>	
																		<span class="badge badge-light-success fs-12 p-2">+2.45%</span>		
																    </div>
																	<!--end::Stats-->
																</div>
																<!--end::Wrapper-->
															</div>
															<div class="col-lg-4 d-flex justify-content-start shadow-xs rounded-2 p-3 mb-5 me-4">
																	<!--begin::Block-->
																<div class="d-flex flex-column px-3">
																	<!--begin::Total-->
																	<span class="fw-semibold fs-12 gray">Remaining</span>
																	<!--end::Total-->
																	<!--begin::Stats-->
																	<div class="d-flex align-items-center mb-1">
																		<!--begin::Amount-->
																		<span class="fs-18 fw-bold me-2">$52,422</span>		
																		<span class="badge badge-light-danger fs-12 p-2">-4.75%</span>	
																    </div>
																	<!--end::Stats-->
																</div>
																<!--end::Wrapper-->
															</div>
													    </div>
														<div class="card-body">
															<div id="kt_apexcharts_3" style="height: 200px;"></div>
														</div>
												    </div>
													<!--end::Table Widget 9-->
													
												</div>
												<!--end::Col-->
												<!--begin::Col-->
												<div class="col-xl-4 mb-5 mb-xl-10">
													<!--begin::Table widget 10-->
													<div class="card card-flush shadow-xs h-xl-100">
														<!--begin::Header-->
													<div class="card-header pt-5">
															<!--begin::Title-->
															<h3 class="card-title align-items-start flex-column">
																<span class="card-label fw-bold text-gray-800">Sent Messages</span>
															</h3>
															<!--end::Title-->
													</div>
														<!--end::Header-->
														<!--begin::Table container-->
													<div class="table-responsive px-5 align-items-center ">
														<!--begin::Table-->
														<table class="table table-row-dashed align-middle gs-0 gy-3 my-0">
															<!--begin::Table body-->
															<tbody>
																<tr>
																	<td>
																		<div class="d-flex align-items-center ps-5">
																			<div class="symbol symbol-50px me-3">
																				 <img src="/assets/img/home/german.webp" class="" alt="" />
																			</div>
																			<div class="d-flex justify-content-start flex-column">
																				<a href="apps/projects/users.html" class="text-gray-800 fw-bold text-hover-primary mb-1 fs-6">Germany</a>
																				<span class="text-gray-500 fw-semibold d-block fs-7">Today, 16:36</span>
																			</div>
																		</div>
																	</td>
																	<td class="text-end pe-2">
																		<!--begin::Label-->
																		<span class="badge badge-light-success fs-base p-2">115K</span>
																		<!--end::Label-->
																	</td>
																</tr>
																<tr>
																	<td>
																		<div class="d-flex align-items-center ps-5">
																			<div class="symbol symbol-50px me-3">
																				<img src="assets/img/home/japan.webp" class="" alt="" />
																			</div>
																			<div class="d-flex justify-content-start flex-column">
																				<a href="apps/projects/users.html" class="text-gray-800 fw-bold text-hover-primary mb-1 fs-6">Japan</a>
																				<span class="text-gray-500 fw-semibold d-block fs-7">Today, 08:49</span>
																			</div>
																		</div>
																	</td>
																	<td class="text-end pe-2">
																		<!--begin::Label-->
																		<span class="badge badge-light-danger fs-base p-2">27k</span>
																		<!--end::Label-->
																	</td>
																</tr>
																<tr>
																	<td>
																		<div class="d-flex align-items-center ps-5">
																			<div class="symbol symbol-50px me-3">
																				<img src="assets/img/home/netherland.webp" class="" alt="" />
																			</div>
																			<div class="d-flex justify-content-start flex-column">
																				<a href="apps/projects/users.html" class="text-gray-800 fw-bold text-hover-primary mb-1 fs-6">Netherland</a>
																				<span class="text-gray-500 fw-semibold d-block fs-7">Yesterday, 14:36</span>
																			</div>
																		</div>
																	</td>
																	<td class="text-end pe-2">
																		<!--begin::Label-->
																		<span class="badge badge-light-success fs-base p-2">5k</span>
																		<!--end::Label-->
																	</td>
																</tr>
															</tbody>
															<!--end::Table body-->
														</table>
													</div>
													<!--end::Table-->
													<!--begin::footer-->
													<div class="card-footer pt-5 d-flex justify-content-end mb-0">
															<!--begin::Title-->
															<h3 class="card-title align-items-start flex-column mb-0">
																<span class="card-label fw-bold d-flex align-items-center text-gray-800 fs-16 blue">View all
																  <i class="ki-duotone ki-arrow-right">
																	 <span class="path1 fs-25 blue"></span>
																	 <span class="path2 fs-25 blue"></span>
																  </i>
																</span>
															</h3>
															<!--end::Title-->
													</div>
														<!--end::footer-->
													</div>
													<!--end::Table Widget 10-->
												</div>
												<!--end::Col-->
											</div>
											<!--end::Row-->										
										</div>
										<!--end::Col-->
									</div>
									<!--end::Row-->
									<!--begin::Row-->
									<div class="row g-2 gx-xl-10">
										<!--begin::Col-->
										<div class="col-xl-4 mb-5 mb-xl-10">
											<!--begin::Table widget 9-->
											<div class="card card-flush shadow-xs">
												<!--begin::Header-->
												<div class="card-header pt-5">
													<!--begin::Title-->
													<h3 class="card-title align-items-start flex-column">
														<span class="card-label fw-bold text-gray-800">SMS Summary</span>
														<p class="gray fs-12 pt-1">From 1-6 Dec, 2020</p>
													</h3>
													
													<!--end::Title-->
													<!--begin::button-->
													<div class="card-toolbar">
														<a href="#" class="soft-blue fs-14 fw-bold pb-5 mb-5">View Report</a>
													</div>
													<!--end::button-->
												</div>
												<!--end::Header-->
												<div class="d-flex justify-content-center pt-1 mt-1">
													<canvas id="kt_chartjs_3" class="mh-300px mb-4"></canvas>
												</div>
											</div>
											<!--end::Table Widget 9-->
										</div>
										<!--end::Col-->
										<!--begin::Col-->
										<div class="col-xl-8 mb-5 mb-xl-10 flex-grow-1">
											<!--begin::Table widget 10-->
											<div class="card card-flush shadow-xs h-100">
												<div class="row gx-xl-10 p-5 h-100">
													<div class="col-xl-4 mb-5 flex-groiw-1">
														<div class="h-100 flex-column d-flex justify-content-between">
															<!--begin::Header-->
															<div class="p-5">
																<!--begin::Title-->
																<h2 class=" fw-bold text-gray-800">
																	Upgrade your plan now!
																</h2>
																<!--end::Title-->
																<p class="fs-14 mt-5 gray pt-2">
																	You don’t have to take our word for anything. Here, Try it now.
																</p>
															</div>
															<!--begin::button-->
															<div class="mt-5">
																<a href="#" class="btn btn-primary btn-grad mb-0">Upgrade now</a>
															</div>
															<!--end::button-->
														</div>
													</div>
													<div class="col-xl-7 mb-5 offset-1">
														<div class="text-center text-xl-center d-flex justify-content-end h-100 align-items-end">
															<img width="328" height="321" class="img-fluid" loading="lazy" src="assets/img/home/Image.webp" alt="" />
														</div>
													</div>
												</div>
											</div>
											<!--end::Table Widget 10-->
										</div>
										<!--end::Col-->
									</div>
									<!--end::Row-->
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


		<script>
			var element = document.getElementById('kt_apexcharts_3');
			var height = parseInt(KTUtil.css(element, 'height'));
			var labelColor = KTUtil.getCssVariableValue('--kt-gray-500');
			var borderColor = KTUtil.getCssVariableValue('--kt-gray-200');
			var baseColor = "#0E41C1";
			var lightColor = "rgba(14, 65, 193, .3)";

			// if (!element) {
			// 	return;
			// }

			var options = {
				series: [{
					name: 'Sent SMS',
					data: [30, 40, 40, 90, 90, 70, 15, 30, 25, 60, 40, 5]
				}],
				chart: {
					fontFamily: 'inherit',
					type: 'area',
					height: height,
					toolbar: {
						show: false
					}
				},
				plotOptions: {

				},
				legend: {
					show: false
				},
				dataLabels: {
					enabled: false
				},
				fill: {
					type: 'solid',
					opacity: 1
				},
				stroke: {
					curve: 'smooth',
					show: true,
					width: 3,
					colors: [baseColor]
				},
				xaxis: {
					categories: ['01', '02', '03', '04', '05', '06', '07', ' 08', '08', '10', '11', '12', '13'],
					axisBorder: {
						show: false,
					},
					axisTicks: {
						show: false
					},
					labels: {
						style: {
							colors: labelColor,
							fontSize: '12px'
						}
					},
					crosshairs: {
						position: 'front',
						stroke: {
							color: baseColor,
							width: 1,
							dashArray: 3
						}
					},
					tooltip: {
						enabled: true,
						formatter: undefined,
						offsetY: 0,
						style: {
							fontSize: '12px'
						}
					}
				},
				yaxis: {
					labels: {
						style: {
							colors: labelColor,
							fontSize: '12px'
						}
					}
				},
				states: {
					normal: {
						filter: {
							type: 'none',
							value: 0
						}
					},
					hover: {
						filter: {
							type: 'none',
							value: 0
						}
					},
					active: {
						allowMultipleDataPointsSelection: false,
						filter: {
							type: 'none',
							value: 0
						}
					}
				},
				tooltip: {
					style: {
						fontSize: '12px'
					},
					y: {
						formatter: function (val) {
							return val + ' SMS'
						}
					}
				},
				colors: [lightColor],
				grid: {
					borderColor: borderColor,
					strokeDashArray: 4,
					yaxis: {
						lines: {
							show: true
						}
					}
				},
				markers: {
					strokeColor: baseColor,
					strokeWidth: 3
				}
			};

			var chart = new ApexCharts(element, options);
			chart.render();



			var ctx = document.getElementById('kt_chartjs_3');

			// Define colors
			var primaryColor = KTUtil.getCssVariableValue('--kt-primary');
			var dangerColor = KTUtil.getCssVariableValue('--kt-danger');
			var successColor = KTUtil.getCssVariableValue('--kt-success');
			var warningColor = KTUtil.getCssVariableValue('--kt-warning');
			var infoColor = KTUtil.getCssVariableValue('--kt-info');

			// Define fonts
			var fontFamily = KTUtil.getCssVariableValue('--bs-font-sans-serif');

			// Chart labels
			const labels = ['Undelivered', 'Pending', 'Delivered'];

			// Chart data
			const data = {
				labels: labels,
				datasets: [{
					data: [40, 32, 28]
			}]
			};

			// Chart config
			const config = {
				type: 'pie',
				data: data,
				options: {
					plugins: {
						title: {
							display: false,
						}
					},
					responsive: true,
				},
				defaults:{
					global: {
						defaultFont: fontFamily
					}
				}
			};

			// Init ChartJS -- for more info, please visit: https://www.chartjs.org/docs/latest/
			var myChart = new Chart(ctx, config);


        </script>
	</body>
	<!--end::Body-->
</html>
