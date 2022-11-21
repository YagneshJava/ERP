<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<!--begin::Head-->

<head>

<meta charset="utf-8" />
<title>Supplier Order</title>
<meta name="description" content="" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<link rel="canonical" href="" />

<link rel="apple-touch-icon" sizes="180x180"
	href="${pageContext.request.contextPath}/assets/media/favicon/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32"
	href="${pageContext.request.contextPath}/assets/media/favicon/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16"
	href="${pageContext.request.contextPath}/assets/media/favicon/favicon-16x16.png">
<link rel="manifest"
	href="${pageContext.request.contextPath}/assets/media/favicon/site.webmanifest">
<meta name="msapplication-TileColor" content="#da532c">
<meta name="theme-color" content="#ffffff">

<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" />

<link
	href="${pageContext.request.contextPath}/assets/plugins/custom/datatables/datatables.bundle.css"
	rel="stylesheet" type="text/css" />

<link
	href="${pageContext.request.contextPath}/assets/plugins/global/plugins.bundle.css"
	rel="stylesheet" type="text/css" />
<link
	href="${pageContext.request.contextPath}/assets/plugins/custom/prismjs/prismjs.bundle.css"
	rel="stylesheet" type="text/css" />
<link
	href="${pageContext.request.contextPath}/assets/css/style.bundle.css"
	rel="stylesheet" type="text/css" />
	<link href="${pageContext.request.contextPath}/assets/css/chat.css" rel="stylesheet" type="text/css" />
	  <link href="${pageContext.request.contextPath}/assets/css/responsive.css" rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath}/assets/css/responsive.css"
	rel="stylesheet" type="text/css" />

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/sidebar.css">
<link
	href="${pageContext.request.contextPath}/assets/jqgrid/css/ui.jqgrid-bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<script
	src="${pageContext.request.contextPath}/assets/plugins/global/plugins.bundle.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/jqgrid/js/jquery.jqgrid.min.js"></script>
	
	<link href="${pageContext.request.contextPath}/assets/css/sweetalert2.min.css" rel="stylesheet" type="text/css" />
	
</head>
<!--end::Head-->

