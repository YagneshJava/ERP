<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- <meta charset="utf-8"/> -->
<title>Offers Page</title>
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
		<link href="${pageContext.request.contextPath}/assets/css/sweetalert2.min.css" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/sidebar.css">

		<link	href="${pageContext.request.contextPath}/assets/jqgrid/css/ui.jqgrid-bootstrap.min.css"	rel="stylesheet" type="text/css" />
        <script src="${pageContext.request.contextPath}/assets/plugins/global/plugins.bundle.js"></script>
        <script src="${pageContext.request.contextPath}/assets/jqgrid/js/jquery.jqgrid.min.js"></script>
</head>
<body id="kt_body"
	class="header-fixed header-mobile-fixed sidebar-enabled aside-enabled aside-fixed aside-minimize-hoverable aside-minimize">
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
				<div class="content d-flex flex-column flex-column-fluid"
					id="kt_content">


					<!--begin::Subheader-->
					<div class="subheader py-2 py-lg-2 subheader-transparent"
						id="kt_subheader">
						<div
							class="container-fluid d-flex align-items-center justify-content-between flex-wrap flex-sm-nowrap">
							<!--begin::Info-->
							<div class="d-flex align-items-center flex-wrap mr-1">
								<!--begin::Page Heading-->
								<div class="d-flex align-items-baseline flex-wrap mr-5">
									<!--begin::Page Title-->
									<!--end::Page Title-->
									<!--begin::Breadcrumb-->
									<ul
										class="breadcrumb breadcrumb-transparent breadcrumb-dot font-weight-bold p-0 my-2 font-size-sm">
										<li class="breadcrumb-item text-muted"><a href="wellcomeCustomerPage"
											class="text-muted"> Dashboard </a></li>
											<li class="breadcrumb-item text-muted">
											<h5><a href="" class="text-dark font-weight-bold my-1 mr-5"> Offers </a></h5>
											</li>
									</ul>
									<!--end::Breadcrumb-->
								</div>
								<!--end::Page Heading-->
							</div>
							<!--end::Info-->

							<!--begin::Toolbar-->

							<!--end::Toolbar-->

						</div>
					</div>
					<!--end::Subheader-->
					
					
					
					
					
					
					
					<div class="d-flex flex-column-fluid">
					<input type="hidden" id="customerId" name="customerId" value="${sessionScope.userCompanyDetails.getId()}">
<!--begin::Container-->
								
<div class="container-fluid">

<!--begin::Content-->
<div class="row mt-0 mt-lg-4" id= "">
	<div class="col-xl-12">
	
					 <!--begin::Global Search-->
                                    <div class="quick-search quick-search-inline mb-10 w-28" id="kt_quick_search_inline">
                                        <!--begin::Form-->
                                        <form method="get" class="quick-search-form g-search" >
                                            <div class="input-group rounded bg-white input-group-lg g-search-box">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text">
                                                        <i class="flaticon2-search-1 icon-md"></i>
                                                    </span>
                                                </div>
                                                <input type="text" class="form-control h-40px search-form pl-3"   id="srchMain" name="srchMain" placeholder="Search Product...">
                                                <div class="input-group-append d-none">
                                                    <!--begin::Dropdown-->
                                                    <div class="dropdown dropdown-inline" title="Show Search Options">
                                                        <a href="#" class="btn btn-icon ml-3 h-40px w-40px flex-shrink-0" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" style="fill: #73737c;">
                                                                <path d="M3 17v2h6v-2H3zM3 5v2h10V5H3zm10 16v-2h8v-2h-8v-2h-2v6h2zM7 9v2H3v2h4v2h2V9H7zm14 4v-2H11v2h10zm-6-4h2V7h4V5h-4V3h-2v6z"></path>
                                                            </svg>
                                                            <!-- <span class="svg-icon svg-icon-2x"> -->
                                                                <!--begin::Svg Icon | path:C:\wamp64\www\keenthemes\legacy\metronic\theme\html\demo6\dist/../src/media/svg/icons\Shopping\Settings.svg-->
                                                                <!-- <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1"> -->
                                                                <!-- <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                                    <rect opacity="0.200000003" x="0" y="0" width="24" height="24"/>
                                                                    <path d="M4.5,7 L9.5,7 C10.3284271,7 11,7.67157288 11,8.5 C11,9.32842712 10.3284271,10 9.5,10 L4.5,10 C3.67157288,10 3,9.32842712 3,8.5 C3,7.67157288 3.67157288,7 4.5,7 Z M13.5,15 L18.5,15 C19.3284271,15 20,15.6715729 20,16.5 C20,17.3284271 19.3284271,18 18.5,18 L13.5,18 C12.6715729,18 12,17.3284271 12,16.5 C12,15.6715729 12.6715729,15 13.5,15 Z" fill="#000000" opacity="0.3"/>
                                                                    <path d="M17,11 C15.3431458,11 14,9.65685425 14,8 C14,6.34314575 15.3431458,5 17,5 C18.6568542,5 20,6.34314575 20,8 C20,9.65685425 18.6568542,11 17,11 Z M6,19 C4.34314575,19 3,17.6568542 3,16 C3,14.3431458 4.34314575,13 6,13 C7.65685425,13 9,14.3431458 9,16 C9,17.6568542 7.65685425,19 6,19 Z" fill="#000000"/>
                                                                </g>
                                                            </svg> -->
                                                            <!--end::Svg Icon-->
                                                            <!-- </span> -->
                                                        </a>
                                                        <div class="dropdown-menu dropdown-menu-xl dropdown-menu-right p-10 g-search-form" id ="srchHideShow">
                                                            <!--begin::Navigation-->

