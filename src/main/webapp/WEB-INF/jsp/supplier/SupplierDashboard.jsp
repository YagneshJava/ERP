<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<!--begin::Head-->
<head>
		
		<base href="">
		<meta charset="utf-8" />
		<title> Supplier Dashboard </title>
		<meta name="description" content="" />
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
		<link rel="canonical" href="" />

		<link rel="apple-touch-icon" sizes="180x180" href="${pageContext.request.contextPath}/assets/media/favicon/apple-touch-icon.png">
		<link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath}/assets/media/favicon/favicon-32x32.png">
		<link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath}/assets/media/favicon/favicon-16x16.png">
		<link rel="manifest" href="${pageContext.request.contextPath}/assets/media/favicon/site.webmanifest">
		<meta name="msapplication-TileColor" content="#da532c">
		<meta name="theme-color" content="#ffffff">

		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" />

		<link href="${pageContext.request.contextPath}/assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css" />

		<link href="${pageContext.request.contextPath}/assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
		<link href="${pageContext.request.contextPath}/assets/plugins/custom/prismjs/prismjs.bundle.css" rel="stylesheet" type="text/css" />
		<link href="${pageContext.request.contextPath}/assets/css/style.bundle.css" rel="stylesheet" type="text/css" />
		  <link href="${pageContext.request.contextPath}/assets/css/responsive.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/sidebar.css">	

        <script src="${pageContext.request.contextPath}/assets/plugins/global/plugins.bundle.js"></script>

</head>
<!--end::Head-->

