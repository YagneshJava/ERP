<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8" />
<title>Customer Offers</title>
<meta name="description" content="" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<link rel="canonical" href="" />

<link rel="apple-touch-icon" sizes="180x180" href="${pageContext.request.contextPath}/assets/media/favicon/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32"	href="${pageContext.request.contextPath}/assets/media/favicon/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16"	href="${pageContext.request.contextPath}/assets/media/favicon/favicon-16x16.png">
<link rel="manifest" href="${pageContext.request.contextPath}/assets/media/favicon/site.webmanifest">
<meta name="msapplication-TileColor" content="#da532c">
<meta name="theme-color" content="#ffffff">
<link rel="stylesheet"	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" />
<link href="${pageContext.request.contextPath}/assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/assets/plugins/custom/prismjs/prismjs.bundle.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/assets/css/style.bundle.css"	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/assets/css/responsive.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/responsive.css"	rel="stylesheet" type="text/css" />
<link rel="stylesheet"	href="${pageContext.request.contextPath}/assets/css/sidebar.css">
<link href="${pageContext.request.contextPath}/assets/jqgrid/css/ui.jqgrid-bootstrap.min.css"	rel="stylesheet" type="text/css" />
<script src="${pageContext.request.contextPath}/assets/plugins/global/plugins.bundle.js"></script>
<script src="${pageContext.request.contextPath}/assets/jqgrid/js/jquery.jqgrid.min.js"></script>
<link href="${pageContext.request.contextPath}/assets/css/sweetalert2.min.css" rel="stylesheet" type="text/css" />
</head>
<body id="kt_body" class="header-fixed header-mobile-fixed sidebar-enabled aside-enabled aside-fixed aside-minimize-hoverable aside-minimize">
<jsp:include page="../header.jsp"></jsp:include>

