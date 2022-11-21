<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<!--begin::Head-->
<head>
		
		<base href="">
		<meta charset="utf-8" />
		<title> Quotation </title>
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
		<link href="${pageContext.request.contextPath}/assets/css/sweetalert2.min.css" rel="stylesheet" type="text/css" />
		<link href="${pageContext.request.contextPath}/assets/css/responsive.css" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/sidebar.css">

		<link	href="${pageContext.request.contextPath}/assets/jqgrid/css/ui.jqgrid-bootstrap.min.css"	rel="stylesheet" type="text/css" />
        <script src="${pageContext.request.contextPath}/assets/plugins/global/plugins.bundle.js"></script>
        <script src="${pageContext.request.contextPath}/assets/jqgrid/js/jquery.jqgrid.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/validator/js/bootstrapValidator.min.js"></script>

</head>
<!--end::Head-->

<!--begin::Body-->
<body id="kt_body" class="header-fixed header-mobile-fixed sidebar-enabled aside-enabled aside-fixed aside-minimize-hoverable aside-minimize zoom">
	<!--begin::Main-->
	
	<div id="div_block"></div>

	<jsp:include page="../header.jsp"></jsp:include>
	
	<div class="d-flex flex-column flex-root bg-color">
		<!--begin::Page-->
		<div class="d-flex flex-row flex-column-fluid page">
			<jsp:include page="../sidebar.jsp"></jsp:include>
			<!--begin::Wrapper-->
			<div class="d-flex flex-column flex-row-fluid wrapper"
				id="kt_wrapper">

				<!--begin::Content-->
				<div class="content d-flex flex-column flex-column-fluid" id="kt_content">
				
					<!--begin::Subheader-->
						<div class="subheader py-2 py-lg-4 subheader-transparent" id="kt_subheader">
							<div class="container-fluid  d-flex align-items-center justify-content-between flex-wrap flex-sm-nowrap">
								<!--begin::Info-->
								<div class="d-flex align-items-center flex-wrap mr-1">
									<!--begin::Page Heading-->
									<div class="d-flex align-items-baseline flex-wrap mr-5">
										<!--begin::Page Title-->
										
										<!--end::Page Title-->
										<!--begin::Breadcrumb-->
										<ul class="breadcrumb breadcrumb-dot breadcrumb-transparent  font-weight-bold p-0 my-2 font-size-sm" id="qtHeadUl">
											<li class="breadcrumb-item text-muted">
												<a href="wellcomeCustomerPage" class="text-muted">Dashboard</a>
											</li>
											<li class="breadcrumb-item text-muted" >
												<h5><a href="customerTenderPage" class="text-dark font-weight-bold" id="qtHref">Quotation</a></h5>
											</li>
<!-- 										<li class="breadcrumb-item text-muted " style="" -->
<!-- 											id="qtDetailLi"> -->
<!-- 											<h5> -->
<!-- 												<a href="#" class="text-dark font-weight-bold">Quotation Details</a> -->
<!-- 											</h5> -->
<!-- 										</li> -->
									</ul> 
										
