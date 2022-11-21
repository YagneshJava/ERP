<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<!--begin::Head-->
<head>

    <base href="">
    <meta charset="utf-8" />
    <title> Supplier Quotation </title>
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

    <!--         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqgrid/5.5.5/css/ui.jqgrid-bootstrap.min.css"> -->
    <link href="${pageContext.request.contextPath}/assets/jqgrid/css/ui.jqgrid-bootstrap.min.css" rel="stylesheet" type="text/css" />
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
                                    <!--begin::Page Title-->
                                    <!-- 									<h5 class="text-dark font-weight-bold my-1 mr-5">Supplier Quotation</h5> -->
                                    <!--end::Page Title-->
                                    <!--begin::Breadcrumb-->
                                    <ul class="breadcrumb breadcrumb-transparent breadcrumb-dot font-weight-bold p-0 my-2 font-size-sm">
                                        <li class="breadcrumb-item text-muted">
                                            <a href="wellcomeSupplierPage" class="text-muted"> Dashboard </a>
                                        </li>

                                        <li class="breadcrumb-item text-muted">
                                            <h5>
                                                <a href="" class="text-dark font-weight-bold"> My Quotation </a></h5>
                                        </li>
                                    </ul>
                                    <!--end::Breadcrumb-->
                                </div>
                                <!--end::Page Heading-->
                            </div>
                            <!--end::Info-->

<!--                             begin::Toolbar -->
<!--                             <div class="card-toolbar"> -->
<!--                                 <a onclick="manageView()" class="btn btn-icon btn-sm btn-danger" data-toggle="tooltip" data-placement="top" title="Back" id="backBtn" style="display: none"> -->
<!--                                     <span class="svg-icon  svg-icon-2x">begin::Svg Icon | path:C:\wamp64\www\keenthemes\legacy\metronic\theme\html\demo6\dist/../src/media/svg/icons\Navigation\Left-2.svg<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1"> -->
<!-- 															<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"> -->
<!-- 																<polygon points="0 0 24 0 24 24 0 24"/> -->
<!-- 																<rect fill="#000000" opacity="0.3" transform="translate(15.000000, 12.000000) scale(-1, 1) rotate(-90.000000) translate(-15.000000, -12.000000) " x="14" y="7" width="2" height="10" rx="1"/> -->
<!-- 																<path d="M3.7071045,15.7071045 C3.3165802,16.0976288 2.68341522,16.0976288 2.29289093,15.7071045 C1.90236664,15.3165802 1.90236664,14.6834152 2.29289093,14.2928909 L8.29289093,8.29289093 C8.67146987,7.914312 9.28105631,7.90106637 9.67572234,8.26284357 L15.6757223,13.7628436 C16.0828413,14.136036 16.1103443,14.7686034 15.7371519,15.1757223 C15.3639594,15.5828413 14.7313921,15.6103443 14.3242731,15.2371519 L9.03007346,10.3841355 L3.7071045,15.7071045 Z" fill="#000000" fill-rule="nonzero" transform="translate(9.000001, 11.999997) scale(-1, -1) rotate(90.000000) translate(-9.000001, -11.999997) "/> -->
<!-- 															</g> -->
<!-- 														</svg>end::Svg Icon</span> -->
<!--                                 </a> -->
<!--                             </div> -->
<!--                             end::Toolbar -->

                        </div>
                    </div>
                    <!--end::Subheader-->
                    
                    
                    
                    
                    
                    
                    <div class="d-flex flex-column-fluid">

                        <!--begin::Container-->
                        <div class="container-fluid">
                            <input type="hidden" id="supplierId" name="supplierId" value="${sessionScope.userCompanyDetails.getId()}">
                            <!--begin::Content-->
                            <div class="row mt-0 mt-lg-4" id="newQuotationSupplierDiv">
                                <div class="col-xl-12">


                    <!--begin::Global Search-->
                                    <div class="quick-search quick-search-inline mb-10 w-28" id="kt_quick_search_inline" >
                                        <!--begin::Form-->
                                        <form method="get" class="quick-search-form g-search" id="quotationSearchForm">
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
                                                        <div class="dropdown-menu dropdown-menu-xl dropdown-menu-right p-10 g-search-form"  id ="srchHideShow">
                                                            <!--begin::Navigation-->

                                                            <div class="input-group mb-3">
                                                                <input type="text" id="srchQuotationId" name="srchQuotationId" class="form-control border-2 font-weight-bold pl-2" placeholder="Quotation ID">
                                                            </div>
                                                            
                                                            <div class="input-group mb-3">
                                                                <select id="srchStatus" name="srchStatus" style="width:auto" class="form-control border-0 font-weight-bold pl-2">
																	 <option value="" selected=""> Select Status</option>
																	 <option value="New">New</option>
																	 <option value="Opened">Opened</option>
																	 <option value="Quoting">Quoted</option>
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
                                                                <div id="searchDateRangePickerSupplierQt" class="w-100" style="border-bottom-right-radius: 0.675rem !important; border-top-right-radius: 0.675rem !important;">
                                                                    <input id="srchStartEndDate" type="text" class="form-control border-2 font-weight-bold pl-2" placeholder="From Date &amp; To Date" data-toggle="modal" aria-haspopup="true" aria-expanded="false" data-target="#subheader7Modal" readonly="readonly">
                                                                    
                                                                    <span>
                                                                        <i class="icon-lg la la-calendar"></i>
                                                                    </span>
                                                                </div>
                                                            </div>

															<button type="button" onclick="getSupplierQTData()" class="btn btn-primary font-weight-bold btn-hover-light-primary  float-right  mt-3 mt-sm-0 mb-3" id="searchBtn">
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

                                        <div class="card-header flex-wrap py-5 justify-content-end">
                                            <div class="mt-5 bg-white effect1 rounded p-2 pr-3 pl-3 p-sm-1 pr-sm-1 pl-sm-1 d-flex flex-grow-1 flex-sm-grow-0 h-50" style="display: none !important;">
                                                <!--begin::Form-->
                                                <form id="quotationSearchForm" class="form d-flex flex-sm-row flex-column flex-grow-1 flex-sm-grow-0" >
                                                    <!--begin::Input-->
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
                                                        <input type="text" id="srchQuotationId" name="srchQuotationId" class="form-control border-0 font-weight-bold pl-2" placeholder="Quotation ID" />
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
															<select  id="srchStatus" name="srchStatus" style="width:auto" class="form-control border-0 font-weight-bold pl-2">
																 <option value=""  selected> Select Status</option>
																 <option value="New"  >New</option>
																 <option value="Opened"  >Opened</option>
																 <option value="Quoting"  >Quoted</option>
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
                                                           <select id="srchDateType" name="srchDateType" style="width:auto" class="form-control border-0 font-weight-bold pl-2">
												                      <option value=""  selected> Select Date Type  </option>
												                      <option value="QUOTATIONDATE"  > Created Date  </option>
												                      <option value="DEADLINEDATE"> Final Date </option>
												                      <option value="DELIVERYDATE"> Delivery Date </option>
												                    </select>
                                                    </div>
                                                    <!--end::Input-->


                                                    <!--begin::Input-->
                                                    <div id='searchDateRangePickerSupplierQt' class="d-flex align-items-center py-3 py-sm-0">
                                                        <span class="bullet bullet-ver h-25px d-none d-sm-flex mr-2"></span>
                                                        <i class="icon-xl la la-calendar"></i>
                                                        <input id="srchStartEndDate" type="text" class="form-control border-0 font-weight-bold pl-2" placeholder="From Date & To Date" data-toggle="modal" aria-haspopup="true" aria-expanded="false" data-target="#subheader7Modal" readonly="readonly" />
                                                    </div>
                                                    <!--end::Input-->

                                                    <button type="button" onclick="getSupplierQTData()" class="btn btn-primary font-weight-bold btn-hover-light-primary   mt-3 mt-sm-0">
																	<i class="icon-lg la la-search"></i>
																</button>
                                                </form>
                                                <!--end::Form-->
                                            </div>
                                            <input type="hidden" id="customerId" name="customerId" value="${sessionScope.userCompanyDetails.getId()}">
