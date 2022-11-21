<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<!--begin::Head-->
<head>


    <base href="">
    <meta charset="utf-8" />
    <title> Supplier Orders </title>
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
    <link href="${pageContext.request.contextPath}/assets/css/chat.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/sidebar.css">
    <link href="${pageContext.request.contextPath}/assets/jqgrid/css/ui.jqgrid-bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="${pageContext.request.contextPath}/assets/plugins/global/plugins.bundle.js"></script>
    <script src="${pageContext.request.contextPath}/assets/jqgrid/js/jquery.jqgrid.min.js"></script>

	<style type="text/css">
		.remove_br br {
			display: none;
		}
	</style>


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
            <div class="d-flex flex-column flex-row-fluid wrapper" id="kt_wrapper">

                <!--begin::Content-->
                <div class="content d-flex flex-column flex-column-fluid" id="kt_content">


                    <!--begin::Subheader-->
                    <div class="subheader py-2 py-lg-2 subheader-transparent" id="kt_subheader">
                        <div class="container-fluid d-flex align-items-center justify-content-between flex-wrap flex-sm-nowrap">
                            <!--begin::Info-->
                            <div class="d-flex align-items-center flex-wrap mr-1">
                                <!--begin::Page Heading-->
                                <div class="d-flex align-items-baseline flex-wrap mr-5">
                                    <!--begin::Page Title-->
                                    <!-- 									<h5 class="text-dark font-weight-bold my-1 mr-5">Supplier Order</h5> -->
                                    <!--end::Page Title-->
                                    <!--begin::Breadcrumb-->
                                    <ul class="breadcrumb breadcrumb-transparent breadcrumb-dot font-weight-bold p-0 my-2 font-size-sm">
                                        <li class="breadcrumb-item text-muted"><a href="wellcomeSupplierPage" class="text-muted"> Dashboard
										</a></li>
                                        <li class="breadcrumb-item text-muted">
                                            <h5>
                                                <a href="supplierOrderConfirmation" class="text-dark font-weight-bold"> My Order / Order History </a>
                                            </h5>
                                        </li>
                                    </ul>
                                    <!--end::Breadcrumb-->
                                </div>
                                <!--end::Page Heading-->
                            </div>
                            <!--end::Info-->

                            <!--begin::Toolbar-->
                            <div class="card-toolbar" style="display: none;">
                                <a onclick="manageView()" class="btn btn-icon btn-sm btn-danger" data-toggle="tooltip" data-placement="top" title="Back" id="backBtn" style="display: none">
                                    <span class="svg-icon  svg-icon-2x">
															<!--begin::Svg Icon | path:C:\wamp64\www\keenthemes\legacy\metronic\theme\html\demo6\dist/../src/media/svg/icons\Navigation\Left-2.svg-->
															<svg xmlns="http://www.w3.org/2000/svg"
																xmlns:xlink="http://www.w3.org/1999/xlink" width="24px"
																height="24px" viewBox="0 0 24 24" version="1.1">
															<g stroke="none" stroke-width="1" fill="none"
																	fill-rule="evenodd">
																<polygon points="0 0 24 0 24 24 0 24" />
																<rect fill="#000000" opacity="0.3"
																	transform="translate(15.000000, 12.000000) scale(-1, 1) rotate(-90.000000) translate(-15.000000, -12.000000) "
																	x="14" y="7" width="2" height="10" rx="1" />
																<path
																	d="M3.7071045,15.7071045 C3.3165802,16.0976288 2.68341522,16.0976288 2.29289093,15.7071045 C1.90236664,15.3165802 1.90236664,14.6834152 2.29289093,14.2928909 L8.29289093,8.29289093 C8.67146987,7.914312 9.28105631,7.90106637 9.67572234,8.26284357 L15.6757223,13.7628436 C16.0828413,14.136036 16.1103443,14.7686034 15.7371519,15.1757223 C15.3639594,15.5828413 14.7313921,15.6103443 14.3242731,15.2371519 L9.03007346,10.3841355 L3.7071045,15.7071045 Z"
																	fill="#000000" fill-rule="nonzero"
																	transform="translate(9.000001, 11.999997) scale(-1, -1) rotate(90.000000) translate(-9.000001, -11.999997) " />
															</g>
														</svg>
															<!--end::Svg Icon-->
													</span>
                                </a>
                            </div>
                            <!--end::Toolbar-->

                        </div>
                    </div>
                    <!--end::Subheader-->
                    
               


                    <div class="d-flex flex-column-fluid">

                        <!--begin::Container-->
                        <div class="container-fluid">
                            <input type="hidden" id="supplierId" name="supplierId" value="${sessionScope.userCompanyDetails.getId()}">
                            <!--begin::Content-->
                            <div class="row mt-0 mt-lg-4" id="supplierConfirmOrderDiv">
                                <div class="col-xl-12">

     
                    <!--begin::Global Search-->
                                    <div id="quotationSearchForm" class="quick-search quick-search-inline mb-10 w-28" id="kt_quick_search_inline">
                                        <!--begin::Form-->
                                        <form method="get" class="quick-search-form g-search">
                                            <div class="input-group rounded bg-white input-group-lg g-search-box">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text">
                                                        <i class="flaticon2-search-1 icon-md"></i>
                                                    </span>
                                                </div>
                                                <input type="text" class="form-control h-40px search-form pl-3" placeholder="Search..." id = "srchMain">
                                                <div class="input-group-append">
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

                                                            <div class="input-group mb-3">
                                                                <input type="text" id="srchQuotationId" name="srchQuotationId" class="form-control border-2 font-weight-bold pl-2" placeholder="Quotation ID">
                                                            </div>
                                                            
                                                            
                                                            <div class="input-group mb-3">
                                                                <input type="text" id="srchOrderId" name="srchOrderId" class="form-control border-0 font-weight-bold pl-2" placeholder="Order ID">
                                                            </div>
                                                            <div class="input-group mb-3">
                                                                <input type="text" id="srchCustomerId" name="srchCustomerId" class="form-control border-0 font-weight-bold pl-2" placeholder="Customer ID">
                                                            </div>
                                                            
                                                            
                                                             <div class="input-group mb-3">
                                                                <select id="srchDateType" name="srchDateType" style="width: auto" class="form-control border-0 font-weight-bold pl-2" >
																	<option value="" selected="">Select Date Type</option>
																	<option value="QUOTATIONDATE">Order Date</option>
																</select>
                                                            </div>
                                                            
                                                            <div class="input-group input-icon input-icon-right mb-3">
                                                                <div id="suppOrdDateRange" class="w-100" style="border-bottom-right-radius: 0.675rem !important; border-top-right-radius: 0.675rem !important;">
                                                                    <input id="srchStartEndDate" type="text" class="form-control border-2 font-weight-bold pl-2" placeholder="From Date &amp; To Date" data-toggle="modal" aria-haspopup="true" aria-expanded="false" data-target="#subheader7Modal" readonly="readonly">
                                                                    
                                                                    <span>
                                                                        <i class="icon-lg la la-calendar"></i>
                                                                    </span>
                                                                </div>
                                                            </div>

															<button type="button" onclick="getConfirmedOrderData()" class="btn btn-primary font-weight-bold btn-hover-light-primary  float-right  mt-3 mt-sm-0" id="searchBtn">
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
                    

                                    <!--begin::Card-->
                                    <div class="card card-custom">

                                        <div class="card-header flex-wrap py-5 d-none">
                                            <div class="bg-white effect1 rounded p-2 pr-3 pl-3 d-flex flex-grow-1 flex-sm-grow-0">
                                                <!--begin::Form-->
                                                <form id="quotationSearchForm" class="form d-flex flex-sm-row flex-column flex-grow-1 flex-sm-grow-0">
                                                 <!--begin::Input-->
                                                    <div class="d-flex align-items-center py-3 py-sm-0 px-sm-3">
                                                        <span class="svg-icon svg-icon-lg"> <!--begin::Svg Icon | path:/metronic/theme/html/demo6/dist/assets/media/svg/icons/General/Search.svg-->
															<svg xmlns="http://www.w3.org/2000/svg"
																xmlns:xlink="http://www.w3.org/1999/xlink" width="24px"
																height="24px" viewBox="0 0 24 24" version="1.1">
																			<g stroke="none" stroke-width="1" fill="none"
																	fill-rule="evenodd">
																				<rect x="0" y="0" width="24" height="24" />
																				<path
																	d="M14.2928932,16.7071068 C13.9023689,16.3165825 13.9023689,15.6834175 14.2928932,15.2928932 C14.6834175,14.9023689 15.3165825,14.9023689 15.7071068,15.2928932 L19.7071068,19.2928932 C20.0976311,19.6834175 20.0976311,20.3165825 19.7071068,20.7071068 C19.3165825,21.0976311 18.6834175,21.0976311 18.2928932,20.7071068 L14.2928932,16.7071068 Z"
																	fill="#000000" fill-rule="nonzero" opacity="0.3" />
																				<path
																	d="M11,16 C13.7614237,16 16,13.7614237 16,11 C16,8.23857625 13.7614237,6 11,6 C8.23857625,6 6,8.23857625 6,11 C6,13.7614237 8.23857625,16 11,16 Z M11,18 C7.13400675,18 4,14.8659932 4,11 C4,7.13400675 7.13400675,4 11,4 C14.8659932,4 18,7.13400675 18,11 C18,14.8659932 14.8659932,18 11,18 Z"
																	fill="#000000" fill-rule="nonzero" />
																			</g>
																		</svg> <!--end::Svg Icon-->
														</span> <input type="text" id="srchQuotationId" name="srchQuotationId" class="form-control border-0 font-weight-bold pl-2" placeholder="Quotation ID" />
                                                    </div>
                                                    <!--end::Input-->
                                                     <!--begin::Input-->
                                                    <div class="d-flex align-items-center py-3 py-sm-0 px-sm-3">
                                                        <span class="bullet bullet-ver h-25px d-none d-sm-flex mr-2"></span>
                                                        <span class="svg-icon svg-icon-lg"> <!--begin::Svg Icon | path:/metronic/theme/html/demo6/dist/assets/media/svg/icons/General/Search.svg-->
															<svg xmlns="http://www.w3.org/2000/svg"
																xmlns:xlink="http://www.w3.org/1999/xlink" width="24px"
																height="24px" viewBox="0 0 24 24" version="1.1">
																			<g stroke="none" stroke-width="1" fill="none"
																	fill-rule="evenodd">
																				<rect x="0" y="0" width="24" height="24" />
																				<path
																	d="M14.2928932,16.7071068 C13.9023689,16.3165825 13.9023689,15.6834175 14.2928932,15.2928932 C14.6834175,14.9023689 15.3165825,14.9023689 15.7071068,15.2928932 L19.7071068,19.2928932 C20.0976311,19.6834175 20.0976311,20.3165825 19.7071068,20.7071068 C19.3165825,21.0976311 18.6834175,21.0976311 18.2928932,20.7071068 L14.2928932,16.7071068 Z"
																	fill="#000000" fill-rule="nonzero" opacity="0.3" />
																				<path
																	d="M11,16 C13.7614237,16 16,13.7614237 16,11 C16,8.23857625 13.7614237,6 11,6 C8.23857625,6 6,8.23857625 6,11 C6,13.7614237 8.23857625,16 11,16 Z M11,18 C7.13400675,18 4,14.8659932 4,11 C4,7.13400675 7.13400675,4 11,4 C14.8659932,4 18,7.13400675 18,11 C18,14.8659932 14.8659932,18 11,18 Z"
																	fill="#000000" fill-rule="nonzero" />
																			</g>
																		</svg> <!--end::Svg Icon-->
														</span> <input type="text" id="srchOrderId" name="srchOrderId" class="form-control border-0 font-weight-bold pl-2" placeholder="Order ID" />
                                                    </div>
                                                    <!--end::Input-->
                                                    <!--begin::Input-->
                                                    <div class="d-flex align-items-center py-3 py-sm-0 px-sm-3">
                                                        <span class="bullet bullet-ver h-25px d-none d-sm-flex mr-2"></span>
                                                        <span class="svg-icon svg-icon-lg"> <!--begin::Svg Icon | path:/metronic/theme/html/demo6/dist/assets/media/svg/icons/General/Search.svg-->
															<svg xmlns="http://www.w3.org/2000/svg"
																xmlns:xlink="http://www.w3.org/1999/xlink" width="24px"
																height="24px" viewBox="0 0 24 24" version="1.1">
																			<g stroke="none" stroke-width="1" fill="none"
																	fill-rule="evenodd">
																				<rect x="0" y="0" width="24" height="24" />
																				<path
																	d="M14.2928932,16.7071068 C13.9023689,16.3165825 13.9023689,15.6834175 14.2928932,15.2928932 C14.6834175,14.9023689 15.3165825,14.9023689 15.7071068,15.2928932 L19.7071068,19.2928932 C20.0976311,19.6834175 20.0976311,20.3165825 19.7071068,20.7071068 C19.3165825,21.0976311 18.6834175,21.0976311 18.2928932,20.7071068 L14.2928932,16.7071068 Z"
																	fill="#000000" fill-rule="nonzero" opacity="0.3" />
																				<path
																	d="M11,16 C13.7614237,16 16,13.7614237 16,11 C16,8.23857625 13.7614237,6 11,6 C8.23857625,6 6,8.23857625 6,11 C6,13.7614237 8.23857625,16 11,16 Z M11,18 C7.13400675,18 4,14.8659932 4,11 C4,7.13400675 7.13400675,4 11,4 C14.8659932,4 18,7.13400675 18,11 C18,14.8659932 14.8659932,18 11,18 Z"
																	fill="#000000" fill-rule="nonzero" />
																			</g>
																		</svg> <!--end::Svg Icon-->
														</span> <input type="text" id="srchCustomerId" name="srchCustomerId" class="form-control border-0 font-weight-bold pl-2" placeholder="Customer ID" />
                                                    </div>
                                                    <!--end::Input-->
                                                   


                                                    <!--begin:: options Input-->
                                                    <div class="d-flex align-items-center py-3 py-sm-0 px-sm-3">
                                                        <span class="bullet bullet-ver h-25px d-none d-sm-flex mr-2"></span>
                                                        <span class="svg-icon svg-icon-lg"> <!--begin::Svg Icon | path:/metronic/theme/html/demo6/dist/assets/media/svg/icons/Layout/Layout-4-blocks.svg-->
															<svg xmlns="http://www.w3.org/2000/svg"
																xmlns:xlink="http://www.w3.org/1999/xlink" width="24px"
																height="24px" viewBox="0 0 24 24" version="1.1">
																			<g stroke="none" stroke-width="1" fill="none"
																	fill-rule="evenodd">
																				<rect x="0" y="0" width="24" height="24" />
																				<rect fill="#000000" x="4" y="4" width="7"
																	height="7" rx="1.5" />
																				<path
																	d="M5.5,13 L9.5,13 C10.3284271,13 11,13.6715729 11,14.5 L11,18.5 C11,19.3284271 10.3284271,20 9.5,20 L5.5,20 C4.67157288,20 4,19.3284271 4,18.5 L4,14.5 C4,13.6715729 4.67157288,13 5.5,13 Z M14.5,4 L18.5,4 C19.3284271,4 20,4.67157288 20,5.5 L20,9.5 C20,10.3284271 19.3284271,11 18.5,11 L14.5,11 C13.6715729,11 13,10.3284271 13,9.5 L13,5.5 C13,4.67157288 13.6715729,4 14.5,4 Z M14.5,13 L18.5,13 C19.3284271,13 20,13.6715729 20,14.5 L20,18.5 C20,19.3284271 19.3284271,20 18.5,20 L14.5,20 C13.6715729,20 13,19.3284271 13,18.5 L13,14.5 C13,13.6715729 13.6715729,13 14.5,13 Z"
																	fill="#000000" opacity="0.3" />
																			</g>
																		</svg> <!--end::Svg Icon-->
														</span> <select id="srchDateType" name="srchDateType" style="width: auto" class="form-control border-0 font-weight-bold pl-2">
															<option value="" selected>Select Date Type</option>
															<option value="PODATE">Order Date</option>
														</select>
                                                    </div>
                                                    <!--end::Input-->


                                                    <!--begin::Input-->
                                                    <div id='suppOrdDateRange' class="d-flex align-items-center py-3 py-sm-0 px-sm-3">
                                                        <span class="bullet bullet-ver h-25px d-none d-sm-flex mr-2"></span>
                                                        <i class="icon-xl la la-calendar"></i> <input id="srchStartEndDate" type="text" class="form-control border-0 font-weight-bold pl-2" placeholder="From Date & To Date" data-toggle="modal" aria-haspopup="true"
                                                            aria-expanded="false" data-target="#subheader7Modal" readonly="readonly" />
                                                    </div>
                                                    <!--end::Input-->

                                                    <button type="button" onclick="getConfirmedOrderData()" class="btn btn-primary font-weight-bold btn-hover-light-primary   mt-3 mt-sm-0">
														<i class="icon-lg la la-search"></i>
													</button>
                                                </form>
                                                <!--end::Form-->
                                            </div>
                                        </div>

                                        <!--begin::Body-->
                                        <div class="card-body">
                                            <!--begin::Table-->
                                            <table id="supplierConfirmOrderGrid"></table>
                                            <div id="supplierConfirmOrderPager"></div>
                                            <!--end::Table-->

                                            <!--end: Datatable-->

                                        </div>
                                        <!--end::Body-->
                                    </div>
                                    <!--end::Card-->

                                </div>
                            </div>
                            <!--end::Content-->


                            <!--begin::  edit-tender.html -->
                            <div id="supplierConfirmOrderDataDiv" style="display: none">
                            
                            
