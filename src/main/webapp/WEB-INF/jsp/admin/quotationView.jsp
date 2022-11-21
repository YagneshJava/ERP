<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>

    <html lang="en">
    <!--begin::Head-->

    <head>
        <meta charset="utf-8" />
        <title> Customer Verification </title>
        <meta name="description" content="" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <link rel="canonical" href="https://keenthemes.com/metronic" />
        <!--begin::Fonts-->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" />
        <!--end::Fonts-->

        <!--begin::Page Vendors Styles(used by this page)-->
        <%-- 		<link href="${pageContext.request.contextPath}/assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css" /> --%>
            <!--end::Page Vendors Styles-->

            <!--begin::Global Theme Styles(used by all pages)-->
            <link href="${pageContext.request.contextPath}/assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
            <link href="${pageContext.request.contextPath}/assets/plugins/custom/prismjs/prismjs.bundle.css" rel="stylesheet" type="text/css" />
            <link href="${pageContext.request.contextPath}/assets/css/style.bundle.css" rel="stylesheet" type="text/css" />
            <link href="${pageContext.request.contextPath}/assets/css/responsive.css" rel="stylesheet" type="text/css">
            <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/sidebar.css">

            <link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/media/logos/favicon.ico" />
            <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/jqgrid/css/ui.jqgrid-bootstrap.min.css">
            <script src="${pageContext.request.contextPath}/assets/plugins/global/plugins.bundle.js"></script>
            <script src="${pageContext.request.contextPath}/assets/jqgrid/js/jquery.jqgrid.min.js"></script>

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
                                        <ul class="breadcrumb breadcrumb-transparent breadcrumb-dot font-weight-bold p-0 my-2 font-size-sm">
                                            <li class="breadcrumb-item text-muted">
                                                <a href="dashboard.html" class="text-muted"> Admin </a>
                                            </li>
                                            <li class="breadcrumb-item text-muted">
                                                <a href="" class="text-muted">
                                                    <h5 class="text-dark font-weight-bold my-1 mr-5"> Quotations View </h5>
                                                </a>
                                            </li>
                                        </ul>
                                        <!--end::Breadcrumb-->
                                    </div>
                                    <!--end::Page Heading-->
                                </div>
                            </div>
                        </div>
                        <!--end::Subheader-->






                        <!--begin::Entry-->
                        <div class="d-flex flex-column-fluid">

                            <!--begin::Container-->
                            <div class="container-fluid">
                                <div class="row mt-0 mt-lg-4">
                                    <div class="col-xl-12">