<!--                                             <div class="inline-box"> -->
                                              
<!--                                                 <label for="" class="p-r p-t" style="width: 100%">  Select Location  </label> -->
<!--                                                 <select class="form-control form-control-lg" id="location" name="addressId" autocomplete="off"></select> -->
                                               
<!--                                             </div> -->

<!--                                             <div class="inline-box"> -->
<!--                                                 <label for="exampleTextarea" class="p-r p-t"> Full address</label> -->
<!--                                                 <textarea class="form-control" disabled="disabled" rows="1" id="fullAddress"></textarea> -->
<!--                                             </div> -->
                                            
                         
                               <!--end:: Content 123 -->
                               <div class="mb-0 r-mt-10 r-form-w mt-0 mt-xs-5 mt-sm-0">
                               
							        <div class="form-group row mb-0">
							            <div class="col-lg-3">
							                <label> Select Location </label>
											<select class="form-control form-control-md" id="supplierLocation" name="addressId" autocomplete="off"></select>
							            </div>
							            <div class="col-lg-9">								
							                <label> Full Address </label>
							                	<div class="input-group"> 
												<textarea style="width: 390px;" rows="1" readonly="readonly" id="supplierFullAddress" class="form-control" placeholder="Enter your address"></textarea>
										</div>
							            </div>

							        </div>
							        
        
                                   <div class="row align-items-center">
                                       <div class="col-lg-12 col-xl-12">
                                           <div class="row align-items-left">
                                               <div class="col-lg-9 col-md-9">
                                               <div class="d-flex align-items-center">