<!--                                                             <div class="input-group mb-3"> -->
<!--                                                                 <input type="text" id="srchProduct" name="srchProduct" class="form-control border-0 font-weight-bold pl-2 twitter-typeahead" placeholder=" Search Product "> -->
<!--                                                             </div> -->
                                                            
                                                            
															<button type="button" onclick="offerFilter()" class="btn btn-primary font-weight-bold btn-hover-light-primary  float-right  mt-3 mt-sm-0" id="searchBtn">
															Search</button>
                                                            <!--end::Navigation-->
                                                        </div>
                                                    </div>
                                                    <!--end::Dropdown-->
                                                </div>
                                            </div>
                                        </form>
                                        <!--end::Form-->
                                        <!--begin::Search Toggle-->
                                        <div id="kt_quick_search_toggle" data-toggle="dropdown" data-offset="0px,1px"></div>
                                        <!--end::Search Toggle-->
                                        <!--begin::Dropdown-->
                                        <div class="dropdown-menu dropdown-menu-right dropdown-menu-lg dropdown-menu-anim-up">
                                            <div class="quick-search-wrapper scroll ps" data-scroll="true" data-height="350" data-mobile-height="200" style="height: 350px; overflow: hidden;"><div class="ps__rail-x" style="left: 0px; bottom: 0px;"><div class="ps__thumb-x" tabindex="0" style="left: 0px; width: 0px;"></div></div><div class="ps__rail-y" style="top: 0px; right: 0px;"><div class="ps__thumb-y" tabindex="0" style="top: 0px; height: 0px;"></div></div></div>
                                        </div>
                                        <!--end::Dropdown-->
                                    </div>
                                 
						<!--end::Global Search-->
	
	
	<div class="card card-custom">
	
	<!--begin::Header-->
	<div class="card-header  py-5 pl-5 pr-5 pb-7 justify-content-end">

										<div class="bg-white effect1 rounded p-2 pr-3 pl-3 d-flex flex-grow-1 flex-sm-grow-0" style="display: none !important;">
											<!--begin::Form-->
											<form id="quotationSearchForm" class="form d-flex flex-sm-row flex-column flex-grow-1 flex-sm-grow-0">
															<!--begin::Input-->
																<div class="d-flex align-items-center py-3 py-sm-0 px-sm-3">