<!--                             <div class="row"> -->
                            
<!--                             	<div class="col-lg-2 col-xl-2 mb-5"> -->
<!-- 										begin::Iconbox -->
<!-- 										<div class="card card-custom  bg-success card-stretch gutter-b"> -->
<!-- 											<div class="card-body"> -->
<!-- 												<div class="d-flex align-items-center"> -->
													
<!-- 													<div class="d-flex flex-column" style="line-height: 0; margin-bottom: -12px;"> -->
<!-- 														<p class="card-title font-weight-bolder text-white text-hover-state-dark  mb-4 d-block"> Delivery Date </p> -->
<!-- 	                                                	<input type="text" class="text-white font-size-h4 font-weight-bolder mr-2 w-100" style="border: 0;background-color: #14c4bc;" disabled="disabled"  id="savedDeliveryDate" name="savedDeliveryDate" > -->
<!--                                           			</div> -->
<!-- 												</div> -->
<!-- 											</div> -->
<!-- 										</div> -->
<!-- 										end::Iconbox -->
<!-- 									</div> -->
									
<!-- 										<div class="col-lg-4 col-xl-4 mb-5"> -->
<!-- 										begin::Iconbox -->
<!-- 										<div class="card card-custom  bg-info card-stretch gutter-b"> -->
<!-- 											<div class="card-body"> -->
<!-- 												<div class="d-flex align-items-center"> -->
													