<!-- 										<ul class="breadcrumb breadcrumb-dot breadcrumb-transparent  font-weight-bold p-0 my-2 font-size-sm"> -->
<!-- 											<li class="breadcrumb-item text-muted" style="" id ="qtDetailLi"> -->
<!-- 												<h5><a href="#" class="">Quotation Details</a></h5> -->
<!-- 											</li> -->
<!-- 											</ul> -->
										<!--end::Breadcrumb-->
									</div>
									<!--end::Page Heading-->
								</div>
								<!--end::Info-->

								<!--begin::Toolbar-->
								<!-- <div class="d-flex align-items-center">
								
								<a onclick="manageView()" class="btn btn-icon btn-sm btn-danger" data-toggle="tooltip" data-placement="top" title="" data-original-title="Back">
									<span class="svg-icon  svg-icon-2x">begin::Svg Icon | path:C:\wamp64\www\keenthemes\legacy\metronic\theme\html\demo6\dist/../src/media/svg/icons\Navigation\Left-2.svg<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
										<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
											<polygon points="0 0 24 0 24 24 0 24"></polygon>
											<rect fill="#000000" opacity="0.3" transform="translate(15.000000, 12.000000) scale(-1, 1) rotate(-90.000000) translate(-15.000000, -12.000000) " x="14" y="7" width="2" height="10" rx="1"></rect>
											<path d="M3.7071045,15.7071045 C3.3165802,16.0976288 2.68341522,16.0976288 2.29289093,15.7071045 C1.90236664,15.3165802 1.90236664,14.6834152 2.29289093,14.2928909 L8.29289093,8.29289093 C8.67146987,7.914312 9.28105631,7.90106637 9.67572234,8.26284357 L15.6757223,13.7628436 C16.0828413,14.136036 16.1103443,14.7686034 15.7371519,15.1757223 C15.3639594,15.5828413 14.7313921,15.6103443 14.3242731,15.2371519 L9.03007346,10.3841355 L3.7071045,15.7071045 Z" fill="#000000" fill-rule="nonzero" transform="translate(9.000001, 11.999997) scale(-1, -1) rotate(90.000000) translate(-9.000001, -11.999997) "></path>
										</g>
									</svg>end::Svg Icon</span>
								</a>
		
								</div> -->
								<!--end::Toolbar-->
								
							</div>
						</div>
						<!--end::Subheader-->






				
					<!--begin::Entry-->
					<div class="d-flex flex-column-fluid">
						<input type="hidden" id="custId" name="custId" value="${sessionScope.userCompanyDetails.getId()}">
						<!--begin::Container-->
						<div class="container-fluid">
							<div class="row mt-0 mt-lg-4" id="newQuotationDiv">
									<div class="col-md-12">
									<!--begin::Global Search-->
                                    <div class="quick-search quick-search-inline mb-10 w-28" id="kt_quick_search_inline" style="width: 28%;">
                                        <!--begin::Form-->
                                        <form method="get" class="quick-search-form g-search">
                                            <div class="input-group rounded bg-white input-group-lg g-search-box">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text">
                                                        <i class="flaticon2-search-1 icon-md"></i>
                                                    </span>
                                                </div>
                                                <input type="text" class="form-control h-40px search-form pl-3" placeholder="Search..." id="mainSrch">
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
                                                                <input type="text" id="srchQuotationId" name="srchQuotationId" class="form-control border-2 font-weight-bold pl-2" placeholder="Quotation ID">
                                                            </div>
                                                            
                                                            <div class="input-group mb-3">
                                                                <select id="srchStatus" name="srchStatus" style="width:auto" class="form-control border-0 font-weight-bold pl-2">
																	 <option value="" selected=""> Select Status</option>
																	 <option value="Open">Open</option>
																	 <option value="Submitted">Submitted</option>
																	 <option value="Confirmed">Confirmed</option>
																	 <option value="Closed">Closed</option>
												                      <option value="Cancelled">Cancelled</option>
																</select>
                                                            </div>
                                                            
                                                             <div class="input-group mb-3">
                                                                <select id="srchDateType" name="srchDateType" style="width:auto" class="form-control border-0 font-weight-bold pl-2">
											                      <option value="" selected=""> Select Date Type  </option>
											                      <option value="QUOTATIONDATE"> Created Date  </option>
											                      <option value="DEADLINEDATE"> Final Date </option>
											                      <option value="DELIVERYDATE"> Delivery Date </option>
											                    </select>
                                                            </div>
                                                             <div class="input-group input-icon input-icon-right mb-3">
                                                                <div id="custQtDateRange" class="w-100" style="border-bottom-right-radius: 0.675rem !important; border-top-right-radius: 0.675rem !important;">
                                                                    <input id="srchStartEndDate" type="text" class="form-control border-2 font-weight-bold pl-2" placeholder="From Date &amp; To Date" data-toggle="modal" aria-haspopup="true" aria-expanded="false"  readonly="readonly">
                                                                    
                                                                    <span>
                                                                        <i class="icon-lg la la-calendar"></i>
                                                                    </span>
                                                                </div>
                                                            </div>
															<button type="button" onclick="getQuotationList()" class="btn btn-primary font-weight-bold btn-hover-light-primary  float-right  mt-3 mt-sm-0">
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
											<div class="card-header flex-wrap py-5 justify-content-end">
											
												<div class="bg-white effect1 rounded p-2 pr-3 pl-3 d-flex flex-grow-1 flex-sm-grow-0 quot-search-form" style="display: none !important;">
													<!--begin::Form-->
													<form id="quotationSearchForm" class="form d-flex flex-sm-row flex-column flex-grow-1 flex-sm-grow-0">
														<!--begin::Input-->
														<div class="d-flex align-items-center py-3 py-sm-0 px-sm-3 quot-id">
															<span class="svg-icon svg-icon-lg">
																<!--begin::Svg Icon | path:/metronic/theme/html/demo6/dist/assets/media/svg/icons/General/Search.svg-->
																<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
																	<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
																		<rect x="0" y="0" width="24" height="24" />
																		<path d="M14.2928932,16.7071068 C13.9023689,16.3165825 13.9023689,15.6834175 14.2928932,15.2928932 C14.6834175,14.9023689 15.3165825,14.9023689 15.7071068,15.2928932 L19.7071068,19.2928932 C20.0976311,19.6834175 20.0976311,20.3165825 19.7071068,20.7071068 C19.3165825,21.0976311 18.6834175,21.0976311 18.2928932,20.7071068 L14.2928932,16.7071068 Z" fill="#000000" fill-rule="nonzero" opacity="0.3" />
																		<path d="M11,16 C13.7614237,16 16,13.7614237 16,11 C16,8.23857625 13.7614237,6 11,6 C8.23857625,6 6,8.23857625 6,11 C6,13.7614237 8.23857625,16 11,16 Z M11,18 C7.13400675,18 4,14.8659932 4,11 C4,7.13400675 7.13400675,4 11,4 C14.8659932,4 18,7.13400675 18,11 C18,14.8659932 14.8659932,18 11,18 Z" fill="#000000" fill-rule="nonzero" />
																	</g>
																</svg>
																<!--end::Svg Icon-->
															</span>
															<input type="text" id="srchQuotationId" name="srchQuotationId" class="form-control border-0 font-weight-bold pl-2" placeholder="Quotation ID" />
														</div>
														<!--end::Input-->


														<!--begin:: options Input-->
														<div class="d-flex align-items-center py-3 py-sm-0 px-sm-3 quot-status">
															<span class="bullet bullet-ver h-25px d-none d-sm-flex mr-2"></span>
															<span class="svg-icon svg-icon-lg">
																<!--begin::Svg Icon | path:/metronic/theme/html/demo6/dist/assets/media/svg/icons/Layout/Layout-4-blocks.svg-->
																<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
																	<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
																		<rect x="0" y="0" width="24" height="24" />
																		<rect fill="#000000" x="4" y="4" width="7" height="7" rx="1.5" />
																		<path d="M5.5,13 L9.5,13 C10.3284271,13 11,13.6715729 11,14.5 L11,18.5 C11,19.3284271 10.3284271,20 9.5,20 L5.5,20 C4.67157288,20 4,19.3284271 4,18.5 L4,14.5 C4,13.6715729 4.67157288,13 5.5,13 Z M14.5,4 L18.5,4 C19.3284271,4 20,4.67157288 20,5.5 L20,9.5 C20,10.3284271 19.3284271,11 18.5,11 L14.5,11 C13.6715729,11 13,10.3284271 13,9.5 L13,5.5 C13,4.67157288 13.6715729,4 14.5,4 Z M14.5,13 L18.5,13 C19.3284271,13 20,13.6715729 20,14.5 L20,18.5 C20,19.3284271 19.3284271,20 18.5,20 L14.5,20 C13.6715729,20 13,19.3284271 13,18.5 L13,14.5 C13,13.6715729 13.6715729,13 14.5,13 Z" fill="#000000" opacity="0.3" />
																	</g>
																</svg>
																<!--end::Svg Icon-->
															</span>
															<select  id="srchStatus" name="srchStatus" style="width:auto" class="form-control border-0 font-weight-bold pl-2">
																 <option value=""  selected> Select Status</option>
																 <option value="Open"  >Open</option>
																 <option value="Submitted">Submitted</option>
																 <option value="Confirmed">Confirmed</option>
																 <option value="Closed">Closed</option>
											                      <option value="Cancelled">Cancelled</option>
															</select>
														</div>
														<!--end::Input-->



														<!--begin:: options Input-->
														<div class="d-flex align-items-center py-3 py-sm-0 px-sm-3 quot-datetype">
															<span class="bullet bullet-ver h-25px d-none d-sm-flex mr-2"></span>
															<span class="svg-icon svg-icon-lg">
																<!--begin::Svg Icon | path:/metronic/theme/html/demo6/dist/assets/media/svg/icons/Layout/Layout-4-blocks.svg-->
																<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
																	<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
																		<rect x="0" y="0" width="24" height="24" />
																		<rect fill="#000000" x="4" y="4" width="7" height="7" rx="1.5" />
																		<path d="M5.5,13 L9.5,13 C10.3284271,13 11,13.6715729 11,14.5 L11,18.5 C11,19.3284271 10.3284271,20 9.5,20 L5.5,20 C4.67157288,20 4,19.3284271 4,18.5 L4,14.5 C4,13.6715729 4.67157288,13 5.5,13 Z M14.5,4 L18.5,4 C19.3284271,4 20,4.67157288 20,5.5 L20,9.5 C20,10.3284271 19.3284271,11 18.5,11 L14.5,11 C13.6715729,11 13,10.3284271 13,9.5 L13,5.5 C13,4.67157288 13.6715729,4 14.5,4 Z M14.5,13 L18.5,13 C19.3284271,13 20,13.6715729 20,14.5 L20,18.5 C20,19.3284271 19.3284271,20 18.5,20 L14.5,20 C13.6715729,20 13,19.3284271 13,18.5 L13,14.5 C13,13.6715729 13.6715729,13 14.5,13 Z" fill="#000000" opacity="0.3" />
																	</g>
																</svg>
																<!--end::Svg Icon-->
															</span>
															<select id="srchDateType" name="srchDateType" style="width:auto" class="form-control border-0 font-weight-bold pl-2">
										                      <option value=""  selected> Select Date Type  </option>
										                      <option value="QUOTATIONDATE"  > Created Date  </option>
										                      <option value="DEADLINEDATE"> Final Date </option>
										                      <option value="DELIVERYDATE"> Delivery Date </option>
										                    </select>
														</div>
														<!--end::Input-->


														<!--begin::Input-->
														<div id='custQtDateRange' class="d-flex align-items-center py-3 py-sm-0 px-sm-3 quot-date">
														<span class="bullet bullet-ver h-25px d-none d-sm-flex mr-2"></span>
															<i class="icon-xl la la-calendar"></i>
															<input id="srchStartEndDate"  type="text" class="form-control border-0 font-weight-bold pl-2" placeholder="From Date & To Date" data-toggle="modal" aria-haspopup="true" aria-expanded="false" data-target="#subheader7Modal" readonly="readonly" />
														</div>
														<!--end::Input-->

														<button type="button" onclick="getQuotationList()" class="btn btn-primary font-weight-bold btn-hover-light-primary   mt-3 mt-sm-0">
															<i class="icon-lg la la-search"></i>
														</button>
													</form>

													
												</div>
												

												<div style="" class="float-right mt-7 download-quot"> 
												<a href="downloadQuotationFormat" class="btn  btn-light-info font-size-sm mr-5" title="Download Quotation Format"  data-container="body" data-toggle="tooltip" data-placement="top" title="Example content">
													  <i class="icon-lg la la-file-download"></i> 
													  <span class="download-quot-text">Download Quotation Format</span>
													</a>
														<a data-toggle="modal" data-target="#NewTenderModal"  class="btn btn-primary font-weight-bolder font-size-sm"> New Quotation </a> 
													</div>
											</div>
											<div class="card-body">
												<table class="table  table-hover  table-checkable nowrap" id="quotationDataTable">
												</table>
											</div>
									</div>
								</div>
							</div>
							
							<!--begin::Container-->
						<div class="row mt-0 mt-lg-4 " id="editQuotationDiv" style="display: none">
					
	
								<div class="col-xl-12">
									<!--begin::Card-->
									<div class="card card-custom card-collapsed" data-card="true" id="kt_card_4">
									
												<div  class="card-header">

												<div style="cursor: pointer;"  data-card-tool="toggle" title="Edit Tender" class="card-title w-97">
												<span class="card-icon  btn-sm btn btn-icon btn-outline-warning btn-hover-bg-light mr-3">
														<i class="fa la-pencil-alt text-warning"></i>
													</span>
												<h3 class="card-title align-items-start flex-column">
													<div class="mt-1">
													Quotation ID:<span class="mt-3  font-size-md" id="qtInfoId">   
													</span> |
													Status:<span class="font-weight-bold " id="qtInfoStatus"> </span>
													</div>

												</h3>
													
												<!-- <h3  class="card-label mr-1"> Edit Quotation  <small id = "qtHeadId" style = "display: none"></small></h3> -->	

													
												</div>

