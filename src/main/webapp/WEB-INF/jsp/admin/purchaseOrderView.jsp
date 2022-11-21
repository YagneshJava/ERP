<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>

    <html lang="en">
    <!--begin::Head-->

    <head>
        <meta charset="utf-8" />
        <title> Purchase Order View </title>
        <meta name="description" content="" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <link rel="canonical" href="https://keenthemes.com/metronic" />
        <!--begin::Fonts-->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" />
        <!--end::Fonts-->

        <link href="${pageContext.request.contextPath}/assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/assets/plugins/custom/prismjs/prismjs.bundle.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/assets/css/style.bundle.css" rel="stylesheet" type="text/css" />
  		<link href="${pageContext.request.contextPath}/assets/css/responsive.css" rel="stylesheet" type="text/css">
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/media/logos/favicon.ico" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/jqgrid/css/ui.jqgrid-bootstrap.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/sidebar.css">
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

                                        <!--end::Page Title-->
                                        <!--begin::Breadcrumb-->
                                        <ul class="breadcrumb breadcrumb-transparent breadcrumb-dot font-weight-bold p-0 my-2 font-size-sm">
                                            <li class="breadcrumb-item text-muted">
                                                <a href="dashboard.html" class="text-muted"> Admin </a>
                                            </li>
                                            <li class="breadcrumb-item text-muted">
                                                <a href="" class="text-muted">
                                                    <h5 class="text-dark font-weight-bold my-1 mr-5"> Purchase Order View </h5>
                                                </a>
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








                        <!--begin::Entry-->
                        <div class="d-flex flex-column-fluid">

                            <!--begin::Container-->
                            <div class="container-fluid">
                                <!--begin::Dashboard-->
                                <!--begin::Row-->
                                <div class="row mt-0 mt-lg-4">
                                    <div class="col-xl-12">


						  <!--begin::Global Search-->
                                    <div class="quick-search quick-search-inline mb-10 w-28" id="kt_quick_search_inline">
                                        <!--begin::Form-->
                                        <form class="quick-search-form g-search">
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
                                                                <!-- <div class="input-group-prepend">
                                                                    <span class="input-group-text">
                                                                        <i class="la la-exclamation-triangle icon-lg"></i>
                                                                    </span>
                                                                </div> -->
                                                                <input type="text" id="quotationId" name="quotationId" class="form-control border-0 font-weight-bold pl-2" placeholder="Quotation ID">
                                                            </div>
                                                            
                                                            <div class="input-group mb-3">
                                                                <!-- <div class="input-group-prepend">
                                                                    <span class="input-group-text">
                                                                        <i class="la la-exclamation-triangle icon-lg"></i>
                                                                    </span>
                                                                </div> -->
                                                                <input type="text" id="supplierId" name="supplierId" class="form-control border-0 font-weight-bold pl-2 ui-autocomplete-input" placeholder="Supplier ID" autocomplete="off">
                                                            </div>
                                                            <div class="input-group mb-3">
                                                                <!-- <div class="input-group-prepend">
                                                                    <span class="input-group-text">
                                                                        <i class="la la-exclamation-triangle icon-lg"></i>
                                                                    </span>
                                                                </div> -->
                                                                <input type="text" id="customerId" name="customerId" class="form-control border-0 font-weight-bold pl-2" placeholder="Customer ID">
                                                            </div>
                                                            <div class="input-group mb-3">
                                                                <!-- <div class="input-group-prepend">
                                                                    <span class="input-group-text">
                                                                        <i class="la la-exclamation-triangle icon-lg"></i>
                                                                    </span>
                                                                </div> -->
                                                                <input type="text" id="orderId" name="orderId" class="form-control border-0 font-weight-bold pl-2" placeholder="Order ID">
                                                            </div>
                                                            
                                                            <div class="input-group input-icon input-icon-right mb-3">
                                                                <div id="purchaseOrderDateRanger" class="w-100" style="border-bottom-right-radius: 0.675rem !important; border-top-right-radius: 0.675rem !important;">
                                                                    <input id="startEndDate" type="text" class="form-control border-2 font-weight-bold pl-2" placeholder="From Date &amp; To Date" data-toggle="modal" aria-haspopup="true" aria-expanded="false" data-target="#subheader7Modal" readonly="readonly">
                                                                    
                                                                    <span>
                                                                        <i class="icon-lg la la-calendar"></i>
                                                                    </span>
                                                                </div>
                                                            </div>

															<button type="button" onclick="getPurchaseOrderViewList()" class="btn btn-primary font-weight-bold btn-hover-light-primary  float-right  mt-3 mt-sm-0" id="searchBtn">
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
                                                </div>
                                            </div>
                                            <div class="card-body">
                                                <div>
                                                