<!-- 													<div class="d-flex flex-column" style="line-height: 0; margin-bottom: -12px;"> -->
<!-- 														<p class="card-title font-weight-bolder text-white text-hover-state-dark  mb-4 d-block"> Customer Name </p> -->
<!-- 	                                                	<input type="text" class="text-white font-size-h4 font-weight-bolder mr-2 w-100" style="border: 0;background-color: #8c53f7;" disabled="disabled" id="savedCustomerName" name="savedCustomerName"> -->
<!--                                           			</div> -->
<!-- 												</div> -->
<!-- 											</div> -->
<!-- 										</div> -->
<!-- 										end::Iconbox -->
<!-- 									</div> -->
									
<!-- 									<div class="col-lg-6 col-xl-6 mb-5"> -->
<!-- 										begin::Iconbox -->
<!-- 										<div class="card card-custom  bg-danger card-stretch gutter-b"> -->
<!-- 											<div class="card-body"> -->
<!-- 												<div class="d-flex align-items-center"> -->
													
<!-- 													<div class="d-flex flex-column" style="line-height: 0; margin-bottom: -12px;"> -->
<!-- 														<p class="card-title font-weight-bolder text-white text-hover-state-dark  mb-4 d-block"> Delivery Address </p> -->
	                                                	
<!-- 	                                                	<span class="remove_br text-white font-size-h4 font-weight-bolder mr-2 pt-5 mb-4" disabled="disabled" style="border: 0;" id="savedAddress" ></span> -->
<!--                                           			</div> -->
<!-- 												</div> -->
<!-- 											</div> -->
<!-- 										</div> -->
<!-- 										end::Iconbox -->
<!-- 									</div> -->
									