<!-- 												<div class="card-toolbar"> -->
<!-- 													<a onclick="manageView()" class="btn btn-icon btn-sm btn-danger" data-toggle="tooltip" data-placement="top" title="Back"> -->
<!-- 														<span class="svg-icon  svg-icon-2x">begin::Svg Icon | path:C:\wamp64\www\keenthemes\legacy\metronic\theme\html\demo6\dist/../src/media/svg/icons\Navigation\Left-2.svg<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1"> -->
<!-- 															<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"> -->
<!-- 																<polygon points="0 0 24 0 24 24 0 24"/> -->
<!-- 																<rect fill="#000000" opacity="0.3" transform="translate(15.000000, 12.000000) scale(-1, 1) rotate(-90.000000) translate(-15.000000, -12.000000) " x="14" y="7" width="2" height="10" rx="1"/> -->
<!-- 																<path d="M3.7071045,15.7071045 C3.3165802,16.0976288 2.68341522,16.0976288 2.29289093,15.7071045 C1.90236664,15.3165802 1.90236664,14.6834152 2.29289093,14.2928909 L8.29289093,8.29289093 C8.67146987,7.914312 9.28105631,7.90106637 9.67572234,8.26284357 L15.6757223,13.7628436 C16.0828413,14.136036 16.1103443,14.7686034 15.7371519,15.1757223 C15.3639594,15.5828413 14.7313921,15.6103443 14.3242731,15.2371519 L9.03007346,10.3841355 L3.7071045,15.7071045 Z" fill="#000000" fill-rule="nonzero" transform="translate(9.000001, 11.999997) scale(-1, -1) rotate(90.000000) translate(-9.000001, -11.999997) "/> -->
<!-- 															</g> -->
<!-- 														</svg>end::Svg Icon</span> -->
<!-- 													</a> -->
<!-- 												</div> -->

											</div>
						


										<div class="card-body">

												
												<div class="row ">

													<div class="col-xl-3">
														<!--begin::Input-->
														<div class="form-group">
															<label> Quotation ID </label> 
															<input type="text" id="savedQtId" name ="savedQtId" class="form-control form-control-lg" placeholder="" disabled/>
														</div>
														<!--end::Input-->
													</div>


													<div class="col-xl-3">
														<!--begin::Input-->
														<div class="form-group">
															<label> Representative </label> <input type="text"
																class="form-control form-control-lg" placeholder=""
																id="savedQtRep" name = "savedQtRep" disabled/>
														</div>
														<!--end::Input-->
													</div>

													<div class="col-xl-3">
														<!--begin::Input-->
														<div class="form-group">
															<label> Final Date </label>
															<div class="input-group date">
																<input type="text" class="form-control form-control-lg date-picker"
																	placeholder=""
																	id="savedFinalDate" name="savedFinalDate"  onkeydown="return false"/>
																<div class="input-group-append">
																	<span class="input-group-text"> <i
																		class="la la-calendar"></i>
																	</span>
																</div>
															</div>
														</div>
														<!--end::Input-->
													</div>

													<div class="col-xl-3">
														<!--begin::Input-->
														<div class="form-group">
															<label> Delivery Date </label>
															<div class="input-group date">
																<input type="text" class="form-control form-control-lg date-picker" placeholder=""
																	id="savedDeliveryDate" name="savedDeliveryDate"  onkeydown="return false"/>
																<div class="input-group-append">
																	<span class="input-group-text"> <i
																		class="la la-calendar"></i>
																	</span>
																</div>
															</div>
														</div>
														<!--end::Input-->
													</div>

												</div>



												<div class="row">

													

													<div class="col-xl-4">
														<!--begin::Input-->
														
														<div class="form-group" style="display: none">
															<input type="text"
																class="form-control form-control-lg" placeholder=""
															id="quotationStatus" name="quotationStatus" />
														</div>
														<!--end::Input-->
													</div>
															<div class="col-md-12 mt-5 mt-lg-0 text-right">
																<button class="btn btn-success font-weight-bold"  id = "updateQuotation" onclick="sbmtQtPopUp('update','You want to update the quotation information!','update')">
																	Update Quotation </button>
															</div>
												</div>
											<!--end::Form-->

										</div>

									</div>
									<div class="row mt-0 mt-lg-4 r-mt-10">
										<div class="col-xl-12">

											<!--begin::Card-->
											<div class="card card-custom" id="productandquantity">
											
											<button class="btn expandbtn d-flex justify-content-end pt-6 pr-7 pb-0">
		                                                    <span class="expandicon"><i class="fas fa-expand-arrows-alt"></i></span>
		                                                </button>

												<!--begin::Body-->
												<div class="card-body">
													<!--begin: Search Form-->

													<!--begin::Search Form-->
													<div class="" id = "addUpdateDiv">
														<div class="row align-items-center">
														
															<div class="col-lg-7 col-xl-7">
																<div class="row align-items-center">

																	<div class="col-md-7 my-2 my-md-0">
																		<div class="form-group">
																			<label> Product </label> <input type="text"
																				class="form-control form-control-lg twitter-typeahead" placeholder="" id="description" name ="description" >
																		</div>
																	</div>
																	
																	<div class="col-md-5 my-2 my-md-0" style="display: none">
																		<div class="form-group">
																			<label> BNFPipCode </label> <input type="text"
																				class="form-control form-control-lg" placeholder="" id="pipCode" name = "pipCode">
																		</div>
																	</div>

																	<div class="col-md-3 my-2 my-md-0">
																		<div class="form-group">
																			<label> Quantity </label> <input type="text"
																				class="form-control form-control-lg" placeholder="" id="quotedQty" name = "quotedQty" onkeypress="return isNumber(event)">
																		</div>
																	</div>
																	
																		<div class="col-md-2 my-2 my-md-0">
																		<div class="form-group">
																		<button class="btn btn-success btn-lg px-6 font-weight-bold mt-7" onclick="addLine()" id="addLineBtn">
																					Add 
																			</button>
																		</div>
																	</div>
																	
																</div>
															</div>
															
																														
															<div class="col-lg-5 col-xl-5 mt-5 mt-lg-0 text-right">
															
															<form id="updateQuotationLineFile" name="updateQuotationLineFile">
                                                                    
                                                                     <a href="" class="btn btn-info font-weight-bold mb-5" data-toggle="modal" data-target="#quotationfile">
                                                                            Upload Quotation File</a>

                                                                            <!-- begin : Modal -->
                                                                            <div class="modal fade" id="quotationfile" tabindex="-1" aria-labelledby="exampleModalLabel" style="display: none;" aria-modal="true">
                                                                                <div class="modal-dialog modal-dialog-centered" role="document">
                                                                                    <div class="modal-content">
                                                                                        <div class="modal-header">
                                                                                            <h5 class="modal-title" id="exampleModalLabel"> Upload Quotation File </h5>
                                                                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                                                <i aria-hidden="true" class="ki ki-close"></i>
                                                                                            </button>
                                                                                        </div>
                                                                                        
                                                                                            <div class="modal-body">
                                                                                            
                                                                                                <div class="form-group text-left">
                                                                                                    <label>Quotation File</label>
                                                                                                    <div></div>
                                                                                                    <div class="custom-file">
                                                                                                        <input type="file" class="custom-file-input" id="updateLineFile" name="lineFile" accept=".xlsx, .xls, .csv"> 
                                                                                                        <label class="custom-file-label border-3" for="customFile" id="updateLineFile"></label>
                                                                                                        <span>.xlsx, .xls, .csv</span>
                                                                                                    </div>
                                                                                                </div>
                                                                                                
                                                                                            </div>
                                                                                            <div class="modal-footer">
                                                                                                <button type="button" class="btn btn-success mr-2" data-dismiss="modal">Submit</button>
                                                                                                <button type="button" class="btn btn-danger mr-2" data-dismiss="modal">Close</button>
                                                                                            </div>
                                                                                        
                                                                                    </div>
                                                                                </div>
                                                                            </div></form>
															
															
															
																<form id="updateQuotationLineFile"
																	name="updateQuotationLineFile" class="d-none">
																	<div class="row">

																		<div class="col-md-9">
																			<div class="form-group">
																				<label>Quotation File</label>
																				<div></div>
																				<div class="custom-file">
																					<input type="file" class="custom-file-input"
																						id="updateLineFile" name="lineFile"
																						accept=".xlsx, .xls, .csv" /> 
																						<label class="custom-file-label" for="customFile" id="updateLineFile"></label>
																				</div>
																			</div>
																		</div>

																		<div class="col-md-3">
																			<div class="form-group quot-file">
																				<button
																					class="btn btn-primary btn-md px-6 font-weight-bold  mt-8"
																					type="button"
																					onclick="udpateQuotationLineFilePopUp()"
																					id="updateQuotationFileBtn">Upload File</button>
																			</div>
																		</div>

																	</div>
																</form>
															</div>
															
														</div>
														
													</div>
													<div class="card-body">
														<table id="quotationGrid"></table>
														<div id="quotationPager"></div>
													</div>
													<!--end::Table-->

												<div class="card-footer d-flex justify-content-between">
													<button type="button" class="btn btn-warning mr-2" onclick="manageView()"> Back </button>
													<div class=" text-right">
														<button type="button" class="btn btn-danger mr-2" onclick="deleteAllLinesPop()" id = "deleteAllLineBtn"> Delete All </button>
														<button type="button" class="btn btn-danger mr-2"  onclick = "sbmtQtPopUp('Cancelled','You want to cancel the quotation?','cancel')" id = "draftQtBtn"> Cancel </button>
														<button type="button" class="btn btn-success " onclick = "sbmtQtPopUp('Submitted','You want to submit the Quotation to Suppliers?','submit')" id = "submitQtBtn"> Submit </button>
													</div>
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
			<div class="modal fade" data-backdrop="static" id="NewTenderModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalSizeXl" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-xl" role="document">
                <div class="modal-content">
                    	
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel"> New Quotation </h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <i aria-hidden="true" class="ki ki-close"></i>
                        </button>
                    </div>

                    <div class="modal-body">
                    
                        <form class="form" id="newQuotationForm" name ="newQuotationForm" enctype="multipart/form-data">
                    		
                            <div class="row">

                                <div class="col-xl-4">
                                    <!--begin::Input-->
                                    <div class="form-group">
                                    <label for="">  Select Representative  </label>
                                    <select class="form-control form-control-lg" id = "representative" name = "representative" autofocus>
                                    <option value="">Select Rep</option>
                                    </select>
                                </div>
                                    <!--end::Input-->
                                </div>


                                <div class="col-xl-4">
                                    <!--begin::Input-->
                                    <div class="form-group">
                                        <label>  Final Date  </label>
                                        <div class="input-group date">
                                            <input type="text" class="form-control date-picker" id="finalUploadDate" name = "finalUploadDate" placeholder="Select date" autocomplete="off"  onkeydown="return false"/>
                                            <div class="input-group-append">
                                                <span class="input-group-text">
                                                    <i class="la la-calendar-check-o"></i>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                    <!--end::Input-->
                                </div>

                                <div class="col-xl-4">
                                    <!--begin::Input-->
                                    <div class="form-group">
                                        <label>  Delivery Date  </label>
                                        <div class="input-group date">
                                            <input type="text" class="form-control date-picker" id="deliveryDate" name = "deliveryDate" placeholder="Select date" autocomplete="off" onkeydown="return false"/>
                                            <div class="input-group-append">
                                                <span class="input-group-text">
                                                    <i class="la la-calendar-check-o"></i>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                    <!--end::Input-->
                                </div>

                            </div>


                            <div class="row">
                                
                                <div class="col-xl-4">
                                    <!--begin::Input-->
                                    <div class="form-group">
                                        <label>Quotation File</label>
                                        <div class="custom-file">
                                            <input type="file" class="custom-file-input form-control-lg" id="lineFile" name = "lineFile" accept=".xlsx, .xls, .csv"/>
                                            <label class="custom-file-label" for="customFile" id="lineFielLabel">   </label>
                                        </div>
                                    </div>
                                    <!--end::Input-->
                                </div>
                                <div class="col-xl-4">
                                    <!--begin::Input-->
                                    <div class="form-group">
                                    <label for="">  Select Location  </label>
                                    <select class="form-control form-control-lg" id = "location" name = "addressId"  autocomplete="off">
                                    </select>
                                </div>
                                    <!--end::Input-->
                                </div>

													<div class="col-xl-4">
														<div class="form-group">
															<label for="exampleTextarea">Full Address</label>
															<textarea class="form-control" disabled="disabled"
																rows="1" id="fullAddress"></textarea>
														</div>
													</div>
                                
                            </div>

                    <input type="hidden" id="customerId" name="customerId" value="${sessionScope.userCompanyDetails.getId()}">
                    <!--end::Form-->
                    

                    <div class="modal-footer">
                   		
                        <button class="btn btn-success font-weight-bold" name = "action" type="submit"> Save  </button>
                        <button type="button" class="btn btn-warning font-weight-bold" onclick="resetQtModal()">  Reset   </button>
                        <button type="button" class="btn btn-danger font-weight-bold" data-dismiss="modal"> Close </button>
                    </div>