<!--begin::Body-->

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
										<li class="breadcrumb-item text-muted"><a
											href="wellcomeCustomerPage" class="text-muted"> Dashboard
										</a></li>

										<li class="breadcrumb-item text-muted">
											<h5>
												<a href="supplierPendingOrder"
													class="text-dark font-weight-bold my-1 mr-5">Pending
													Orders </a>
											</h5>
										</li>


									</ul>
									<!-- 									<ul -->
									<!-- 										class="breadcrumb breadcrumb-transparent breadcrumb-dot font-weight-bold p-0 my-2 font-size-sm"> -->
									<!-- 										<li class="breadcrumb-item text-muted"><a -->
									<!-- 											href="wellcomeCustomer" class="text-muted"> Quotation  </a></li> -->
									<!-- 										<li class="breadcrumb-item text-muted"><a href="dashboard.html" class="text-muted"> <h5 class="text-dark font-weight-bold my-1 mr-5"> Pending Orders </h5></a></li> -->

									<!-- 									</ul> -->
									<!--end::Breadcrumb-->
								</div>
								<!--end::Page Heading-->
							</div>
							<!--end::Info-->

							<!--begin::Toolbar-->
							<div class="d-flex align-items-center"
								style="display: none !important;">

								<a onclick="manageView()" class="btn btn-icon btn-sm btn-danger"
									data-toggle="tooltip" data-placement="top" title="Back"
									style="display: none" id="backBtn"> <span
									class="svg-icon  svg-icon-md"> <!--begin::Svg Icon | path:C:\wamp64\www\keenthemes\legacy\metronic\theme\html\demo6\dist/../src/media/svg/icons\Navigation\Left-2.svg-->
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
										</svg> <!--end::Svg Icon-->
								</span>
								</a>

							</div>
							<!--end::Toolbar-->

						</div>
					</div>
					<!--end::Subheader-->

					<!--begin::Entry-->
					<div class="d-flex flex-column-fluid">
						<input type="hidden" id="supplierId" name="supplierId"
							value="${sessionScope.userCompanyDetails.getId()}">
						<!--begin::Container-->
						<div class="container-fluid">
							<!--begin::Dashboard-->
							<!--begin::Row-->
							<div class="row mt-0 mt-lg-4" id="confirmOrderDiv">
								<div class="col-xl-12">

 								<!--begin::Global Search-->
                                    <div class="quick-search quick-search-inline mb-10 w-28" id="pendingOrderSearchDiv">
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
                                                        <div class="dropdown-menu dropdown-menu-xl dropdown-menu-right p-10 g-search-form"  id ="srchHideShow">
                                                            <!--begin::Navigation-->

                                                            <div class="input-group mb-3">
                                                                <!-- <div class="input-group-prepend">
                                                                    <span class="input-group-text">
                                                                        <i class="la la-exclamation-triangle icon-lg"></i>
                                                                    </span>
                                                                </div> -->
                                                                <input type="text" id="srchQuotationId" name="srchQuotationId" class="form-control border-2 font-weight-bold pl-2" placeholder="Quotation ID">
                                                            </div>
                                                            
                                                            <div class="input-group mb-3 d-none">
                                                                <!-- <div class="input-group-prepend">
                                                                    <span class="input-group-text">
                                                                        <i class="la la-exclamation-triangle icon-lg"></i>
                                                                    </span>
                                                                </div> -->
                                                                <input type="text" class="form-control border-2 pl-3" placeholder="Supplier ID">
                                                            </div>
                                                            <div class="input-group mb-3 d-none">
                                                                <!-- <div class="input-group-prepend">
                                                                    <span class="input-group-text">
                                                                        <i class="la la-exclamation-triangle icon-lg"></i>
                                                                    </span>
                                                                </div> -->
                                                                <input type="text" class="form-control border-2 pl-3" placeholder="Customer ID">
                                                            </div>
                                                            <div class="input-group mb-3 d-none">
                                                                <!-- <div class="input-group-prepend">
                                                                    <span class="input-group-text">
                                                                        <i class="la la-exclamation-triangle icon-lg"></i>
                                                                    </span>
                                                                </div> -->
                                                                <input type="text" class="form-control border-2 pl-3" placeholder="Order ID">
                                                            </div>
                                                            
                                                            
                                                             <div class="input-group mb-3">
                                                                <select id="srchDateType" name="srchDateType" style="width: auto" class="form-control border-0 font-weight-bold pl-2" >
																	<option value="" selected="">Select Date Type</option>
																	<option value="QUOTATIONDATE">Created Date</option>
																	<option value="DEADLINEDATE">Final Date</option>
																	<option value="DELIVERYDATE">Delivery Date</option>
																</select>
                                                            </div>
                                                            
                                                            <div class="input-group input-icon input-icon-right mb-3">
                                                                <div id="suppOrdConfSrchDateRange" class="w-100" style="border-bottom-right-radius: 0.675rem !important; border-top-right-radius: 0.675rem !important;">
                                                                    <input id="srchStartEndDate" type="text" class="form-control border-2 font-weight-bold pl-2" placeholder="From Date &amp; To Date" data-toggle="modal" aria-haspopup="true" aria-expanded="false" data-target="#subheader7Modal" readonly="readonly">
                                                                    
                                                                    <span>
                                                                        <i class="icon-lg la la-calendar"></i>
                                                                    </span>
                                                                </div>
                                                            </div>

															<button type="button" onclick="getConfirmedQTList()" class="btn btn-primary font-weight-bold btn-hover-light-primary  float-right  mt-3 mt-sm-0" id="searchBtn">
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
                                   <div class="quick-search quick-search-inline mb-10 w-28" id="orderHistorySearchDiv" style="display: none;">
                                        <!--begin::Form-->
                                        <form method="get" class="quick-search-form g-search">
                                            <div class="input-group rounded bg-white input-group-lg" style="box-shadow: 3px 3px 7px 0px #73737c;">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text">
                                                        <i class="flaticon2-search-1 icon-md"></i>
                                                    </span>
                                                </div>
                                                <input type="text" class="form-control h-40px search-form pl-3" placeholder="Search..." id ="historySrchMain">
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
                                                        <div class="dropdown-menu dropdown-menu-xl dropdown-menu-right p-10 g-search-form">
                                                            <!--begin::Navigation-->