<!-- 															<label class="mr-3 mb-0 "> Full Address </label> -->
														
															</div>
														</div>
                                           </div>
                                       </div>
                                   </div>
                                   
                               </div>
                               <!--end:: Content 123 -->
                                            
                                        </div>

                                        <!--begin::Body-->
                                        <div class="card-body">
                                            <!-- 				<div class=""> -->
                                            <!-- 					<div class="row align-items-center"> -->
                                            <!-- 						<div class="col-lg-10 col-xl-10"> -->
                                            <!-- 							<div class="row align-items-center"> -->
                                            <!-- 								<div class="col-md-12  my-md-0"> -->
                                            <!-- 									<div class="form-group"> -->
                                            <!-- 										<label>  Price List  </label> -->
                                            <!-- 										<div></div> -->
                                            <!-- 										<div class="custom-file"> -->
                                            <!-- 											<input type="file" class="custom-file-input form-control-lg" id="customFile" /> -->
                                            <!-- 											<label class="custom-file-label" for="customFile"> Upload Price List  </label> -->
                                            <!-- 										</div> -->
                                            <!-- 									</div> -->
                                            <!-- 								</div> -->
                                            <!-- 							</div> -->
                                            <!-- 						</div> -->
                                            <!-- 						<div class="col-lg-2 col-xl-2 mt-5 mt-lg-0 text-left"> -->
                                            <!-- 							<a href="#" class="btn btn-light-success btn-md px-6 font-weight-bold">  Submit  </a> -->
                                            <!-- 						</div> -->
                                            <!-- 					</div> -->
                                            <!-- 				</div> -->
                                            <!--end::Search Form-->


                                            <!--begin::Table-->
                                            <div class="table-responsive">
                                                <table class="table table-hover nowrap table-checkable" id="quotationHeadDataTable">

                                                    <thead>
                                                        <tr class="text-left">
                                                            <th> Quotation ID </th>
                                                            <th> Created Date </th>
                                                            <th> Final Date </th>
                                                            <th> Delivery Date </th>
                                                            <th class="text-center"> Status </th>
                                                            <th class="pr-0 text-center"> Action </th>
                                                        </tr>
                                                    </thead>
                                                </table>
                                            </div>
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
                            <div id="editQuotationSupplierDiv" style="display: none">
                           
                                <!--begin::Content-->
                                <div class="row mt-0 mt-lg-4">
                                    <div class="col-xl-12">

                                        <!--begin::Card-->
                                        <div class="card card-custom">

                                            <!--begin::Body-->
                                            <div class="card-body">
                                            <div class="table-responsive">
                                                <table id="quotationGrid"></table>
                                                <div class="pb-5" id="quotationPager"></div>
											</div>
                                                <div class="card-footer d-flex justify-content-between">
                            						<button type="button" class="btn btn-warning " onclick="manageView()" id="backBtn"> Back </button>
                            						<div class=" text-right">
                            							 <button type="button" class="btn btn-success " onclick="confirmQtPopUp()" id="confirmQtBtn" disabled="disabled"> Confirm </button>
	                                                    <a type="button" class="btn btn-info" id="downloadQuotation" style="display: none;"> Download </a>
	                                                    <a data-toggle="modal" data-target="#uploadQuotationModal" class="btn btn-primary font-weight-bolder font-size-sm"  style="display: none;"> Upload Quotation </a>
                            						</div>
                                                   
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

                </div>
                <div class="modal fade" id="statModal" tabindex="-1" role="dialog" aria-labelledby="UploadNewOffersModal" aria-hidden="true" style="display: none;">
                    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                        <div class="modal-content">

                            <div class="modal-header"> 	
                                <h5 class="modal-title" id="exampleModalLabel"> Potential </h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <i aria-hidden="true" class="ki ki-close"></i>
                        </button>
                            </div>

                            <div class="modal-body">
									
								<h5 class="modal-title pb-5" id="exampleModalLabel"> Potential Stats </h5>

                                <div class="row">
									
                                    <div class="col-xl-4">
                                        <!--begin::Stats Widget 30-->
                                        <div class="card card-custom bg-info card-stretch gutter-b">
                                            <!--begin::Body-->
                                            <div class="card-body">
                                                <span class="svg-icon svg-icon-2x svg-icon-white">
                                            <!--begin::Svg Icon | path:assets/media/svg/icons/Communication/Group.svg-->
                                            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                    <polygon points="0 0 24 0 24 24 0 24"></polygon>
                                                    <path d="M18,14 C16.3431458,14 15,12.6568542 15,11 C15,9.34314575 16.3431458,8 18,8 C19.6568542,8 21,9.34314575 21,11 C21,12.6568542 19.6568542,14 18,14 Z M9,11 C6.790861,11 5,9.209139 5,7 C5,4.790861 6.790861,3 9,3 C11.209139,3 13,4.790861 13,7 C13,9.209139 11.209139,11 9,11 Z" fill="#000000" fill-rule="nonzero" opacity="0.3"></path>
                                                    <path d="M17.6011961,15.0006174 C21.0077043,15.0378534 23.7891749,16.7601418 23.9984937,20.4 C24.0069246,20.5466056 23.9984937,21 23.4559499,21 L19.6,21 C19.6,18.7490654 18.8562935,16.6718327 17.6011961,15.0006174 Z M0.00065168429,20.1992055 C0.388258525,15.4265159 4.26191235,13 8.98334134,13 C13.7712164,13 17.7048837,15.2931929 17.9979143,20.2 C18.0095879,20.3954741 17.9979143,21 17.2466999,21 C13.541124,21 8.03472472,21 0.727502227,21 C0.476712155,21 -0.0204617505,20.45918 0.00065168429,20.1992055 Z" fill="#000000" fill-rule="nonzero"></path>
                                                </g>
                                            </svg>
                                            <!--end::Svg Icon-->
                                        </span>
                                                <span class="card-title font-weight-bolder text-white font-size-h2 mb-0 mt-6 d-block" id="customerBuy"></span>
                                                <span class="font-weight-bold text-white font-size-sm"> Customer's Buy</span>
                                            </div>
                                            <!--end::Body-->
                                        </div>
                                        <!--end::Stats Widget 30-->
                                    </div>

                                    <div class="col-xl-4">
                                        <!--begin::Stats Widget 31-->
                                        <div class="card card-custom bg-danger card-stretch gutter-b">
                                            <!--begin::Body-->
                                            <div class="card-body">
                                                <span class="svg-icon svg-icon-2x svg-icon-white">
                                            <!--begin::Svg Icon | path:assets/media/svg/icons/Media/Equalizer.svg-->
                                            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                    <rect x="0" y="0" width="24" height="24"></rect>
                                                    <rect fill="#000000" opacity="0.3" x="13" y="4" width="3" height="16" rx="1.5"></rect>
                                                    <rect fill="#000000" x="8" y="9" width="3" height="11" rx="1.5"></rect>
                                                    <rect fill="#000000" x="18" y="11" width="3" height="9" rx="1.5"></rect>
                                                    <rect fill="#000000" x="3" y="13" width="3" height="7" rx="1.5"></rect>
                                                </g>
                                            </svg>
                                            <!--end::Svg Icon-->
                                        </span>
                                                <span class="card-title font-weight-bolder text-white font-size-h2 mb-0 mt-6 d-block" id="totalBuy"></span>
                                                <span class="font-weight-bold text-white font-size-sm">Portal Buy</span>
                                            </div>
                                            <!--end::Body-->
                                        </div>
                                        <!--end::Stats Widget 31-->
                                    </div>

                                    <div class="col-xl-4">
                                        <!--begin::Stats Widget 31-->
                                        <div class="card card-custom bg-success  card-stretch gutter-b">
                                            <!--begin::Body-->
                                            <div class="card-body">
                                                <span class="svg-icon svg-icon-white svg-icon-2x"><!--begin::Svg Icon | path:C:\wamp64\www\keenthemes\legacy\metronic\theme\html\demo6\dist/../src/media/svg/icons\Shopping\Pound.svg-->
                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
        <rect x="0" y="0" width="24" height="24"/>
        <path d="M7.825,10.225 C7.2,9.475 6.85,8.4 6.85,7.375 C6.85,4.55 9.15,2.05 12.35,2.05 C15.45,2.05 17.8,4.45 17.875,7.425 L15.075,7.425 C15.075,5.85 13.975,4.6 12.35,4.6 C10.75,4.6 9.6,5.775 9.6,7.375 C9.6,8.26626781 10.0162926,9.06146809 10.6676674,9.58392078 C10.7130614,9.62033024 10.7238389,12.2340233 10.7,17.425 L17.5444449,17.425 C17.8205873,17.425 18.0444449,17.6488576 18.0444449,17.925 C18.0444449,17.9869142 18.0329457,18.0482899 18.0105321,18.1060047 L17.3988817,19.6810047 C17.3242018,19.8733052 17.1390868,20 16.9327944,20 L6.3,20 C6.02385763,20 5.8,19.7761424 5.8,19.5 L5.8,17.925 C5.8,17.6488576 6.02385763,17.425 6.3,17.425 L7.925,17.425 L7.925,12.475 L7.825,10.225 Z" fill="#000000"/>
        <path d="M4.3618034,11.2763932 L4.8618034,10.2763932 C4.94649941,10.1070012 5.11963097,10 5.30901699,10 L15.190983,10 C15.4671254,10 15.690983,10.2238576 15.690983,10.5 C15.690983,10.5776225 15.6729105,10.6541791 15.6381966,10.7236068 L15.1381966,11.7236068 C15.0535006,11.8929988 14.880369,12 14.690983,12 L4.80901699,12 C4.53287462,12 4.30901699,11.7761424 4.30901699,11.5 C4.30901699,11.4223775 4.32708954,11.3458209 4.3618034,11.2763932 Z" fill="#000000" opacity="0.3"/>
    </g>