</form>
</div>
                </div>
            </div>
        </div>
        <!--end:: New Tender Modal-->
        
        
						
						
						<!-- StatusModal Modal HTML -->
						<div id="StatusModal" class="modal fade">
							<div class="modal-dialog modal-confirm modal-dialog-centered modal-md">
								<div class="modal-content">
									<div class="modal-header">
										<div class="icon-box">
											<i class="la la-check-circle"></i>
										</div>				
										<h4 class="modal-title w-100 text-success"> Quotation  File <br> Successfully Uploaded </h4>	
									</div>
									<div class="modal-body">
									
										<div class="alert alert-custom alert-light-danger fade show mb-5" role="alert">
											<div class="alert-icon">
												<i style=" margin-top: -13px;" class="icon-xxxl la la-warning"></i>
											</div>
											<div class="alert-text">
											<strong id="failedTotalLine">   </strong> Row Not Uploaded   
											<p class="pt-1" id = "failedRows">  </p>
											</div>									
										</div>
										
										
										
										<div class="card card-custom card-fit card-border mt-8">
			
												<div style="padding: 1rem 1rem;" class="card-body pa-0 pt-0">
											      <div class="widget">
													<!-- Classic Heading -->
													<h4 class="classic-title"><span> Note </span></h4>
												<ul>
												<li>  Kindly Make sure you have entered valid Quantity and Pipcode. </li>
												</ul>
												</div>
												  </div>
											</div>
																					

									

										
									</div>
									
									<div class="modal-footer">
										<button class="btn btn-success btn-block" data-dismiss="modal" onclick="showSecondDiv()" id="newQuotaionSaveBtn">OK</button>
										<button class="btn btn-success btn-block" data-dismiss="modal" id="updateQuotaionBtn" style="display: none">OK</button>
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

				<jsp:include page="../footer.jsp"></jsp:include>

			</div>
			<!--end::Wrapper-->

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
	
	<!--begin:: Customer suggestions Modal-->
	<div class="modal fade hide" id="ViewCustomerSuggestionModal" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalSizeXl" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered modal-xl"
			role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="ViewCustomerSuggestionModalLabel">Alternates</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<i aria-hidden="true" class="ki ki-close"></i>
					</button>
				</div>
				<div class="modal-body">
					<table id="customerSuggestion"></table>
					<div id="customerSuggestionPager"></div>
				</div>
				 <div class="modal-footer">
					<button type="button" class="btn btn-light-danger font-weight-bold" data-dismiss="modal">Close</button>