<!--                                                             <div class="input-group mb-3"> -->
<!--                                                                 <input type="text" id="srchQuotationId" name="srchQuotationId" class="form-control border-2 font-weight-bold pl-2" placeholder="Quotation ID"> -->
<!--                                                             </div> -->
                                                            
                                                            
                                                             <div class="input-group mb-3">
                                                                <input type="text" id="srchOrderId" name="srchOrderId" class="form-control border-0 font-weight-bold pl-2" placeholder="Order ID">
                                                            </div>
                                                            
                                                            <div class="input-group input-icon input-icon-right mb-3">
                                                                <div id="suppOrdHistDateRange" class="w-100" style="border-bottom-right-radius: 0.675rem !important; border-top-right-radius: 0.675rem !important;">
                                                                    <input id="historySrchStartEndDate" type="text" class="form-control border-2 font-weight-bold pl-2" placeholder="From Date &amp; To Date" data-toggle="modal" aria-haspopup="true" aria-expanded="false" data-target="#subheader7Modal" readonly="readonly">
                                                                    
                                                                    <span>
                                                                        <i class="icon-lg la la-calendar"></i>
                                                                    </span>
                                                                </div>
                                                            </div>

															<button type="button" onclick="srchOrderHistory()" class="btn btn-primary font-weight-bold btn-hover-light-primary  float-right  mt-3 mt-sm-0">
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
									<div class="card card-custom" id="mainDiv">

										<!--begin::Header-->
										<div class="card-header py-5 justify-content-end">
											<div
												class="bg-white effect1 rounded p-2 pr-3 pl-3 d-flex flex-grow-1 flex-sm-grow-0"  style="display: none !important;">
												<!--end::Form-->
											</div>


													<ul class="nav nav-bold nav-pills" id="myTab" role="tablist">
															<li class="nav-item">
																<a class="nav-link active" id="orderTab" data-toggle="tab" href="javascript:void(0)" onclick="">
																	<span class="nav-icon">
																		<i class="icon-xl la fab la-dropbox"></i>
																	</span>
																	<span class="nav-text">Order</span>
																</a>
															</li>
															<li class="nav-item">
																<a class="nav-link" id="orderHistoryTab" data-toggle="tab" href="javascript:void(0)" onclick="getOrderHistory()" aria-controls="supplier">
																	<span class="nav-icon">
																		<i class="icon-xl la la-history"></i>
																	</span>
																	<span id = "supplierChatNotificationTab" class="label label-sm label-light-danger label-rounded font-weight-bolder position-absolute top-0 right-0 mt-1 mr-1 d-none" ></span>
																	<span class="nav-text">Order History</span>
																</a>
															</li>
													</ul>
										</div>
										<!--end::Header-->

										<div class="card-body">
											<div class="table-responsive" id="pendingOrderDataTable">
												<table class="table  table-hover  table-checkable nowrap"
													id="confirmOrderDataTable">
													<thead>
														<tr class="text-left">

															<th>Quotation ID</th>
															<th>Representative</th>
															<th>Created Date</th>
															<th>Final Date</th>
															<th>Delivery Date</th>
															<th class="pr-0 ">Action</th>
														</tr>
													</thead>
												</table>
											</div>
											<div class="table-responsive" id="orderHistoryGrid" style="display: none">
												<table id="historyGrid"></table>
                                                <div id="historyGridPager"></div>
											</div>

											<!--end::Table-->

										</div>
										<!--end::Body-->
									</div>
									<!--end::Card-->


								</div>
							</div>

							<!--begin::Container-->
							<div class="row mt-0 mt-lg-4 " id="confirmOrderDataDiv"
								style="display: none">




								<div class="card-toolbar">
									<!-- 													<a onclick="manageView()" class="btn btn-icon btn-sm btn-danger" data-toggle="tooltip" data-placement="top" title="Back"> -->
									<!-- 														<span class="svg-icon  svg-icon-2x"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1"> -->
									<!-- 															<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"> -->
									<!-- 																<polygon points="0 0 24 0 24 24 0 24"/> -->
									<!-- 																<rect fill="#000000" opacity="0.3" transform="translate(15.000000, 12.000000) scale(-1, 1) rotate(-90.000000) translate(-15.000000, -12.000000) " x="14" y="7" width="2" height="10" rx="1"/> -->
									<!-- 																<path d="M3.7071045,15.7071045 C3.3165802,16.0976288 2.68341522,16.0976288 2.29289093,15.7071045 C1.90236664,15.3165802 1.90236664,14.6834152 2.29289093,14.2928909 L8.29289093,8.29289093 C8.67146987,7.914312 9.28105631,7.90106637 9.67572234,8.26284357 L15.6757223,13.7628436 C16.0828413,14.136036 16.1103443,14.7686034 15.7371519,15.1757223 C15.3639594,15.5828413 14.7313921,15.6103443 14.3242731,15.2371519 L9.03007346,10.3841355 L3.7071045,15.7071045 Z" fill="#000000" fill-rule="nonzero" transform="translate(9.000001, 11.999997) scale(-1, -1) rotate(90.000000) translate(-9.000001, -11.999997) "/> -->
									<!-- 															</g> -->
									<!-- 														</svg></span> -->
									<!-- 													</a> -->
								</div>



								<div class="col-xl-12">
									<!--begin::Card-->
									<div class="card card-custom card-collapsed" data-card="true"
										id="kt_card_4">

														<div class="card-body">


										</div>

									</div>
									
									
									<div class="row mt-0 mt-lg-4">
										<div class="col-xl-12">

											<!--begin::Card-->
											<div class="card card-custom">

												<!--begin::Body-->
												<div class="card-body">
													<!--begin: Search Form-->

													<!--begin::Table-->
													<div class="card-body">
													<div class="table-responsive">
														<table id="confirmOrderDataGrid"></table>
														<div id="confirmOrderDataPager"></div>
														</div>
													</div>
													<!--end::Table-->

													<div class="card-footer">
														<button type="button" class="btn btn-warning mr-2"
															onclick="manageView()">Back</button>
														<div class="input-group text-right"
															style="width: 250px; float: right;">
															<input type="text" class="form-control form-control-lg"
																placeholder="" id="orderTotal" name="orderTotal"
																disabled="disabled">
															<div class="input-group-append">
																<button
																	class="btn btn-light-success btn-lg px-6 font-weight-bold"
																	type="button" onclick="orderPopUp()" id="orderQtBtn">
																	Order</button>
															</div>
														</div>
														<!-- 													<button type="button" class="btn btn-success " onclick = "orderPopUp()" id = "orderQtBtn"> Order </button> -->
													</div>

												</div>
												<!--end::Body-->
											</div>
											<!--end::Card-->

										</div>
									</div>
									<!--end::Card-->
								</div>
							</div>
							<!--end::Container-->



							<!--end::Row-->

							<!--end::Row-->

							<!--end:: customer-verification.html -->

							<!--end:: New Tender Modal-->