</svg><!--end::Svg Icon--></span>
                                                <span class="card-title font-weight-bolder text-white font-size-h2 mb-0 mt-6 d-block" id="avgPrice"></span>
                                                <span class="font-weight-bold text-white font-size-sm">Average Price</span>
                                            </div>
                                            <!--end::Body-->
                                        </div>
                                        <!--end::Stats Widget 31-->
                                    </div>

                                </div>
                                
                                <h5 class="modal-title pb-5" id="exampleModalLabel"> Sell Data </h5>
                                
                                <div class="row">

                                    <div class="col-xl-4">
                                        <!--                                 begin::Stats Widget 30 -->
                                        <div class="card card-custom bg-info card-stretch gutter-b">
                                            <!--                                     begin::Body -->
                                            <div class="card-body">
                                                <span class="svg-icon svg-icon-2x svg-icon-white">
<!--                                             begin::Svg Icon | path:assets/media/svg/icons/Communication/Group.svg -->
                                            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                    <polygon points="0 0 24 0 24 24 0 24"></polygon>
                                                    <path d="M18,14 C16.3431458,14 15,12.6568542 15,11 C15,9.34314575 16.3431458,8 18,8 C19.6568542,8 21,9.34314575 21,11 C21,12.6568542 19.6568542,14 18,14 Z M9,11 C6.790861,11 5,9.209139 5,7 C5,4.790861 6.790861,3 9,3 C11.209139,3 13,4.790861 13,7 C13,9.209139 11.209139,11 9,11 Z" fill="#000000" fill-rule="nonzero" opacity="0.3"></path>
                                                    <path d="M17.6011961,15.0006174 C21.0077043,15.0378534 23.7891749,16.7601418 23.9984937,20.4 C24.0069246,20.5466056 23.9984937,21 23.4559499,21 L19.6,21 C19.6,18.7490654 18.8562935,16.6718327 17.6011961,15.0006174 Z M0.00065168429,20.1992055 C0.388258525,15.4265159 4.26191235,13 8.98334134,13 C13.7712164,13 17.7048837,15.2931929 17.9979143,20.2 C18.0095879,20.3954741 17.9979143,21 17.2466999,21 C13.541124,21 8.03472472,21 0.727502227,21 C0.476712155,21 -0.0204617505,20.45918 0.00065168429,20.1992055 Z" fill="#000000" fill-rule="nonzero"></path>
                                                </g>
                                            </svg>