<!--begin::Global Search-->
                                    <div class="quick-search quick-search-inline mb-10 w-28" id="kt_quick_search_inline">
                                        <!--begin::Form-->
                                        <form  class="quick-search-form g-search">
                                            <div class="input-group rounded bg-white input-group-lg g-search-box">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text">
                                                        <i class="flaticon2-search-1 icon-md"></i>
                                                    </span>
                                                </div>
                                                <input type="text" class="form-control h-40px search-form pl-3" placeholder="Search..." id="srchMain">
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
                                                                <input type="text" id="customerId" name="customerId" class="form-control border-0 font-weight-bold pl-2 ui-autocomplete-input" placeholder="Customer ID" autocomplete="off">
                                                            </div>
                                                            <div class="input-group mb-3">
                                                                <input type="text" id="quotationId" name="quotationId" class="form-control border-0 font-weight-bold pl-2" placeholder="Quotation ID">
                                                            </div>
                                                            <div class="input-group mb-3">
                                                                <select id="status" name="status" style="width:auto" class="form-control border-0 font-weight-bold pl-2">
																 <option value="" selected=""> Select Status</option>
																 <option value="Open">Open</option>
											                      <option value="Closed">Closed</option>
											                      <option value="Submitted">Submitted</option>
											                      <option value="Cancelled">Cancelled</option>
											                      <option value="Confirmed">Confirmed</option>
															</select>
                                                            </div>
                                                             <div class="input-group mb-3">
                                                                <select id="dateType" name="dateType" style="width:auto" class="form-control border-0 font-weight-bold pl-2">
											                      <option value="" selected=""> Select Date Type  </option>
											                      <option value="QUOTATIONDATE"> Quotation Date  </option>
											                      <option value="DEADLINEDATE"> Closing Date </option>
											                      <option value="DELIVERYDATE"> Delivery Date </option>
											                    </select>
                                                            </div>
                                                            
                                                            <div class="input-group input-icon input-icon-right mb-3">
                                                                <div id="quotationDateRanger" class="w-100" style="border-bottom-right-radius: 0.675rem !important; border-top-right-radius: 0.675rem !important;">
                                                                    <input id="startEndDate" type="text" class="form-control border-2 font-weight-bold pl-2" placeholder="From Date &amp; To Date" data-toggle="modal" aria-haspopup="true" aria-expanded="false" data-target="#subheader7Modal" readonly="readonly">
                                                                    
                                                                    <span>
                                                                        <i class="icon-lg la la-calendar"></i>
                                                                    </span>
                                                                </div>
                                                            </div>

															<button class="btn btn-primary font-weight-bold btn-hover-light-primary float-right    mt-3 mt-sm-0" onclick="getQuotationViewListFunc()" type="button" id="searchBtn">
																Search
															</button>
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
                                                    <form id="quotationViewForm" class="form d-flex flex-sm-row flex-column flex-grow-1 flex-sm-grow-0">
                                                        <div class="d-flex align-items-center py-3 py-sm-0 px-sm-3">
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
                                                            <input type="text" id="customerId" name="customerId" class="form-control border-0 font-weight-bold pl-2" placeholder="Customers" />
                                                        </div>
                                                        <!--end::Input-->


                                                        <!--begin::Input-->
                                                        <div class="d-flex align-items-center py-3 py-sm-0 px-sm-3">
                                                            <span class="bullet bullet-ver h-25px d-none d-sm-flex mr-2"></span>
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
                                                            <input type="text" id="quotationId" name="quotationId" class="form-control border-0 font-weight-bold pl-2" placeholder="Quotation ID" />
                                                        </div>
                                                        <!--end::Input-->


                                                        <!--begin:: options Input-->
                                                        <div class="d-flex align-items-center py-3 py-sm-0 px-sm-3">
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
                                                            <select id="status" name="status" style="width:auto" class="form-control border-0 font-weight-bold pl-2">
														 <option value=""  selected> Select Status</option>
														 <option value="Open"  >Open</option>
									                      <option value="Closed">Closed</option>
									                      <option value="Submitted">Submitted</option>
									                      <option value="Cancelled">Cancelled</option>
									                      <option value="Confirmed">Confirmed</option>
													</select>
                                                        </div>
                                                        <!--end::Input-->



                                                        <!--begin:: options Input-->
                                                        <div class="d-flex align-items-center py-3 py-sm-0 px-sm-3">
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
                                                            <select id="dateType" name="dateType" style="width:auto" class="form-control border-0 font-weight-bold pl-2">
								                      <option value=""  selected> Select Date Type  </option>
								                      <option value="QUOTATIONDATE"  > Quotation Date  </option>
								                      <option value="DEADLINEDATE"> Closing Date </option>
								                      <option value="DELIVERYDATE"> Delivery Date </option>
								                    </select>
                                                        </div>
                                                        <!--end::Input-->


                                                        <!--begin::Input-->
                                                        <div id='kt_daterangepicker_2' class="d-flex align-items-center py-3 py-sm-0 px-sm-3">
                                                            <span class="bullet bullet-ver h-25px d-none d-sm-flex mr-2"></span>
                                                            <i class="icon-xl la la-calendar"></i>
                                                            <input id="startEndDate" type="text" class="form-control border-0 font-weight-bold pl-2" placeholder="From Date & To Date" data-toggle="modal" aria-haspopup="true" aria-expanded="false" data-target="#subheader7Modal" readonly="readonly" />
                                                        </div>
                                                        <!--end::Input-->

                                                        <button id="searchQuotation" type="submit" class="btn btn-primary font-weight-bold btn-hover-light-primary   mt-3 mt-sm-0">
													<i class="icon-lg la la-search"></i>
												</button>
                                                    </form>
                                                    <!--end::Form-->
                                                </div>
                                            </div>
                                            <div class="card-body">
                                                	
                                                	<!-- Begin :: modal -->
                                                	
													<div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true" >
													    <div class="modal-dialog modal-dialog-centered modal-xl">
													        <div class="modal-content">
													           
													           <div class="modal-header">
													           
													           
				                                                    <h3 class="modal-title align-items-start flex-column">
				                                                        Quotation Details
				                                                                     
                                                    				</h3>

                                               				
                                               				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
													                    <i aria-hidden="true" class="ki ki-close"></i>
													                </button>
													             
													            </div>
													            
													            <div class="modal-body pt-3 pr-5 pl-5">
													            
													            
													            
													            
													            <div class="row">
                            
									                            	<div class="col-lg-3 col-xl-3 mb-5 d-none">
																			<!--begin::Iconbox-->
																			<div class="card card-custom mb-8 mb-lg-0 bg-success card-shadowless gutter-b">
																				<div class="card-body">
																					<div class="d-flex align-items-center">
																						
																						<div class="d-flex flex-column" style="line-height: 0; margin-bottom: -12px;">
																							<p class="card-title font-weight-bolder text-white text-hover-state-dark  mb-4 d-block" style="font-size: 12px;"> Quotation ID </p>
										                                                	<input type="text" class="text-white font-size-h6 font-weight-bolder mr-2 w-100" style="border: 0;background-color: #14c4bc;" disabled="disabled"  value="Q_00668">
									                                          			</div>
																					</div>
																				</div>
																			</div>
																			<!--end::Iconbox-->
																		</div>
																		
																		<div class="col-lg-4 col-xl-4 mb-5">
																			<!--begin::Iconbox-->
																			<div class="card card-custom bg-warning card-stretch gutter-b">
																				<div class="card-body">
																					<div class="d-flex align-items-center">
																						
																						<div class="d-flex flex-column" style="line-height: 0; margin-bottom: -12px;">
																							<p class="card-title font-weight-bolder text-white text-hover-state-dark  mb-4 d-block" style="font-size: 12px;"> Customer Name </p>
										                                                	<input type="text" class="text-white font-size-h6 font-weight-bolder mr-2 w-100" style="border: 0;background-color: #ffa82d;" disabled="disabled"  id="modalCustomerName" name="customerName" >
									                                          			</div>
																					</div>
																				</div>
																			</div>
																			<!--end::Iconbox-->
																		</div>
																		
																		<div class="col-lg-4 col-xl-4 mb-5">
																			<!--begin::Iconbox-->
																			<div class="card card-custom bg-info card-stretch gutter-b">
																				<div class="card-body">
																					<div class="d-flex align-items-center">
																						
																						<div class="d-flex flex-column" style="line-height: 0; margin-bottom: -12px;">
																							<p class="card-title font-weight-bolder text-white text-hover-state-dark  mb-4 d-block" style="font-size: 12px;"> Delivery Date </p>
										                                                	<input type="text" class="text-white font-size-h6 font-weight-bolder mr-2 w-100" style="border: 0;background-color: #8c53f7;" disabled="disabled"  id="modalDeliveryDate" name="deliveryDate">
									                                          			</div>
																					</div>
																				</div>
																			</div>
																			<!--end::Iconbox-->
																		</div>
																		
																		<div class="col-lg-4 col-xl-4 mb-5">
																			<!--begin::Iconbox-->
																			<div class="card card-custom bg-danger card-stretch gutter-b">
																				<div class="card-body">
																					<div class="d-flex align-items-center">
																						
																						<div class="d-flex flex-column" style="line-height: 0; margin-bottom: -12px;">
																							<p class="card-title font-weight-bolder text-white text-hover-state-dark  mb-4 d-block" style="font-size: 12px;"> Status </p>
										                                                	<input type="text" class="text-white font-size-h6 font-weight-bolder mr-2 w-100" style="border: 0;background-color: #f75163;" disabled="disabled"  id="modalStatus" name="status">
									                                          			</div>
																					</div>
																				</div>
																			</div>
																			<!--end::Iconbox-->
																		</div>
																		
									                            </div>
																						            
																		<hr style="margin-top: -35px;">			            
													            
													            
													            
													            
													                <!--begin::Table-->
											                        <div class="table-responsive">
											                            <table class="table table-vertical-center" id="quotationLineGrid"></table>
											                            <div id="quotationLineGridPager"></div>
											                            
											                     
											                        </div>
											                        <!--end::Table-->
													            </div>
													            
													            <div class="modal-footer">
														               <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
														         </div>
														          
													        </div>
													    </div>
													</div>
                                                	
                                                	
                                                	<!-- End :: modal -->
                                                	       
											                  
                                                
                                                
                                                
                                                 <table id="quotationViewGrid"></table>
                                                    <div id="quotationViewGridPager"></div>
                                                    
                                            </div>
                                           
                                        </div>
                                        <!--end::Card-->


                                    </div>
                                </div>
                                <!--end::Row-->

                                <!--end:: customer-verification.html -->

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

        <script src="${pageContext.request.contextPath}/assets/plugins/custom/prismjs/prismjs.bundle.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/scripts.bundle.js"></script>
        <script src="${pageContext.request.contextPath}/JS/jquery-ui.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/menu-scripts.bundle.js"></script>
        <%-- 		<script src="${pageContext.request.contextPath}/assets/plugins/custom/datatables/datatables.bundle.js"></script> --%>
            <script src="${pageContext.request.contextPath}/assets/js/pages/features/miscellaneous/sweetalert2.js"></script>
            <script src="${pageContext.request.contextPath}/assets/js/pages/crud/forms/widgets/bootstrap-daterangepicker.js"></script>
            <script src="${pageContext.request.contextPath}/assets/validator/js/bootstrapValidator.min.js"></script>
            <script src="${pageContext.request.contextPath}/JS/Admin/quotationView.js?v=1235"></script>
            <script src="${pageContext.request.contextPath}/JS/tenderCommon.js"></script>


    </body>
    <!--end::Body-->

    </html>