<div class="row mt-0 mt-lg-4  " id="orderHistoryDataDiv" style="display: none">
                             
                                
                                




                                    <div class="col-xl-12">
                                        <!--begin::Card-->
                                        <div class="card card-custom card-collapsed" data-card="true" id="kt_card_4">





                                        </div>
                                        <div class="row mt-0 mt-lg-4">
                                            <div class="col-xl-12">

                                                <!--begin::Card-->
                                                <div class="card card-custom">
                                                    <!--begin::Header-->
                                                    <div class="card-header py-5">
                                                        <h3 class="card-title ">
                                                            Order ID: <span class="font-weight-bold pl-1 text-primary" id="qtInfoStatus"> </span>
                                                        </h3>

                                                    </div>
                                                    <!--end::Header-->
                                                    <!--begin::Body-->

                                                    <!--begin::Search Form-->
                                                    <div class="card-body">
                                                     <div class="table-responsive">
                                                        <table id="orderLineGrid"></table>
                                                        <div id="orderLineGridPager"></div>
                                                        </div>
                                                    </div>
                                                    <!--end::Table-->
                                                    
                                                       <div class="card-footer">
                                                        
                                                        	<button type="button" class="btn btn-warning mr-2" onclick="manageView()"> Back </button>
                                                        	
                                                        </div>

                                                </div>
                                                <!--end::Card-->

                                            </div>
                                        </div>
                                        
                                      
                                    </div>
                                    
                                </div>
  

						</div>
						<!--end::Container-->
						
					</div>
					<!--end::Entry-->
					
					
					
				</div>
				<!--end::Content-->
				
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
                                                <div style="display: none" id="chatImg">
                                                    <img id="blah" />
                                                </div>
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
														<span class="navi-text text-dark-50 font-size-h5 font-weight-bold">Company Details</span>
													</a>
												</li>
												<!--end::Nav Item-->
												<!--begin::Nav Item-->
												<li class="navi-item mb-2">
													<a class="navi-link" data-toggle="tab" href="#CraditReating">
														<span class="navi-text text-dark-50 font-size-h5 font-weight-bold">Credit Rating</span>
													</a>
												</li>
												<!--end::Nav Item-->
												<!--begin::Nav Item-->
												<li class="navi-item mb-2">
													<a class="navi-link" data-toggle="tab" href="#ShareCapitalStatus">
														<span class="navi-text text-dark-50 font-size-h5 font-weight-bold">Share Capital Status</span>
													</a>
												</li>
												<!--end::Nav Item-->
												<!--begin::Nav Item-->
												<li class="navi-item mb-2">
													<a class="navi-link" data-toggle="tab" href="#Directors">
														<span class="navi-text text-dark-50 font-size-h5 font-weight-bold">Directors</span>
													</a>
												</li>
												<!--end::Nav Item-->
												<!--begin::Nav Item-->
												<li class="navi-item mb-2">
													<a class="navi-link" data-toggle="tab" href="#NegativeInfo">
														<span class="navi-text text-dark-50 font-size-h5 font-weight-bold">Negative Info</span>
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
                                        
                                        
                                        
                                        
                                        
                                            <div class="tab-content" style="display: none;">


                                                <div class="tab-pane fade show active" id="CompanyDetails" role="tabpanel" aria-labelledby="CompanyDetails">

                                                    <h6 class="pb-5"> Company Details </h6>

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

                                                    <h6 class="pb-5"> Credit Rating </h6>

                                                    <div class="row">
                                                        <div class="col-xl-12">

                                                            <div class="d-flex justify-content-between">

                                                                <div class="d-flex flex-column flex-root">
                                                                    <div class="card card-custom card-fit card-border mr-5">
                                                                        <div class="card-body py-lg-0 pt-2">
                                                                            <p class="card-label font-weight-bolder mb-1 pt-5"> Common Value </p>
                                                                            <p id="commonValue"> </p>
                                                                        </div>
                                                                    </div>
                                                                </div>


                                                                <div class="d-flex flex-column flex-root">
                                                                    <div class="card card-custom card-fit card-border mr-5">
                                                                        <div class="card-body py-lg-0 pt-2">
                                                                            <p class="card-label font-weight-bolder mb-1 pt-5"> Common Description </p>
                                                                            <p id="commonDescription"> </p>
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <div class="d-flex flex-column flex-root">
                                                                    <div class="card card-custom card-fit card-border mr-5">
                                                                        <div class="card-body py-lg-0 pt-2">
                                                                            <p class="card-label font-weight-bolder mb-1 pt-5"> Currency </p>
                                                                            <p id="creditCurrency"> </p>
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <div class="d-flex flex-column flex-root">
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

                                                    <h6 class="pb-5"> Share Capital Status </h6>

                                                    <div class="row">
                                                        <div class="col-xl-12">

                                                            <div class="d-flex justify-content-between">

                                                                <div class="d-flex flex-column flex-root">
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

                                                    <h6 class="pb-5"> Directors </h6>

                                                    <div class="row">
                                                        <div class="col-xl-12">

                                                            <div class="d-flex justify-content-between">

                                                                <div class="d-flex flex-column flex-root">
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

                                                    <h6 class="pb-5"> Negative Details </h6>

                                                    <div class="row">
                                                        <div class="col-xl-12">

                                                            <div class="d-flex justify-content-between">

                                                                <div class="d-flex flex-column flex-root">
                                                                    <div class="card card-custom card-fit card-border mr-5">
                                                                        <div class="card-body py-lg-0 pt-2">
                                                                            <p class="card-label font-weight-bolder mb-1 pt-5"> Exact Registered </p>
                                                                            <p id="exactRegistered"> </p>
                                                                        </div>
                                                                    </div>
                                                                </div>


                                                                <div class="d-flex flex-column flex-root">
                                                                    <div class="card card-custom card-fit card-border mr-5">
                                                                        <div class="card-body py-lg-0 pt-2">
                                                                            <p class="card-label font-weight-bolder mb-1 pt-5"> Possible Registered </p>
                                                                            <p id="possibleRegistered"> </p>
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <div class="d-flex flex-column flex-root">
                                                                    <div class="card card-custom card-fit card-border mr-5">
                                                                        <div class="card-body py-lg-0 pt-2">
                                                                            <p class="card-label font-weight-bolder mb-1 pt-5"> Number Of Exact </p>
                                                                            <p id="numberOfExact"> </p>
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <div class="d-flex flex-column flex-root">
                                                                    <div class="card card-custom card-fit card-border mr-5">
                                                                        <div class="card-body py-lg-0 pt-2">
                                                                            <p class="card-label font-weight-bolder mb-1 pt-5"> Number Of Possible </p>
                                                                            <p id="numberOfPossible"> </p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="d-flex flex-column flex-root">
                                                                    <div class="card card-custom card-fit card-border mr-5">
                                                                        <div class="card-body py-lg-0 pt-2">
                                                                            <p class="card-label font-weight-bolder mb-1 pt-5"> Number Of Satisfied </p>
                                                                            <p id="numberOfSatisfied"> </p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="d-flex flex-column flex-root">
                                                                    <div class="card card-custom card-fit card-border mr-5">
                                                                        <div class="card-body py-lg-0 pt-2">
                                                                            <p class="card-label font-weight-bolder mb-1 pt-5"> Number Of Writs </p>
                                                                            <p id="numberOfWrits"> </p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="d-flex flex-column flex-root">
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

                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-danger  font-weight-bold" data-dismiss="modal">Close</button>
                                        </div>

                                    </div>

                                </div>

                            </div>
                        </div>
                    </div>

				<jsp:include page="../footer.jsp"></jsp:include>

			</div>
			<!--end::Wrapper-->
			
			
			
			  <!--begin::Aside Secondary-->
            <div class="sidebar sidebar-right d-flex flex-row-auto flex-column"   id="kt_sidebar"  style="display: none !important;">
					<!--begin::Aside Secondary Content-->
					<div class="sidebar-content flex-column-fluid pb-10 pt-9 px-5 px-lg-10">
							<div class="confirmOrderDataBox" style="display: none !important;">
									<!--begin: Stats Widget 19-->
									<div class="card card-custom bg-light-success gutter-b">
										<!--begin::Body-->
										<div class="card-body my-2">
											<p class="card-title font-weight-bolder text-success text-hover-state-dark font-size-h6 mb-4 d-block"> Quotation ID </p>
				                  			<input type="text" class="text-dark-75 font-size-h2 font-weight-bolder mr-2 w-100 bg-transparent" style="border: 0;" disabled="disabled" id="savedQtId" name="savedQtId">         			
										</div>
										<!--end:: Body-->
									</div>
									<!--end: Stats:Widget 19-->
									<!--begin::Stats Widget 20-->
									<div class="card card-custom bg-light-info gutter-b">
										<!--begin::Body-->
										<div class="card-body my-2">
											<p class="card-title font-weight-bolder text-info font-size-h6 mb-4 text-hover-state-dark d-block"> Representative 	</p>
				                            <input type="text" class="text-dark-75 font-weight-bolder font-size-h2 mr-2 w-100 bg-transparent" style="border: 0;" disabled="disabled" id="savedQtRep" name="savedQtRep">
			                            </div>
										<!--end::Body-->
									</div>
									<!--end::Stats Widget 20-->
									<!--begin::Stats Widget 20-->
									<div class="card card-custom bg-light-blue gutter-b">
										<!--begin::Body-->
										<div class="card-body my-2">	
											<p class="card-title font-weight-bolder text-blue font-size-h6 mb-4 text-hover-state-dark d-block"> Reference </p>
				                            <input type="text" class="text-dark-75 font-weight-bolder font-size-h2 mr-2 w-100 bg-transparent" style="border: 0;background-color: #f75163;" disabled="disabled" id="savedQtRef" name="savedQtRef">
			                           </div>
										<!--end::Body-->
									</div>
									<!--end::Stats Widget 20-->
									<!--begin::Stats Widget 20-->
									<div class="card card-custom bg-light-warning gutter-b">
										<!--begin::Body-->
										<div class="card-body my-2">
											<p class="card-title font-weight-bolder text-warning font-size-h6 mb-4 text-hover-state-dark d-block"> Final Date </p>
				                            <input type="text" class="text-dark-75 font-weight-bolder font-size-h2 mr-2 w-100 bg-transparent" style="border: 0;" disabled="disabled" id="savedFinalDate" name="savedFinalDate">	
										</div>
										<!--end::Body-->
									</div>
									<!--end::Stats Widget 20-->
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
									<!--begin: Stats Widget 19-->
									<div class="card card-custom bg-light-success gutter-b">
										<!--begin::Body-->
										<div class="card-body my-2">
											<p class="card-title font-weight-bolder text-success text-hover-state-dark font-size-h6 mb-4 d-block">  Supplier Quoted  </p>
											<span class="text-dark-75 font-size-h2 font-weight-bolder mr-2 w-100 bg-transparent" id="totalSupplierQuotedCount" style="border-radius: 0.675rem !important; margin-top: -6px;">1</span>         			
										</div>
										<!--end:: Body-->
									</div>
									<!--end: Stats:Widget 19-->
							</div>
							<div class="orderHistoryDataBox" style="display: none !important;">
									<!--begin: Stats Widget 19-->
									<div class="card card-custom bg-light-success gutter-b">
										<!--begin::Body-->
										<div class="card-body my-2">
											<p class="card-title font-weight-bolder text-success text-hover-state-dark font-size-h6 mb-4 d-block">  Supplier  </p>
				                  			<input type="text" class="text-dark-75 font-size-h2 font-weight-bolder mr-2 w-100 bg-transparent" style="border: 0;" disabled="disabled" id="historysavedSupplierNameId" name="historysavedSupplierNameId">         			
										</div>
										<!--end:: Body-->
									</div>
									<!--end: Stats:Widget 19-->
									<!--begin::Stats Widget 20-->
									<div class="card card-custom bg-light-info gutter-b">
										<!--begin::Body-->
										<div class="card-body my-2">
											<p class="card-title font-weight-bolder text-info font-size-h6 mb-4 text-hover-state-dark d-block"> Representative 	</p>
				                            <input type="text" class="text-dark-75 font-weight-bolder font-size-h2 mr-2 w-100 bg-transparent" style="border: 0;" disabled="disabled" id="historysavedQtRep" name="historysavedQtRep">
			                            </div>
										<!--end::Body-->
									</div>
									<!--end::Stats Widget 20-->
									<!--begin::Stats Widget 20-->
									<div class="card card-custom bg-light-blue gutter-b">
										<!--begin::Body-->
										<div class="card-body my-2">	
											<p class="card-title font-weight-bolder text-blue font-size-h6 mb-4 text-hover-state-dark d-block"> Reference </p>
				                            <input type="text" class="text-dark-75 font-weight-bolder font-size-h2 mr-2 w-100 bg-transparent" style="border: 0;background-color: #f75163;" disabled="disabled" id="historysavedQtRef" name="historysavedQtRef">
			                           </div>
										<!--end::Body-->
									</div>
									<!--end::Stats Widget 20-->
									<!--begin::Stats Widget 20-->
									<div class="card card-custom bg-light-warning gutter-b">
										<!--begin::Body-->
										<div class="card-body my-2">
											<p class="card-title font-weight-bolder text-warning font-size-h6 mb-4 text-hover-state-dark d-block"> Final Date </p>
				                            <input type="text" class="text-dark-75 font-weight-bolder font-size-h2 mr-2 w-100 bg-transparent" style="border: 0;" disabled="disabled" id="historysavedFinalDate" name="historysavedFinalDate">	
										</div>
										<!--end::Body-->
									</div>
									<!--end::Stats Widget 20-->
									<!--begin::Stats Widget 20-->
									<div class="card card-custom bg-light-danger gutter-b">
										<!--begin::Body-->
										<div class="card-body my-2">
											<p class="card-title font-weight-bolder text-danger font-size-h6 mb-4 text-hover-state-dark d-block"> Delivery Date </p>
				                            <input type="text" class="text-dark-75 font-weight-bolder font-size-h2 mr-2 w-100 bg-transparent" style="border: 0;" disabled="disabled" id="historysavedDeliveryDate" name="historysavedDeliveryDate">
			                            </div>
										<!--end::Body-->
									</div>
									<!--end::Stats Widget 20-->
									<!--begin: Stats Widget 19-->
									<div class="card card-custom bg-light-success gutter-b">
										<!--begin::Body-->
										<div class="card-body my-2">
											<p class="card-title font-weight-bolder text-success text-hover-state-dark font-size-h6 mb-4 d-block">   Quotation Type  </p>
											<input type="text" class="text-dark-75 font-weight-bolder font-size-h2 mr-2 w-100 bg-transparent" style="border: 0;" disabled="disabled" id="historysavedQtType" name="historysavedQtType">
				                  			         			
										</div>
										<!--end:: Body-->
									</div>
									<!--end: Stats:Widget 19-->
							</div>
					</div>
					<!--end::Aside Secondary Content-->
			</div>
            <!--end::Aside Secondary-->
            
           
            
            
            
                                

		</div>
		<!--end::Page-->
	</div>
	<!--end::Main-->


	<!--begin:: Customer History Modal-->
	<div class="modal fade" id="ViewCustomerHistoryModal" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalSizeXl" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered modal-xl"
			role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Customer
						History</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<i aria-hidden="true" class="ki ki-close"></i>
					</button>
				</div>
				<div class="modal-body">
					<table id="customerHistoryDatatable"
						class="table table-hover table-checkable"
						style="margin-top: 13px !important">
						<!-- 											<thead> -->
						<!-- 												<tr> -->
						<!-- 													<th>Old Value</th> -->
						<!-- 													<th>New Value</th> -->
						<!-- 													<th>Date Time</th> -->
						<!-- 													<th>User</th> -->
						<!-- 													<th>Name</th> -->
						<!-- 													<th>Action</th> -->
						<!-- 												</tr> -->
						<!-- 											</thead> -->
					</table>
				</div>
				<!-- <div class="modal-footer">
					<button type="button" class="btn btn-light-primary font-weight-bold" data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary font-weight-bold">Save changes</button>
				</div> -->
			</div>
		</div>
	</div>
	<!--end::Customer History  Modal-->
	
	

	<!--begin::Global Config(global config for global JS scripts)-->
	<script>
		var KTAppSettings = {
			"breakpoints" : {
				"sm" : 576,
				"md" : 768,
				"lg" : 992,
				"xl" : 1200,
				"xxl" : 1200
			},
			"colors" : {
				"theme" : {
					"base" : {
						"white" : "#ffffff",
						"primary" : "#8950FC",
						"secondary" : "#E5EAEE",
						"success" : "#1BC5BD",
						"info" : "#8950FC",
						"warning" : "#FFA800",
						"danger" : "#F64E60",
						"light" : "#F3F6F9",
						"dark" : "#212121"
					},
					"light" : {
						"white" : "#ffffff",
						"primary" : "#E1E9FF",
						"secondary" : "#ECF0F3",
						"success" : "#C9F7F5",
						"info" : "#EEE5FF",
						"warning" : "#FFF4DE",
						"danger" : "#FFE2E5",
						"light" : "#F3F6F9",
						"dark" : "#D6D6E0"
					},
					"inverse" : {
						"white" : "#ffffff",
						"primary" : "#ffffff",
						"secondary" : "#212121",
						"success" : "#ffffff",
						"info" : "#ffffff",
						"warning" : "#ffffff",
						"danger" : "#ffffff",
						"light" : "#464E5F",
						"dark" : "#ffffff"
					}
				},
				"gray" : {
					"gray-100" : "#F3F6F9",
					"gray-200" : "#ECF0F3",
					"gray-300" : "#E5EAEE",
					"gray-400" : "#D6D6E0",
					"gray-500" : "#B5B5C3",
					"gray-600" : "#80808F",
					"gray-700" : "#464E5F",
					"gray-800" : "#1B283F",
					"gray-900" : "#212121"
				}
			},
			"font-family" : "Poppins"
		};
	</script>
	<script
		src="${pageContext.request.contextPath}/assets/plugins/custom/prismjs/prismjs.bundle.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/scripts.bundle.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/menu-scripts.bundle.js"></script>
	<!--begin::Page Scripts(used by this page)-->
	<script src="${pageContext.request.contextPath}/assets/js/pages/custom/chat/chat.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/pages/widgets.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/plugins/custom/datatables/datatables.bundle.js"></script>
		
	<script
		src="${pageContext.request.contextPath}/assets/js/pages/crud/forms/widgets/bootstrap-daterangepicker.js"></script>
	<script src="${pageContext.request.contextPath}/JS/tenderCommon.js"></script>
	<script
		src="${pageContext.request.contextPath}/JS/supplier/supplierOrderConfirmation.js?v=06062022"></script>
	<!--end::Page Scripts-->
<script src="${pageContext.request.contextPath}/JS/supplier/supplierOrderHistoryData.js?v=wewq"></script>

</body>
<!--end::Body-->

</html>