<!-- 					<button type="button" class="btn btn-primary font-weight-bold">Save changes</button> -->
				</div>
			</div>
		</div>
	</div>
	<!--end::Customer History  Modal-->

	<!--begin::Global Config(global config for global JS scripts)-->
	<script>var KTAppSettings = { "breakpoints": { "sm": 576, "md": 768, "lg": 992, "xl": 1200, "xxl": 1200 }, "colors": { "theme": { "base": { "white": "#ffffff", "primary": "#8950FC", "secondary": "#E5EAEE", "success": "#1BC5BD", "info": "#8950FC", "warning": "#FFA800", "danger": "#F64E60", "light": "#F3F6F9", "dark": "#212121" }, "light": { "white": "#ffffff", "primary": "#E1E9FF", "secondary": "#ECF0F3", "success": "#C9F7F5", "info": "#EEE5FF", "warning": "#FFF4DE", "danger": "#FFE2E5", "light": "#F3F6F9", "dark": "#D6D6E0" }, "inverse": { "white": "#ffffff", "primary": "#ffffff", "secondary": "#212121", "success": "#ffffff", "info": "#ffffff", "warning": "#ffffff", "danger": "#ffffff", "light": "#464E5F", "dark": "#ffffff" } }, "gray": { "gray-100": "#F3F6F9", "gray-200": "#ECF0F3", "gray-300": "#E5EAEE", "gray-400": "#D6D6E0", "gray-500": "#B5B5C3", "gray-600": "#80808F", "gray-700": "#464E5F", "gray-800": "#1B283F", "gray-900": "#212121" } }, "font-family": "Poppins" };</script>
	<!--end::Global Config-->
		<script src="${pageContext.request.contextPath}/assets/plugins/custom/prismjs/prismjs.bundle.js"></script>
		<script src="${pageContext.request.contextPath}/JS/jquery-ui.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/scripts.bundle.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/menu-scripts.bundle.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/pages/widgets.js"></script>
		<script src="${pageContext.request.contextPath}/assets/plugins/custom/datatables/datatables.bundle.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/pages/crud/forms/widgets/bootstrap-daterangepicker.js"></script>
		<script src="${pageContext.request.contextPath}/JS/tenderCommon.js"></script>
		<script src="${pageContext.request.contextPath}/JS/customer/quotation.js?v=17721"></script>	
		
		
		<script type="text/javascript">
		$(document).ready(function () {

		    $('#openBtn').click(function () {
		        $('#myModal').modal({
		            show: true
		        })
		    });

		        $(document).on('show.bs.modal', '.modal', function (event) {
		            var zIndex = 1040 + (10 * $('.modal:visible').length);
		            $(this).css('z-index', zIndex);
		            setTimeout(function() {
		                $('.modal-backdrop').not('.modal-stack').css('z-index', zIndex - 1).addClass('modal-stack');
		            }, 0);
		        });


		});
		</script>
		
</body>
<!--end::Body-->
</html>