<!--                                                 	<table class="table table-hover table-condensed table-bordered"> -->
<!--                                                 		<thead> -->
<!--                                                 			<tr> -->
<!--                                                 				<th>Quotation ID</th> -->
<!--                                                 				<th>Order ID</th> -->
<!--                                                 				<th>Supplier ID</th> -->
<!--                                                 				<th>Supplier Name</th> -->
<!--                                                 				<th>Customer ID</th> -->
<!--                                                 				<th>Customer Name</th> -->
<!--                                                 				<th>Created Date</th> -->
<!--                                                 				<th>Status</th> -->
<!--                                                 			</tr> -->
<!--                                                 		</thead> -->
<!--                                                 		<tbody> -->
<!--                                                 			<tr class='clickable-row' data-toggle="modal" data-target="#editModal" style="cursor:pointer"> -->
<!--                                                 				<td>Q_00611</td> -->
<!--                                                 				<td>P01064</td> -->
<!--                                                 				<td>S_00020</td> -->
<!--                                                 				<td>BOOKER RETAIL PARTNERS (GB) LIMITED	</td> -->
<!--                                                 				<td>S_00021</td> -->
<!--                                                 				<td>Bastion Pharmacy Limited</td> -->
<!--                                                 				<td>23-Jun-2022</td> -->
<!--                                                 				<td><span  class="text-success">Confirmed</span></td> -->
<!--                                                 			</tr> -->
<!--                                                 		</tbody> -->
<!--                                                 	</table> -->
                                                	
                                                	
                                                	<!-- Begin :: modal -->
                                                	
													<div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true" >
													    <div class="modal-dialog modal-dialog-centered modal-xl">
													        <div class="modal-content">
													           
													           <div class="modal-header">
													           		<h3 class="modal-title align-items-start flex-column">
													           			 Order Details
				                                                    </h3>
													                
													                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
													                    <i aria-hidden="true" class="ki ki-close"></i>
													                </button>
													            </div>
													           
													            <div class="modal-body pt-3 pr-5 pl-5">
													            
													                   <div class="row">
                            
									                            	<div class="col-lg-3 col-xl-3 mb-5">
																			<!--begin::Iconbox-->
																			<div class="card card-custom bg-success card-stretch gutter-b">
																				<div class="card-body">
																					<div class="d-flex align-items-center">
																						
																						<div class="d-flex flex-column" style="line-height: 0; margin-bottom: -12px;">
																							<p class="card-title font-weight-bolder text-white text-hover-state-dark  mb-4 d-block" style="font-size: 12px;"> Order ID </p>
										                                                	<input type="text" class="text-white font-size-h6 font-weight-bolder mr-2 w-100" style="border: 0;background-color: #14c4bc;" disabled="disabled"  id="lineOrderId" name="orderId">
									                                          			</div>
																					</div>
																				</div>
																			</div>
																			<!--end::Iconbox-->
																		</div>
																		
																		<div class="col-lg-3 col-xl-3 mb-5">
																			<!--begin::Iconbox-->
																			<div class="card card-custom bg-warning card-stretch gutter-b">
																				<div class="card-body">
																					<div class="d-flex align-items-center">
																						
																						<div class="d-flex flex-column" style="line-height: 0; margin-bottom: -12px;">
																							<p class="card-title font-weight-bolder text-white text-hover-state-dark  mb-4 d-block" style="font-size: 12px;"> Customer Name </p>
										                                                	<input type="text" class="text-white font-size-h6 font-weight-bolder mr-2 w-100" style="border: 0;background-color: #ffa82d;" disabled="disabled"  id="linecustomerName" name="customerName" >
									                                          			</div>
																					</div>
																				</div>
																			</div>
																			<!--end::Iconbox-->
																		</div>
																		
																		<div class="col-lg-3 col-xl-3 mb-5">
																			<!--begin::Iconbox-->
																			<div class="card card-custom bg-info card-stretch gutter-b">
																				<div class="card-body">
																					<div class="d-flex align-items-center">
																						
																						<div class="d-flex flex-column" style="line-height: 0; margin-bottom: -12px;">
																							<p class="card-title font-weight-bolder text-white text-hover-state-dark  mb-4 d-block" style="font-size: 12px;"> Supplier Name </p>
										                                                	<input type="text" class="text-white font-size-h6 font-weight-bolder mr-2 w-100" style="border: 0;background-color: #8c53f7;" disabled="disabled"  id="linesupplierName" name="supplierName">
									                                          			</div>
																					</div>
																				</div>
																			</div>
																			<!--end::Iconbox-->
																		</div>
																		
																		<div class="col-lg-3 col-xl-3 mb-5">
																			<!--begin::Iconbox-->
																			<div class="card card-custom bg-danger card-stretch gutter-b">
																				<div class="card-body">
																					<div class="d-flex align-items-center">
																						
																						<div class="d-flex flex-column" style="line-height: 0; margin-bottom: -12px;">
																							<p class="card-title font-weight-bolder text-white text-hover-state-dark  mb-4 d-block" style="font-size: 12px;"> Status </p>
										                                                	<input type="text" class="text-white font-size-h6 font-weight-bolder mr-2 w-100" style="border: 0;background-color: #f75163;" disabled="disabled"  id="orderStatus" name="status">
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
											                            <table  id="purchaseOrderLineGrid"></table>
											                            <div id="purchaseOrderLineGridPager"></div>
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
                                                	       
											                
                                                	
                                                
                                                    <table id="purchaseOrderViewGrid"></table>
                                                    <div id="purchaseOrderViewGridPager"></div>
                                                </div>
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
        <script src="${pageContext.request.contextPath}/assets/js/menu-scripts.bundle.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/pages/features/miscellaneous/sweetalert2.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/pages/crud/forms/widgets/bootstrap-daterangepicker.js"></script>
        <script src="${pageContext.request.contextPath}/JS/jquery-ui.js"></script>
        <script src="${pageContext.request.contextPath}/assets/validator/js/bootstrapValidator.min.js"></script>
        <script src="${pageContext.request.contextPath}/JS/Admin/purchaseOrderView.js"></script>
        <script src="${pageContext.request.contextPath}/JS/tenderCommon.js"></script>


    </body>
    <!--end::Body-->

    </html>