<!--                                             end::Svg Icon -->
                                        </span>
                                                <span class="card-title font-weight-bolder text-white font-size-h2 mb-0 mt-6 d-block" id="pcaSellData"></span>
                                                <span class="font-weight-bold text-white font-size-sm"> PCA Sell </span>
                                            </div>
                                            <!--                                     end::Body -->
                                        </div>
                                        <!--                                 end::Stats Widget 30 -->
                                    </div>

                                    <div class="col-xl-4">
                                        <!--begin::Stats Widget 31-->
                                        <div class="card card-custom bg-danger card-stretch gutter-b">
                                            <!--begin::Body-->
                                            <div class="card-body">
                                                <span class="svg-icon svg-icon-2x svg-icon-white">
                                            <!--begin::Svg Icon | path:assets/media/svg/icons/Media/Equalizer.svg-->
                                            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                    <rect x="0" y="0" width="24" height="24"></rect>
                                                    <rect fill="#000000" opacity="0.3" x="13" y="4" width="3" height="16" rx="1.5"></rect>
                                                    <rect fill="#000000" x="8" y="9" width="3" height="11" rx="1.5"></rect>
                                                    <rect fill="#000000" x="18" y="11" width="3" height="9" rx="1.5"></rect>
                                                    <rect fill="#000000" x="3" y="13" width="3" height="7" rx="1.5"></rect>
                                                </g>
                                            </svg>
                                            <!--end::Svg Icon-->
                                        </span>
                                                <span class="card-title font-weight-bolder text-white font-size-h2 mb-0 mt-6 d-block" id="totalBuy"></span>
                                                <span class="font-weight-bold text-white font-size-sm">Portal Buy</span>
                                            </div>
                                            <!--end::Body-->
                                        </div>
                                        <!--end::Stats Widget 31-->
                                    </div>

                                    <div class="col-xl-4">
                                        <!--begin::Stats Widget 31-->
                                        <div class="card card-custom bg-success  card-stretch gutter-b">
                                            <!--begin::Body-->
                                            <div class="card-body">
                                                <span class="svg-icon svg-icon-white svg-icon-2x"><!--begin::Svg Icon | path:C:\wamp64\www\keenthemes\legacy\metronic\theme\html\demo6\dist/../src/media/svg/icons\Shopping\Pound.svg-->
                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
        <rect x="0" y="0" width="24" height="24"/>
        <path d="M7.825,10.225 C7.2,9.475 6.85,8.4 6.85,7.375 C6.85,4.55 9.15,2.05 12.35,2.05 C15.45,2.05 17.8,4.45 17.875,7.425 L15.075,7.425 C15.075,5.85 13.975,4.6 12.35,4.6 C10.75,4.6 9.6,5.775 9.6,7.375 C9.6,8.26626781 10.0162926,9.06146809 10.6676674,9.58392078 C10.7130614,9.62033024 10.7238389,12.2340233 10.7,17.425 L17.5444449,17.425 C17.8205873,17.425 18.0444449,17.6488576 18.0444449,17.925 C18.0444449,17.9869142 18.0329457,18.0482899 18.0105321,18.1060047 L17.3988817,19.6810047 C17.3242018,19.8733052 17.1390868,20 16.9327944,20 L6.3,20 C6.02385763,20 5.8,19.7761424 5.8,19.5 L5.8,17.925 C5.8,17.6488576 6.02385763,17.425 6.3,17.425 L7.925,17.425 L7.925,12.475 L7.825,10.225 Z" fill="#000000"/>
        <path d="M4.3618034,11.2763932 L4.8618034,10.2763932 C4.94649941,10.1070012 5.11963097,10 5.30901699,10 L15.190983,10 C15.4671254,10 15.690983,10.2238576 15.690983,10.5 C15.690983,10.5776225 15.6729105,10.6541791 15.6381966,10.7236068 L15.1381966,11.7236068 C15.0535006,11.8929988 14.880369,12 14.690983,12 L4.80901699,12 C4.53287462,12 4.30901699,11.7761424 4.30901699,11.5 C4.30901699,11.4223775 4.32708954,11.3458209 4.3618034,11.2763932 Z" fill="#000000" opacity="0.3"/>
    </g>