<div class="d-flex flex-column flex-root bg-color">
	<div class="d-flex flex-row flex-column-fluid page">
		<jsp:include page="../sidebar.jsp"></jsp:include>
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
												<a href="customerOffersFromSupplier" class="text-dark font-weight-bold my-1 mr-5">Customer Offers </a>
											</h5>
										</li>


									</ul>
								</div>
								<!--end::Page Heading-->
							</div>
							<!--end::Info-->

							<!--begin::Toolbar-->
							<div class="d-flex align-items-center" style="display: none !important;">


							</div>
							<!--end::Toolbar-->

						</div>
					</div>
					<!--end::Subheader-->

					<!--begin::Entry-->
					<div class="d-flex flex-column-fluid">
						<input type="hidden" id="supplierId" name="supplierId" value="${sessionScope.userCompanyDetails.getId()}">
						<!--begin::Container-->
						<div class="container-fluid">
							<!--begin::Dashboard-->
							<!--begin::Row-->
							<div class="row mt-0 mt-lg-4" id="confirmOrderDiv">
								<div class="col-xl-12">

 								<!--begin::Global Search-->
                                    <div class="quick-search quick-search-inline mb-10 w-28" id="activeOffersSearchDiv">
                                        <!--begin::Form-->
                                        <form method="get" class="quick-search-form g-search">
                                            <div class="input-group rounded bg-white input-group-lg g-search-box">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text">
                                                        <i class="flaticon2-search-1 icon-md"></i>
                                                    </span>
                                                </div>
                                                <input type="text" class="form-control h-40px search-form pl-3" placeholder="Search..." id = "activeOffersSrch">
                                                <div class="input-group-append">
                                                    <!--begin::Dropdown-->
                                                    <div class="dropdown dropdown-inline" title="Show Search Options">
                                                        <a href="#" class="btn btn-icon ml-3 h-40px w-40px flex-shrink-0 d-none" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
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
                                   <div class="quick-search quick-search-inline mb-10 w-28" id="stockSearchDiv" style="display: none;">
                                        <!--begin::Form-->
                                        <form method="get" class="quick-search-form g-search">
                                            <div class="input-group rounded bg-white input-group-lg" style="box-shadow: 3px 3px 7px 0px #73737c;">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text">
                                                        <i class="flaticon2-search-1 icon-md"></i>
                                                    </span>
                                                </div>
                                                <input type="text" class="form-control h-40px search-form pl-3" placeholder="Search..." id ="stockSearch">
                                                <div class="input-group-append">
                                                    <!--begin::Dropdown-->
                                                    <div class="dropdown dropdown-inline" title="Show Search Options">
                                                        <a href="#" class="btn btn-icon ml-3 h-40px w-40px flex-shrink-0 d-none" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" style="fill: #73737c;">
                                                                <path d="M3 17v2h6v-2H3zM3 5v2h10V5H3zm10 16v-2h8v-2h-8v-2h-2v6h2zM7 9v2H3v2h4v2h2V9H7zm14 4v-2H11v2h10zm-6-4h2V7h4V5h-4V3h-2v6z"></path>
                                                            </svg>
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

															<button type="button" onclick="srchOrderHistory()" class="btn btn-primary font-weight-bold btn-hover-light-primary  float-right  mt-3 mt-sm-0">Search</button>
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
												class="bg-white effect1 rounded p-2 pr-3 pl-3 d-flex flex-grow-1 flex-sm-grow-0"  style= "display: none !important;">
												<!--end::Form-->
											</div>


													<ul class="nav nav-bold nav-pills" id="myTab" role="tablist">
															<li class="nav-item">
																<a class="nav-link active" id="activOfferTab" data-toggle="tab" href="javascript:void(0)">
																	<span class="nav-icon">
																		<i class="flaticon2-percentage"></i>
																	</span>
																	<span class="nav-text">Active Offers</span>
																</a>
															</li>
															<li class="nav-item">
																<a class="nav-link" id="stockDataTab" data-toggle="tab" href="javascript:void(0)" onclick="" aria-controls="supplier">
																	<span class="nav-icon">
																		<i class="fas fa-tags"></i>
																	</span>
																	<span class="nav-text">Create Offers</span>
																</a>
															</li>
													</ul>
										</div>
										<!--end::Header-->

										<div class="card-body">
											<div class="table-responsive" id="activeOfferGridDiv">
												<table id="activeOffersGrid"></table>
												<div id="activeOffersPager"></div>
											</div>
											<div class="table-responsive" id="stockGridDiv" style="display: none">
											<div class="row">
											<div class="col-md-12 text-right">
											<button class="btn font-weight-bold btn-light-success mr-2" id="makeOfferBtn">Make Offer <span class="label label-danger ml-2" id="lineCounter">0</span></button>
											</div>
											</div>
												<table id="stockGrid"></table>
                                                <div id="stockGridPager"></div>
											</div>

											<!--end::Table-->

										</div>
										<!--end::Body-->
									</div>
									<!--end::Card-->


								</div>
							</div>

							<!--begin::Container-->
							<!--end::Container-->



							<!--end::Row-->

							<!--end::Row-->

							<!--end:: customer-verification.html -->

							<!--end:: New Tender Modal-->
  

						</div>
						<!--end::Container-->
						
					</div>
					<!--end::Entry-->
					
					
					
				</div>
				<!--end::Content-->
				<div class="modal fade" data-backdrop="static" id="createOfferModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalSizeXl" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-70" role="document">
                <div class="modal-content">
                    	
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel"> Set Offers </h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <i aria-hidden="true" class="ki ki-close"></i>
                        </button>
                    </div>

                    <div class="modal-body">
                    
                    <div class="table-responsive" >
							<table id="createOffersGrid"></table>
							<div id="createOffersGridPager"></div>  
					</div>
                    
                    <div class="modal-footer">
                        <button type="button" class="btn btn-success font-weight-bold" onclick="saveOffers()" disabled = "disabled" id="saveOffers">  Save   </button>
                        <button type="button" class="btn btn-danger font-weight-bold" data-dismiss="modal"> Close </button>
                    </div>
</div>
                </div>
            </div>
        </div>

				<jsp:include page="../footer.jsp"></jsp:include>

			</div>
	</div>
</div>

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
	
	<script	src="${pageContext.request.contextPath}/assets/plugins/custom/prismjs/prismjs.bundle.js"></script>
	<script src="${pageContext.request.contextPath}/JS/jquery-ui.js"></script>
	<script	src="${pageContext.request.contextPath}/assets/js/scripts.bundle.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/menu-scripts.bundle.js"></script>
	<!--begin::Page Scripts(used by this page)-->
	<script src="${pageContext.request.contextPath}/assets/js/pages/widgets.js"></script>
	<script	src="${pageContext.request.contextPath}/assets/plugins/custom/datatables/datatables.bundle.js"></script>
		
	<script	src="${pageContext.request.contextPath}/assets/js/pages/crud/forms/widgets/bootstrap-daterangepicker.js"></script>
	<script src="${pageContext.request.contextPath}/JS/tenderCommon.js"></script>
	
	<script src="${pageContext.request.contextPath}/JS/supplier/customerOffersFromSupplier.js?v=wewq"></script>
	<!--end::Page Scripts-->
</body>
</html>