<!--                             </div> -->
                            
                            
                            
                            
                            
                            
                            
                            
                         
                                <!--begin::Content-->
                                <div class="row mt-0 mt-lg-4">
                                    <div class="col-xl-12">

                                        <!--begin::Card-->
                                        <div class="card card-custom">
                                            <div class="card-header py-5">
                                                <h3 class="card-title ">
                                                    Order ID: <span class="font-weight-bold pl-1 text-primary" id="orderInfoId"> </span>
                                                </h3>

                                            </div>
                                            <!--begin::Body-->
                                            <div class="card-body">
                                            	<div class="table-responsive">
	                                                <table id="supplierConfirmOrderDataGrid"></table>
	                                                <div id="supplierConfirmOrderDataPager"></div>
	                                            </div>
                                                <div class="card-footer">
                                                <button type="button" class="btn btn-warning mr-2" onclick="manageView()"> Back </button>
                                                </div>
                                            </div>

                                            <!--end::Body-->
                                        </div>
                                        <!--end::Card-->

                                    </div>
                                </div>
                                <!--end::Content-->

                            </div>
                            <!--end::Entry-->

                        </div>

                    </div>
                    <jsp:include page="../footer.jsp"></jsp:include>
                </div>

            </div>
            
            
             <!--begin::Aside Secondary-->
            <div class="sidebar sidebar-right d-flex flex-row-auto flex-column"   id="kt_sidebar"  style="display: none !important;">
            
					
					<!--begin::Aside Secondary Content-->
					<div class="sidebar-content flex-column-fluid pb-10 pt-9 px-5 px-lg-10">
				
						
						<!--begin::Stats Widget 20-->
						<div class="card card-custom bg-light-danger gutter-b">
							<!--begin::Body-->
							<div class="card-body my-2">
								<p class="card-title font-weight-bolder text-danger font-size-h6 mb-4 text-hover-state-dark d-block"> Delivery Date </p>
	                            <input type="text" class="text-dark-75 font-weight-bolder font-size-h2 mr-2 w-100 bg-transparent" style="border: 0;" disabled="disabled" id="savedDeliveryDate" name="savedDeliveryDate">
                            </div>
							<!--end::Body-->
						</div>
						<!--end::Stats Widget 20-->
						<!--begin::Stats Widget 20-->
						<div class="card card-custom bg-light-info gutter-b">
							<!--begin::Body-->
							<div class="card-body my-2">
								<p class="card-title font-weight-bolder text-info font-size-h6 mb-4 text-hover-state-dark d-block"> Customer Name </p>
	                            <input type="text" class="text-dark-75 font-weight-bolder font-size-h2 mr-2 w-100 bg-transparent" style="border: 0;" disabled="disabled" id="savedCustomerName" name="savedCustomerName">
                            </div>
							<!--end::Body-->
						</div>
						<!--end::Stats Widget 20-->
						<!--begin::Stats Widget 20-->
						<div class="card card-custom bg-light-blue gutter-b">
							<!--begin::Body-->
							<div class="card-body my-2">	
								<p class="card-title font-weight-bolder text-blue font-size-h6 mb-4 text-hover-state-dark d-block"> Customer Address </p>
	                            <span class="text-dark-75 font-weight-bolder font-size-h2 mr-2 w-100 bg-transparent" style="border: 0;background-color: #f75163;" disabled="disabled" id="savedAddress"></span>
                           </div>
							<!--end::Body-->
						</div>
						<!--end::Stats Widget 20-->
					</div>
					<!--end::Aside Secondary Content-->
				</div>
            <!--end::Aside Secondary-->
            
            
        </div>
    </div>


    <!--end::Main-->

    <div class="modal fade" id="chatModal" tabindex="-1" role="dialog" aria-labelledby="ChatModal" aria-hidden="true" data-backdrop="static" style="display: none">
        <div class="modal-dialog modal-dialog-centered modal-xl" role="document">
            <div class="modal-content">
                <div class="modal-body">
                    <div class="chat-window">
                        <div class="chat-cont-right">
                            <div class="chat-header">
                                <h5 class="modal-title" id="orderIdLbl"></h5>
                                <div class="chat-options">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
									<i aria-hidden="true" class="ki ki-close"></i>
								</button>
                                </div>

                            </div>
                            <div class="chat-body">
                                <div class="flex-row-fluid" id="kt_chat_content">
                                    <div class="scroll scroll-pull" data-mobile-height="350" data-height="450">
                                        <ul class="list-unstyled messages" id="messageSentDiv">
                                        </ul>
                                    </div>
                                </div>
                                <!-- 	                    	<hr style="border-top: 1px solid #f3f6f9;"> -->
                                <div class="chat-footer">
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <div class="btn-file btn">
                                                <i class="fa fa-paperclip"></i>
                                                <input type="file" id="chatFile" name="chatFile">
                                            </div>
                                        </div>
                                        <input class="form-control form-control-lg" rows="1" placeholder="Type a message" id="chatMsg">
                                        <div class="input-group-append">
                                            <button type="button" onclick="sendMsg();" class="btn msg-send-btn"><i class="fab fa-telegram-plane"></i></button>
                                        </div>
                                    </div>
                                </div>
                                <!--end::Footer-->
                            </div>
                            <!--end::Card-->
                        </div>
                        <!--end::Content-->
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="licenseInfoModal" data-backdrop='static' tabindex="-1" role="dialog" aria-labelledby="LicenseVerificationModal" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title"> Customer License </h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<i aria-hidden="true" class="ki ki-close"></i>
					</button>
                </div>
                <div class="modal-body pt-3 pr-5 pl-5">
                    <!--begin::Table-->