</svg><!--end::Svg Icon--></span>
                                                <span class="card-title font-weight-bolder text-white font-size-h2 mb-0 mt-6 d-block" id="avgPrice"></span>
                                                <span class="font-weight-bold text-white font-size-sm">Average Price</span>
                                            </div>
                                            <!--end::Body-->
                                        </div>
                                        <!--end::Stats Widget 31-->
                                    </div>

                                </div>

                            </div>

                        </div>
                    </div>
                </div>

                <div>
                    <form id="downloadQuotationFileForm" action="downloadQuotationFile" method="get"></form>
                </div>

                <div class="modal fade" data-backdrop="static" id="uploadQuotationModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalSizeXl" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered modal-xl" role="document">
                        <div class="modal-content">

                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel"> Upload Quotation File </h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <i aria-hidden="true" class="ki ki-close"></i>
                        </button>
                            </div>

                            <div class="modal-body">

                                <form class="form" id="uploadQuotationForm" name="uploadQuotationForm" enctype="multipart/form-data">


                                    <div class="row">
                                        <div class="col-xl-6">
                                            <!--begin::Input-->
                                            <div class="form-group">
                                                <label>Quotation File</label>
                                                <div class="custom-file">
                                                    <input type="file" class="custom-file-input form-control-lg" id="uploadedQuotationFile" name="uploadedQuotationFile" accept=".xlsx, .xls, .csv" />
                                                    <label class="custom-file-label" for="customFile">   </label>
                                                </div>
                                            </div>
                                            <input type='hidden' name='quotationId' id='quotationId'>
                                            <input type='hidden' name='supplierId' id='fileSupplierId'>
                                            <input type='hidden' name='finalDate' id='finalDate'>
                                            <input type='hidden' name='deliveryDate' id='deliveryDate'>
                                            <input type='hidden' name='qtType' id='qtType'>
                                            <input type='hidden' name='addressId' id='addressId'>
                                            <!--end::Input-->
                                        </div>

                                    </div>

                                    <!--end::Form-->



                                </form>
                                <div class="modal-footer">
                                    <button class="btn btn-success font-weight-bold" id="quotationUploadBtn"> Upload  </button>
                                    <button type="button" class="btn btn-warning font-weight-bold" onclick="resestUploadQtForm()">  Reset   </button>
                                    <button type="button" class="btn btn-danger font-weight-bold" data-dismiss="modal"> Close </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div id="fileUploadStatusModal" class="modal fade">
                    <div class="modal-dialog modal-confirm modal-dialog-centered modal-md">
                        <div class="modal-content">
                            <div class="modal-header" id="statusModalHeader" style="display: none">
                                <div class="icon-box">
                                    <i class="la la-check-circle"></i>
                                </div>
                                <h4 class="modal-title w-100 text-success"> Quotation File <br> Successfully Uploaded </h4>
                            </div>
                            <div class="modal-body" id="statusModalBody" style="display: none">

                                <div class="alert alert-custom alert-light-danger fade show mb-5" role="alert">
                                    <div class="alert-icon">
                                        <i style=" margin-top: -13px;" class="icon-xxxl la la-warning"></i>
                                    </div>
                                    <div class="alert-text">
                                        <!-- 											<strong id="failedTotalLine">   </strong> Row Not Uploaded    -->
                                        <p class="pt-1" id="failedRowsStatus"> </p>
                                    </div>
                                </div>



                                <div class="card card-custom card-fit card-border mt-8">

                                    <div style="padding: 1rem 1rem;" class="card-body pa-0 pt-0">
                                        <div class="widget">
                                            <!-- Classic Heading -->
                                            <h4 class="classic-title"><span> Note </span></h4>
                                            <ul>
                                                <li> Kindly Make sure you have entered all the valid Quotation. </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>





                            </div>

                            <div class="modal-footer">
                                <button class="btn btn-success btn-block" data-dismiss="modal">OK</button>
                            </div>

                        </div>
                    </div>
                </div>


                <div class="modal fade" id="supplierStatModal" tabindex="-1" role="dialog" aria-labelledby="UploadNewOffersModal" aria-hidden="true" style="display: none">
                    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                        <div class="modal-content">

                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel"> Potential Stats </h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <i aria-hidden="true" class="ki ki-close"></i>
                        </button>
                            </div>

                            <div class="modal-body">

                                <div class="row">

                                    <div class="col-xl-4">
                                        <!--                                 begin::Stats Widget 30 -->
                                        <div class="card card-custom bg-info card-stretch gutter-b">
                                            <!--                                     begin::Body -->
                                            <div class="card-body">
                                                <span class="svg-icon svg-icon-2x svg-icon-white">