<!--begin::Body-->
<body id="kt_body" class="header-fixed header-mobile-fixed sidebar-enabled aside-enabled aside-fixed aside-minimize-hoverable aside-minimize">
	<!--begin::Main-->

	<jsp:include page="../header.jsp"></jsp:include>

	<div class="d-flex flex-column flex-root bg-color">
		<!--begin::Page-->
		<div class="d-flex flex-row flex-column-fluid page">
			<jsp:include page="../sidebar.jsp"></jsp:include>
			<!--begin::Wrapper-->
			<div class="d-flex flex-column flex-row-fluid wrapper"
				id="kt_wrapper">

				<!--begin::Content-->
										
                    
                    	<!--begin::Entry-->
						<div class="d-flex flex-column-fluid">

							<!--begin::Container-->
							<div class="container-fluid">
								<!--begin::Dashboard-->
								<!--begin::Row-->
								<div class="row mt-0 mt-lg-4">
								
								<input type="hidden" id="supplierId" name="supplierId" value="${sessionScope.userCompanyDetails.getId()}">
								<input type="hidden" id="dashBoardAddressId" name="dashBoardAddressId">
									<div class="col-xl-6">
										<!--begin::Card-->
										<div class="card card-custom gutter-b">
											<div class="card-header">
												<div class="card-title">
													<h3 class="card-label font-weight-bolder text-dark">Ordered & Won Lines</h3>
												</div>
											</div>
											<div class="card-body">
												<!--begin::Chart-->
												<div id="SupplierPurchaseAndSavingChart"></div>
												<!--end::Chart-->
											</div>
										</div>
										<!--end::Card-->
									</div>

                                    
                                    
                                   <div class="col-xl-6">
										<!--begin::Card-->
										<div class="card card-custom gutter-b">
											<div class="card-header">
												<div class="card-title">
													<h3 class="card-label font-weight-bolder text-dark">Quoted & Won Lines</h3>
												</div>
											</div>
											<div class="card-body">
												<!--begin::Chart-->
												<div id="SupplierQuatedAndOrderChart"></div>
												<!--end::Chart-->
											</div>
										</div>
										<!--end::Card-->
									</div>
                                    

								</div>
								<!--end::Row-->

								<!--begin::Row-->
								<div class="row">
								 <div class="col-xl-4">
										<!--begin::Card-->
										<div class="card card-custom card-stretch gutter-b">
											<div class="card-header">
												<div class="card-title">
													<h3 class="card-label font-weight-bolder text-dark">Quotation Status</h3>
												</div>
											</div>
											<div class="card-body">
												<!--begin::Chart-->
												<div id="SupplierOrderStatusChart"></div>
												<!--end::Chart-->
											</div>
										</div>
										<!--end::Card-->
									</div>
									
									
									<div class="col-xl-8">
										<!--begin::Base Table Widget 5-->
										<div class="card card-custom card-stretch gutter-b">
										
											<!--begin::Header-->
											<div class="card-header border-0 pt-5">
												<h3 class="card-title align-items-start flex-column">
													<span class="card-label font-weight-bolder text-dark "> Open Quotation </span>
												</h3>
											</div>
											<!--end::Header-->

											<!--begin::Body-->
											<div class="card-body pt-2 pb-5 mt-3">
												<table class="table  table-hover  table-checkable nowrap" id="quotationHeadDataTable">
												</table>
												<!--end::Table-->
											</div>
											<!--end::Body-->
										</div>
										<!--end::Base Table Widget 5-->
									</div>
								</div>
								<!--end::Row-->

								<!--end::Dashboard-->
                                
							</div>
							<!--end::Container-->
						</div>
						<!--end::Entry-->

				<!--end::Content-->

				<jsp:include page="../footer.jsp"></jsp:include>

			</div>
			<!--end::Wrapper-->
			
			<!--begin::Aside Secondary-->
				<div class="sidebar sidebar-right d-flex flex-row-auto flex-column" id="kt_sidebar">
					
					<!--begin::Aside Secondary Content-->
					<div class="sidebar-content flex-column-fluid pb-10 pt-9 px-5 px-lg-10">
						<!--begin: Stats Widget 19-->
						<div class="card card-custom bg-light-success gutter-b">
							<!--begin::Body-->
							<div class="card-body my-3">
								<a href="#" class="card-title font-weight-bolder text-success text-hover-state-dark font-size-h6 mb-4 d-block">SAP UI Progress</a>
								<div class="font-weight-bold text-muted font-size-sm">
								<span class="text-dark-75 font-size-h2 font-weight-bolder mr-2">67%</span>Average</div>
								<div class="progress progress-xs mt-7 bg-success-o-60">
									<div class="progress-bar bg-success" role="progressbar" style="width: 67%;" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
								</div>
							</div>
							<!--end:: Body-->
						</div>
						<!--end: Stats:Widget 19-->
						<!--begin::Stats Widget 20-->
						<div class="card card-custom bg-light-warning gutter-b">
							<!--begin::Body-->
							<div class="card-body my-4">
								<a href="#" class="card-title font-weight-bolder text-warning font-size-h6 mb-4 text-hover-state-dark d-block">Airplus Budget</a>
								<div class="font-weight-bold text-muted font-size-sm">
								<span class="text-dark-75 font-weight-bolder font-size-h2 mr-2">87K%</span>23k to goal</div>
								<div class="progress progress-xs mt-7 bg-warning-o-60">
									<div class="progress-bar bg-warning" role="progressbar" style="width: 87%;" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
								</div>
							</div>
							<!--end::Body-->
						</div>
						<!--end::Stats Widget 20-->
						<!--begin::Stats Widget 20-->
						<div class="card card-custom bg-light-danger gutter-b">
							<!--begin::Body-->
							<div class="card-body my-4">
								<a href="#" class="card-title font-weight-bolder text-danger font-size-h6 mb-4 text-hover-state-dark d-block">Airplus Budget</a>
								<div class="font-weight-bold text-muted font-size-sm">
								<span class="text-dark-75 font-weight-bolder font-size-h2 mr-2">87K%</span>23k to goal</div>
								<div class="progress progress-xs mt-7 bg-danger-o-60">
									<div class="progress-bar bg-danger" role="progressbar" style="width: 87%;" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
								</div>
							</div>
							<!--end::Body-->
						</div>
						<!--end::Stats Widget 20-->
						<!--begin::Stats Widget 20-->
						<div class="card card-custom bg-light-info gutter-b">
							<!--begin::Body-->
							<div class="card-body my-4">
								<a href="#" class="card-title font-weight-bolder text-info font-size-h6 mb-4 text-hover-state-dark d-block">Airplus Budget</a>
								<div class="font-weight-bold text-muted font-size-sm">
								<span class="text-dark-75 font-weight-bolder font-size-h2 mr-2">87K%</span>23k to goal</div>
								<div class="progress progress-xs mt-7 bg-info-o-60">
									<div class="progress-bar bg-info" role="progressbar" style="width: 87%;" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
								</div>
							</div>
							<!--end::Body-->
						</div>
						<!--end::Stats Widget 20-->
						<!--begin::Stats Widget 20-->
						<div class="card card-custom bg-light-blue gutter-b">
							<!--begin::Body-->
							<div class="card-body my-4">
								<a href="#" class="card-title font-weight-bolder text-blue font-size-h6 mb-4 text-hover-state-dark d-block">Airplus Budget</a>
								<div class="font-weight-bold text-muted font-size-sm">
								<span class="text-dark-75 font-weight-bolder font-size-h2 mr-2">87K%</span>23k to goal</div>
								<div class="progress progress-xs mt-7 bg-blue-o-60">
									<div class="progress-bar bg-blue" role="progressbar" style="width: 87%;" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
								</div>
							</div>
							<!--end::Body-->
						</div>
						<!--end::Stats Widget 20-->
					</div>
					<!--end::Aside Secondary Content-->
				</div>
				<!--end::Aside Secondary-->

		</div>
		<!--end::Page-->
	</div>
	<!--end::Main-->

		<!--begin::Global Config(global config for global JS scripts)-->
		<script>var KTAppSettings = { "breakpoints": { "sm": 576, "md": 768, "lg": 992, "xl": 1200, "xxl": 1200 }, "colors": { "theme": { "base": { "white": "#ffffff", "primary": "#8950FC", "secondary": "#E5EAEE", "success": "#1BC5BD", "info": "#8950FC", "warning": "#FFA800", "danger": "#F64E60", "light": "#F3F6F9", "dark": "#212121" }, "light": { "white": "#ffffff", "primary": "#E1E9FF", "secondary": "#ECF0F3", "success": "#C9F7F5", "info": "#EEE5FF", "warning": "#FFF4DE", "danger": "#FFE2E5", "light": "#F3F6F9", "dark": "#D6D6E0" }, "inverse": { "white": "#ffffff", "primary": "#ffffff", "secondary": "#212121", "success": "#ffffff", "info": "#ffffff", "warning": "#ffffff", "danger": "#ffffff", "light": "#464E5F", "dark": "#ffffff" } }, "gray": { "gray-100": "#F3F6F9", "gray-200": "#ECF0F3", "gray-300": "#E5EAEE", "gray-400": "#D6D6E0", "gray-500": "#B5B5C3", "gray-600": "#80808F", "gray-700": "#464E5F", "gray-800": "#1B283F", "gray-900": "#212121" } }, "font-family": "Poppins" };</script>
		<!--end::Global Config-->
		
		<script src="${pageContext.request.contextPath}/assets/plugins/custom/prismjs/prismjs.bundle.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/scripts.bundle.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/menu-scripts.bundle.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/pages/widgets.js"></script>
		<script src="${pageContext.request.contextPath}/assets/plugins/custom/flot/flot.bundle.js"></script>
		<!--end::Page Vendors-->
		<!--begin::Page Scripts(used by this page)-->
		<script src="${pageContext.request.contextPath}/assets/js/pages/features/charts/flotcharts.js"></script>
				<!--begin::Page Vendors(used by this page)-->
				
						<!--begin::Page Scripts(used by this page)-->
		<script src="${pageContext.request.contextPath}/assets/plugins/custom/datatables/datatables.bundle.js"></script>
		
<%-- 		<script src="${pageContext.request.contextPath}/assets/js/pages/features/charts/apexcharts.js"></script> --%>
		<script src="${pageContext.request.contextPath}/JS/supplier/supplierDashboard.js"></script>
		<script src="${pageContext.request.contextPath}/JS/tenderCommon.js"></script>
		
		
		<script type="text/javascript">
			$(document).ready(function(){
				$(".menu-item").removeClass('menu-item-here');
				$("#supplierDashboardLI").addClass('menu-item-here');
			});
		</script>
		
</body>
<!--end::Body-->
</html>