<!--                     <div class="table-responsive"> -->
<!--                         <table class="table table-vertical-center"> -->
<!--                             <thead> -->
<!--                                 <tr> -->
<!--                                     <th> Schedule </th> -->
<!--                                     <th> Licence No. </th> -->
<!--                                     <th> Expiry Date </th> -->
<!--                                 </tr> -->
<!--                             </thead> -->
<!--                             <tbody> -->

<!--                                 <tr> -->
<!--                                     <td><span class="text-dark-75 d-block font-size-lg"> Schedule 2  </span> </td> -->
<!--                                     <td><span class="text-dark-75  d-block font-size-lg" id="license2">  </span></td> -->
<!--                                     <td><span class="text-dark-75 d-block font-size-lg" id="license2DatePicker"></span></td> -->
<!--                                 </tr> -->

<!--                                 <tr> -->
<!--                                     <td><span class="text-dark-75 d-block font-size-lg"> Schedule 3  </span> </td> -->
<!--                                     <td><span class="text-dark-75  d-block font-size-lg" id="license3"> </span></td> -->
<!--                                     <td><span class="text-dark-75 d-block font-size-lg" id="license3DatePicker"></span></td> -->
<!--                                 </tr> -->

<!--                                 <tr> -->
<!--                                     <td><span class="text-dark-75 d-block font-size-lg"> Schedule 4.1  </span> </td> -->
<!--                                     <td><span class="text-dark-75  d-block font-size-lg" id="license41">  </span></td> -->
<!--                                     <td><span class="text-dark-75 d-block font-size-lg" id="license41DatePicker"></span></td> -->
<!--                                 </tr> -->
<!--                                 <tr> -->
<!--                                     <td><span class="text-dark-75 d-block font-size-lg"> Schedule 4.2  </span> </td> -->
<!--                                     <td><span class="text-dark-75  d-block font-size-lg" id="license42">  </span></td> -->
<!--                                     <td><span class="text-dark-75 d-block font-size-lg" id="license42DatePicker"></span></td> -->
<!--                                 </tr> -->
<!--                                 <tr> -->
<!--                                     <td><span class="text-dark-75 d-block font-size-lg"> Schedule 5  </span> </td> -->
<!--                                     <td><span class="text-dark-75  d-block font-size-lg" id="license5">  </span></td> -->
<!--                                     <td><span class="text-dark-75 d-block font-size-lg" id="license5DatePicker"></span></td> -->
<!--                                 </tr> -->