<!-- 																	<span class="svg-icon svg-icon-lg"> -->
<!-- 																		begin::Svg Icon | path:/metronic/theme/html/demo6/dist/assets/media/svg/icons/General/Search.svg -->
<!-- 																		<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1"> -->
<!-- 																			<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"> -->
<!-- 																				<rect x="0" y="0" width="24" height="24" /> -->
<!-- 																				<path d="M14.2928932,16.7071068 C13.9023689,16.3165825 13.9023689,15.6834175 14.2928932,15.2928932 C14.6834175,14.9023689 15.3165825,14.9023689 15.7071068,15.2928932 L19.7071068,19.2928932 C20.0976311,19.6834175 20.0976311,20.3165825 19.7071068,20.7071068 C19.3165825,21.0976311 18.6834175,21.0976311 18.2928932,20.7071068 L14.2928932,16.7071068 Z" fill="#000000" fill-rule="nonzero" opacity="0.3" /> -->
<!-- 																				<path d="M11,16 C13.7614237,16 16,13.7614237 16,11 C16,8.23857625 13.7614237,6 11,6 C8.23857625,6 6,8.23857625 6,11 C6,13.7614237 8.23857625,16 11,16 Z M11,18 C7.13400675,18 4,14.8659932 4,11 C4,7.13400675 7.13400675,4 11,4 C14.8659932,4 18,7.13400675 18,11 C18,14.8659932 14.8659932,18 11,18 Z" fill="#000000" fill-rule="nonzero" /> -->
<!-- 																			</g> -->
<!-- 																		</svg> -->
<!-- 																		end::Svg Icon -->
<!-- 																	</span> -->
<!-- 																	<input type="text" id="srchProduct" name="srchProduct" class="form-control border-0 font-weight-bold pl-2 twitter-typeahead" placeholder=" Search Product " /> -->
																	<input type="text" id="srchPipCode" name="srchPipCode" class="form-control border-0 font-weight-bold pl-2 twitter-typeahead" style = "display: none"/>
																</div>
																<!--end::Input-->


																<!--begin:: options Input-->
																<!--end::Input-->

																
																
																
																<button type="button" onclick="offerFilter()" class="btn btn-primary font-weight-bold btn-hover-light-primary   mt-3 mt-sm-0">
																	<i class="icon-lg la la-search"></i>
																</button>
															</form>
											<!--end::Form-->
										</div>
																
	
										<div class="card-toolbar">
										<h4><label  class = "pr-5 mt-4">Total</label></h4>
												<div class="input-group text-right rounded"
													style="width: 250px; ">
													
													
													<input type="text" class="form-control form-control-lg border-2" id="orderTotal" name="orderTotal" disabled="disabled">
													<div class="input-group-append ">	<button
															class="btn btn-light-success btn-lg px-6 font-weight-bold"
															type="button" onclick="makeOrder()" id="orderQtBtn">
															Order</button>
												</div>
												</div>
											</div>
									</div>
	<!--end::Header-->



			<!--begin::Body-->
			<div class="card-body">
			
				<!--begin: Search Form-->
				<div class="table-responsive">
											<table id="offerListGrid"></table>
											<div id ="offerListGridPager"></div>
				</div>

				<!--end::Table-->

	<div class="card-footer" >
												
<!-- 													<button type="button" class="btn btn-success " onclick = "orderPopUp()" id = "orderQtBtn"> Order </button> -->
												</div>

			</div>
			<!--end::Body-->
			
		</div>
		<!--end::Card-->


	</div>
	
</div>
	<!--end::Content-->

	
</div>
</div>
<jsp:include page="../footer.jsp"></jsp:include>
</div>

</div>

</div>

</div>
					<!--begin::Entry-->
					
	<!--end::Main-->

	<script>var KTAppSettings = { "breakpoints": { "sm": 576, "md": 768, "lg": 992, "xl": 1200, "xxl": 1200 }, "colors": { "theme": { "base": { "white": "#ffffff", "primary": "#8950FC", "secondary": "#E5EAEE", "success": "#1BC5BD", "info": "#8950FC", "warning": "#FFA800", "danger": "#F64E60", "light": "#F3F6F9", "dark": "#212121" }, "light": { "white": "#ffffff", "primary": "#E1E9FF", "secondary": "#ECF0F3", "success": "#C9F7F5", "info": "#EEE5FF", "warning": "#FFF4DE", "danger": "#FFE2E5", "light": "#F3F6F9", "dark": "#D6D6E0" }, "inverse": { "white": "#ffffff", "primary": "#ffffff", "secondary": "#212121", "success": "#ffffff", "info": "#ffffff", "warning": "#ffffff", "danger": "#ffffff", "light": "#464E5F", "dark": "#ffffff" } }, "gray": { "gray-100": "#F3F6F9", "gray-200": "#ECF0F3", "gray-300": "#E5EAEE", "gray-400": "#D6D6E0", "gray-500": "#B5B5C3", "gray-600": "#80808F", "gray-700": "#464E5F", "gray-800": "#1B283F", "gray-900": "#212121" } }, "font-family": "Poppins" };</script>
	<script src="${pageContext.request.contextPath}/assets/plugins/custom/prismjs/prismjs.bundle.js"></script>
	<script src="${pageContext.request.contextPath}/JS/jquery-ui.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/scripts.bundle.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/menu-scripts.bundle.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/pages/widgets.js"></script>
	<script src="${pageContext.request.contextPath}/assets/plugins/custom/datatables/datatables.bundle.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/pages/crud/forms/widgets/bootstrap-daterangepicker.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/pages/crud/file-upload/dropzonejs.js"></script>
	<script src="${pageContext.request.contextPath}/JS/tenderCommon.js"></script>
	<script src="${pageContext.request.contextPath}/JS/supplier/supplierOffers.js"></script>	
	
</body>
</html>