<!--                                             begin::Svg Icon | path:assets/media/svg/icons/Communication/Group.svg -->
                                            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                    <polygon points="0 0 24 0 24 24 0 24"></polygon>
                                                    <path d="M18,14 C16.3431458,14 15,12.6568542 15,11 C15,9.34314575 16.3431458,8 18,8 C19.6568542,8 21,9.34314575 21,11 C21,12.6568542 19.6568542,14 18,14 Z M9,11 C6.790861,11 5,9.209139 5,7 C5,4.790861 6.790861,3 9,3 C11.209139,3 13,4.790861 13,7 C13,9.209139 11.209139,11 9,11 Z" fill="#000000" fill-rule="nonzero" opacity="0.3"></path>
                                                    <path d="M17.6011961,15.0006174 C21.0077043,15.0378534 23.7891749,16.7601418 23.9984937,20.4 C24.0069246,20.5466056 23.9984937,21 23.4559499,21 L19.6,21 C19.6,18.7490654 18.8562935,16.6718327 17.6011961,15.0006174 Z M0.00065168429,20.1992055 C0.388258525,15.4265159 4.26191235,13 8.98334134,13 C13.7712164,13 17.7048837,15.2931929 17.9979143,20.2 C18.0095879,20.3954741 17.9979143,21 17.2466999,21 C13.541124,21 8.03472472,21 0.727502227,21 C0.476712155,21 -0.0204617505,20.45918 0.00065168429,20.1992055 Z" fill="#000000" fill-rule="nonzero"></path>
                                                </g>
                                            </svg>