<!--                             </tbody> -->
<!--                         </table> -->
<!--                     </div> -->
                    <!--end::Table-->

                    
                    <h5 class="modal-title"> GPHC License File </h5>
                    <ul class="navi navi-hover navi-link-rounded-lg">
                        <li class="navi-item">
                            <a class="navi-link" id="licenseFileDownload">
                                <span class="navi-icon">
										<i class="icon-lg text-danger far fa-file-pdf"></i>
										</span>
                                <span class="navi-text" id="licenseFile"></span>
                            </a>
                        </li>
                    </ul>
                    <div class="separator separator-dashed my-5"></div>
                </div>
            </div>
        </div>
    </div>


    <!--begin::# CreditModal Modal-->
    <div class="modal fade" id="creditReportModal" tabindex="-1" role="dialog" aria-labelledby="UploadNewOffersModal" aria-hidden="true" data-backdrop='static'>
        <div class="modal-dialog modal-dialog-centered modal-xl" role="document">
            <div class="modal-content">

                <div class="modal-body py-0 px-0">
                    <div style="-webkit-box-shadow: none; box-shadow: none;" class="card card-custom">

                        <div class="card-header card-header-tabs-line">

                            <div class="card-title">
                                <h3 class="card-label"> Credit Report </h3>
                            </div>

                            <div class="card-toolbar">

                                <ul class="nav nav-tabs nav-bold nav-tabs-line mr-5" style="display: none;">

                                    <li class="nav-item">
                                        <a class="nav-link active" data-toggle="tab" href="#CompanyDetails"> Company Details </a>
                                    </li>

                                    <li class="nav-item">
                                        <a class="nav-link" data-toggle="tab" href="#CraditReating"> Credit Rating </a>
                                    </li>

                                    <li class="nav-item">
                                        <a class="nav-link" data-toggle="tab" href="#ShareCapitalStatus"> Share Capital Status </a>
                                    </li>

                                    <li class="nav-item">
                                        <a class="nav-link" data-toggle="tab" href="#Directors"> Directors </a>
                                    </li>

                                    <li class="nav-item">
                                        <a class="nav-link" data-toggle="tab" href="#NegativeInfo"> Negative Info </a>
                                    </li>

                                </ul>

                                <button type="button" class="close ml-5" data-dismiss="modal" aria-label="Close">
                                        <i aria-hidden="true" class="ki ki-close"></i>
                                    </button>

                            </div>
                        </div>

                        <div style="    padding: 3em 2rem 4em 2.25rem;" class="card-body">
                        
                        <div class="row">
										<div class="col-lg-3">
											
											<!--begin::Navigation-->
											      <ul class="navi navi-link-rounded navi-accent navi-hover navi-active nav flex-column mb-8 mb-lg-0" role="tablist">
												
												<!--begin::Nav Item-->
												<li class="navi-item mb-2">
													<a class="navi-link active" data-toggle="tab" href="#CompanyDetails">
														<span class="navi-text text-dark-50 font-size-h6 font-weight-bold">Company Details</span>
													</a>
												</li>
												<!--end::Nav Item-->
												<!--begin::Nav Item-->
												<li class="navi-item mb-2">
													<a class="navi-link" data-toggle="tab" href="#CraditReating">
														<span class="navi-text text-dark-50 font-size-h6 font-weight-bold">Credit Rating</span>
													</a>
												</li>
												<!--end::Nav Item-->
												<!--begin::Nav Item-->
												<li class="navi-item mb-2">
													<a class="navi-link" data-toggle="tab" href="#ShareCapitalStatus">
														<span class="navi-text text-dark-50 font-size-h6 font-weight-bold">Share Capital Status</span>
													</a>
												</li>
												<!--end::Nav Item-->
												<!--begin::Nav Item-->
												<li class="navi-item mb-2">
													<a class="navi-link" data-toggle="tab" href="#Directors">
														<span class="navi-text text-dark-50 font-size-h6 font-weight-bold">Directors</span>
													</a>
												</li>
												<!--end::Nav Item-->
												<!--begin::Nav Item-->
												<li class="navi-item mb-2">
													<a class="navi-link" data-toggle="tab" href="#NegativeInfo">
														<span class="navi-text text-dark-50 font-size-h6 font-weight-bold">Negative Info</span>
													</a>
												</li>
												<!--end::Nav Item-->
											</ul>
											<!--end::Navigation-->
										</div>
										<div class="col-lg-9">
										<div class="tab-content">


                                <div class="tab-pane fade show active" id="CompanyDetails" role="tabpanel" aria-labelledby="CompanyDetails">

                                    <h4 class="pb-5"> Company Details </h4>

                                    <div class="row">
                                        <div class="col-xl-12">

                                            <div class="d-flex justify-content-between">

                                                <div class="d-flex flex-column flex-root">
                                                    <div class="card card-custom card-fit card-border mr-5">
                                                        <div class="card-body py-lg-0 pt-2">
                                                            <p class="card-label font-weight-bolder mb-1 pt-5"> Status </p>
                                                            <p id="companyStatus"> </p>
                                                        </div>
                                                    </div>
                                                </div>


                                                <div class="d-flex flex-column flex-root">
                                                    <div class="card card-custom card-fit card-border mr-5">
                                                        <div class="card-body py-lg-0 pt-2">
                                                            <p class="card-label font-weight-bolder mb-1 pt-5"> VAT Number </p>
                                                            <p id="companyVatNumber"> </p>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="d-flex flex-column flex-root">
                                                    <div class="card card-custom card-fit card-border mr-5">
                                                        <div class="card-body py-lg-0 pt-2">
                                                            <p class="card-label font-weight-bolder mb-1 pt-5"> Registration Number </p>
                                                            <p id="companyRegNumber"> </p>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>

                                        </div>
                                    </div>

                                </div>
                                <div class="tab-pane fade" id="CraditReating" role="tabpanel" aria-labelledby="CraditReating">

                                    <h4 class="pb-5"> Credit Rating </h4>

                                    <div class="row">
                                        <div class="col-xl-12">

                                            <div class="d-flex justify-content-between">

                                                <div class="d-flex flex-column flex-root ">
                                                    <div class="card card-custom card-fit card-border mr-5">
                                                        <div class="card-body py-lg-0 pt-2">
                                                            <p class="card-label font-weight-bolder mb-1 pt-5"> Common Value </p>
                                                            <p id="commonValue"> </p>
                                                        </div>
                                                    </div>
                                                </div>


                                                <div class="d-flex flex-column flex-root ">
                                                    <div class="card card-custom card-fit card-border mr-5">
                                                        <div class="card-body py-lg-0 pt-2">
                                                            <p class="card-label font-weight-bolder mb-1 pt-5"> Common Description </p>
                                                            <p id="commonDescription"> </p>
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                            	</div>
                                            </div>
                                            <div class="col-xl-12 pt-7">
                                            
                                            	<div class="d-flex justify-content-between">

                                                <div class="d-flex flex-column flex-root ">
                                                    <div class="card card-custom card-fit card-border mr-5">
                                                        <div class="card-body py-lg-0 pt-2">
                                                            <p class="card-label font-weight-bolder mb-1 pt-5"> Currency </p>
                                                            <p id="creditCurrency"> </p>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="d-flex flex-column flex-root ">
                                                    <div class="card card-custom card-fit card-border mr-5">
                                                        <div class="card-body py-lg-0 pt-2">
                                                            <p class="card-label font-weight-bolder mb-1 pt-5"> Change Date </p>
                                                            <p id="latestRatingChangeDate"> </p>
                                                        </div>
                                                    </div>
                                                </div>


                                            </div>

                                        </div>
                                    </div>
                                </div>

                                <div class="tab-pane fade" id="ShareCapitalStatus" role="tabpanel" aria-labelledby="ShareCapitalStatus">

                                    <h4 class="pb-5"> Share Capital Status </h4>

                                    <div class="row">
                                        <div class="col-xl-12">

                                            <div class="d-flex justify-content-between">

                                                <div class="d-flex flex-column flex-root ">
                                                    <div class="card card-custom card-fit card-border mr-5">
                                                        <div class="card-body py-lg-0 pt-2">
                                                            <p class="card-label font-weight-bolder mb-1 pt-5"> Share Holder </p>
                                                            <p id="shareHolderName"> </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="Directors" role="tabpanel" aria-labelledby="CraditReating">

                                    <h4 class="pb-5"> Directors </h4>

                                    <div class="row">
                                        <div class="col-xl-12">

                                            <div class="d-flex justify-content-between">

                                                <div class="d-flex flex-column flex-root ">
                                                    <div class="card card-custom card-fit card-border mr-5">
                                                        <div class="card-body py-lg-0 pt-2">
                                                            <p class="card-label font-weight-bolder mb-1 pt-5"> Name </p>
                                                            <p id="directorName"> </p>
                                                        </div>
                                                    </div>
                                                </div>


                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="NegativeInfo" role="tabpanel" aria-labelledby="CompanyDetails">

                                    <h4 class="pb-5"> Negative Info </h4>

                                    <div class="row">
                                        <div class="col-xl-12">

                                            <div class="d-flex justify-content-between">

                                                <div class="d-flex flex-column flex-root ">
                                                    <div class="card card-custom card-fit card-border mr-5">
                                                        <div class="card-body py-lg-0 pt-2">
                                                            <p class="card-label font-weight-bolder mb-1 pt-5"> Exact Registered </p>
                                                            <p id="exactRegistered"> </p>
                                                        </div>
                                                    </div>
                                                </div>


                                                <div class="d-flex flex-column flex-root ">
                                                    <div class="card card-custom card-fit card-border mr-5">
                                                        <div class="card-body py-lg-0 pt-2">
                                                            <p class="card-label font-weight-bolder mb-1 pt-5"> Possible Registered </p>
                                                            <p id="possibleRegistered"> </p>
                                                        </div>
                                                    </div>
                                                </div>

										</div>
										</div>
										
										<div class="col-xl-12 pt-7">

                                            <div class="d-flex justify-content-between">
										

                                                <div class="d-flex flex-column flex-root ">
                                                    <div class="card card-custom card-fit card-border mr-5">
                                                        <div class="card-body py-lg-0 pt-2">
                                                            <p class="card-label font-weight-bolder mb-1 pt-5"> Number Of Exact </p>
                                                            <p id="numberOfExact"> </p>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="d-flex flex-column flex-root ">
                                                    <div class="card card-custom card-fit card-border mr-5">
                                                        <div class="card-body py-lg-0 pt-2">
                                                            <p class="card-label font-weight-bolder mb-1 pt-5"> Number Of Possible </p>
                                                            <p id="numberOfPossible"> </p>
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                                </div>
                                                </div>
                                                
                                                 <div class="col-xl-12 pt-7">
                                                 <div class="d-flex justify-content-between">
                                                
                                                <div class="d-flex flex-column flex-root ">
                                                    <div class="card card-custom card-fit card-border mr-5">
                                                        <div class="card-body py-lg-0 pt-2">
                                                            <p class="card-label font-weight-bolder mb-1 pt-5"> Number Of Satisfied </p>
                                                            <p id="numberOfSatisfied"> </p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="d-flex flex-column flex-root ">
                                                    <div class="card card-custom card-fit card-border mr-5">
                                                        <div class="card-body py-lg-0 pt-2">
                                                            <p class="card-label font-weight-bolder mb-1 pt-5"> Number Of Writs </p>
                                                            <p id="numberOfWrits"> </p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="d-flex flex-column flex-root ">
                                                    <div class="card card-custom card-fit card-border mr-5">
                                                        <div class="card-body py-lg-0 pt-2">
                                                            <p class="card-label font-weight-bolder mb-1 pt-5"> Currency </p>
                                                            <p id="negCurrency"> </p>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>

                                        </div>
                                    </div>

                                </div>


                            </div>
										</div>
									</div>
                        
                  
                        
                        
                            
                        </div>

                        <div class="modal-footer">
                            <button type="button" class="btn btn-danger  font-weight-bold" data-dismiss="modal">Close</button>
                        </div>

                    </div>

                </div>

            </div>
        </div>
    </div>
    <!--end:: New Tender Modal-->


    <script>
        var KTAppSettings = {
            "breakpoints": {
                "sm": 576,
                "md": 768,
                "lg": 992,
                "xl": 1200,
                "xxl": 1200
            },
            "colors": {
                "theme": {
                    "base": {
                        "white": "#ffffff",
                        "primary": "#8950FC",
                        "secondary": "#E5EAEE",
                        "success": "#1BC5BD",
                        "info": "#8950FC",
                        "warning": "#FFA800",
                        "danger": "#F64E60",
                        "light": "#F3F6F9",
                        "dark": "#212121"
                    },
                    "light": {
                        "white": "#ffffff",
                        "primary": "#E1E9FF",
                        "secondary": "#ECF0F3",
                        "success": "#C9F7F5",
                        "info": "#EEE5FF",
                        "warning": "#FFF4DE",
                        "danger": "#FFE2E5",
                        "light": "#F3F6F9",
                        "dark": "#D6D6E0"
                    },
                    "inverse": {
                        "white": "#ffffff",
                        "primary": "#ffffff",
                        "secondary": "#212121",
                        "success": "#ffffff",
                        "info": "#ffffff",
                        "warning": "#ffffff",
                        "danger": "#ffffff",
                        "light": "#464E5F",
                        "dark": "#ffffff"
                    }
                },
                "gray": {
                    "gray-100": "#F3F6F9",
                    "gray-200": "#ECF0F3",
                    "gray-300": "#E5EAEE",
                    "gray-400": "#D6D6E0",
                    "gray-500": "#B5B5C3",
                    "gray-600": "#80808F",
                    "gray-700": "#464E5F",
                    "gray-800": "#1B283F",
                    "gray-900": "#212121"
                }
            },
            "font-family": "Poppins"
        };
    </script>
    <script src="${pageContext.request.contextPath}/assets/plugins/custom/prismjs/prismjs.bundle.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/scripts.bundle.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/menu-scripts.bundle.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/pages/widgets.js"></script>
    <script src="${pageContext.request.contextPath}/assets/plugins/custom/datatables/datatables.bundle.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/pages/crud/forms/widgets/bootstrap-daterangepicker.js"></script>
    <script src="${pageContext.request.contextPath}/JS/supplier/supplierOrder.js"></script>
    <script src="${pageContext.request.contextPath}/JS/tenderCommon.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/pages/custom/chat/chat.js"></script>

</body>
<!--end::Body-->

</html>