<!--                                             end::Svg Icon -->
                                        </span>
                                                <span class="card-title font-weight-bolder text-white font-size-h2 mb-0 mt-6 d-block" id="pcaSellData"></span>
                                                <span class="font-weight-bold text-white font-size-sm"> PCA Sell </span>
                                            </div>
                                            <!--                                     end::Body -->
                                        </div>
                                        <!--                                 end::Stats Widget 30 -->
                                    </div>

                                    <div class="col-xl-4">
                                        <!--begin::Stats Widget 31-->
                                        <div class="card card-custom bg-danger card-stretch gutter-b">
                                            <!--begin::Body-->
                                            <div class="card-body">
                                                <span class="svg-icon svg-icon-2x svg-icon-white">
                                            <!--begin::Svg Icon | path:assets/media/svg/icons/Media/Equalizer.svg-->
                                            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                    <rect x="0" y="0" width="24" height="24"></rect>
                                                    <rect fill="#000000" opacity="0.3" x="13" y="4" width="3" height="16" rx="1.5"></rect>
                                                    <rect fill="#000000" x="8" y="9" width="3" height="11" rx="1.5"></rect>
                                                    <rect fill="#000000" x="18" y="11" width="3" height="9" rx="1.5"></rect>
                                                    <rect fill="#000000" x="3" y="13" width="3" height="7" rx="1.5"></rect>
                                                </g>
                                            </svg>
                                            <!--end::Svg Icon-->
                                        </span>
                                                <span class="card-title font-weight-bolder text-white font-size-h2 mb-0 mt-6 d-block" id="totalBuy"></span>
                                                <span class="font-weight-bold text-white font-size-sm">Portal Buy</span>
                                            </div>
                                            <!--end::Body-->
                                        </div>
                                        <!--end::Stats Widget 31-->
                                    </div>

                                    <div class="col-xl-4">
                                        <!--begin::Stats Widget 31-->
                                        <div class="card card-custom bg-success  card-stretch gutter-b">
                                            <!--begin::Body-->
                                            <div class="card-body">
                                                <span class="svg-icon svg-icon-white svg-icon-2x"><!--begin::Svg Icon | path:C:\wamp64\www\keenthemes\legacy\metronic\theme\html\demo6\dist/../src/media/svg/icons\Shopping\Pound.svg-->
                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
        <rect x="0" y="0" width="24" height="24"/>
        <path d="M7.825,10.225 C7.2,9.475 6.85,8.4 6.85,7.375 C6.85,4.55 9.15,2.05 12.35,2.05 C15.45,2.05 17.8,4.45 17.875,7.425 L15.075,7.425 C15.075,5.85 13.975,4.6 12.35,4.6 C10.75,4.6 9.6,5.775 9.6,7.375 C9.6,8.26626781 10.0162926,9.06146809 10.6676674,9.58392078 C10.7130614,9.62033024 10.7238389,12.2340233 10.7,17.425 L17.5444449,17.425 C17.8205873,17.425 18.0444449,17.6488576 18.0444449,17.925 C18.0444449,17.9869142 18.0329457,18.0482899 18.0105321,18.1060047 L17.3988817,19.6810047 C17.3242018,19.8733052 17.1390868,20 16.9327944,20 L6.3,20 C6.02385763,20 5.8,19.7761424 5.8,19.5 L5.8,17.925 C5.8,17.6488576 6.02385763,17.425 6.3,17.425 L7.925,17.425 L7.925,12.475 L7.825,10.225 Z" fill="#000000"/>
        <path d="M4.3618034,11.2763932 L4.8618034,10.2763932 C4.94649941,10.1070012 5.11963097,10 5.30901699,10 L15.190983,10 C15.4671254,10 15.690983,10.2238576 15.690983,10.5 C15.690983,10.5776225 15.6729105,10.6541791 15.6381966,10.7236068 L15.1381966,11.7236068 C15.0535006,11.8929988 14.880369,12 14.690983,12 L4.80901699,12 C4.53287462,12 4.30901699,11.7761424 4.30901699,11.5 C4.30901699,11.4223775 4.32708954,11.3458209 4.3618034,11.2763932 Z" fill="#000000" opacity="0.3"/>
    </g>
</svg><!--end::Svg Icon--></span>
                                                <span class="card-title font-weight-bolder text-white font-size-h2 mb-0 mt-6 d-block" id="avgPrice"></span>
                                                <span class="font-weight-bold text-white font-size-sm">Average Price</span>
                                            </div>
                                            <!--end::Body-->
                                        </div>
                                        <!--end::Stats Widget 31-->
                                    </div>

                                </div>

                            </div>

                        </div>
                    </div>
                </div>
                <jsp:include page="../footer.jsp"></jsp:include>
            </div>
        
        
         <!--begin::Aside Secondary-->
            <div class="sidebar sidebar-right d-flex flex-row-auto flex-column"   id="kt_sidebar" style="display: none !important;">
             
					
					<!--begin::Aside Secondary Content-->
					<div class="sidebar-content flex-column-fluid pb-10 pt-9 px-5 px-lg-10">
				
						<!--begin: Stats Widget 19-->
						<div class="card card-custom bg-light-success gutter-b">
							<!--begin::Body-->
							<div class="card-body my-2">
								<p class="card-title font-weight-bolder text-success text-hover-state-dark font-size-h6 mb-4 d-block"> Quotation ID </p>
	                  			<input type="text" class="text-dark-75 font-size-h2 font-weight-bolder mr-2 w-100 bg-transparent" style="border: 0;" disabled="disabled" id="savedQtId" name="savedQtId">         			
							</div>
							<!--end:: Body-->
						</div>
						<div class="card card-custom bg-light-success gutter-b">
							<!--begin::Body-->
							<div class="card-body my-2">
								<p class="card-title font-weight-bolder text-success text-hover-state-dark font-size-h6 mb-4 d-block"> Quotation ID </p>
	                  			<input type="text" class="text-dark-75 font-size-h2 font-weight-bolder mr-2 w-100 bg-transparent" style="border: 0;" disabled="disabled" id="savedStatus" name="savedStatus">         			
							</div>
							<!--end:: Body-->
						</div>
						<!--end: Stats:Widget 19-->
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
						<!--begin::Stats Widget 20-->
						<div class="card card-custom bg-light-info gutter-b">
							<!--begin::Body-->
							<div class="card-body my-2">
								<p class="card-title font-weight-bolder text-info font-size-h6 mb-4 text-hover-state-dark d-block">  Quotation Type  </p>
	                            <input type="text" class="text-dark-75 font-weight-bolder font-size-h2 mr-2 w-100 bg-transparent" style="border: 0;" disabled="disabled" value="">
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
    <!--begin::Entry-->

    <!--end::Main-->



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
    <script src="${pageContext.request.contextPath}/JS/supplier/supplierQuotation.js?v=123456"></script>
    <script src="${pageContext.request.contextPath}/JS/tenderCommon.js"></script>
</body>
<!--end::Body-->

</html>