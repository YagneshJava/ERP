<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>

    <html lang="en">
    <!--begin::Head-->

    <head>

        <meta charset="utf-8" />
        <title> Customer Verification </title>
        <meta name="description" content="" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <link rel="canonical" href="" />
        <!--begin::Fonts-->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" />
        <!--end::Fonts-->

        <!--begin::Page Vendors Styles(used by this page)-->

        <!--end::Page Vendors Styles-->

        <!--begin::Global Theme Styles(used by all pages)-->
        <link href="${pageContext.request.contextPath}/assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/assets/plugins/custom/prismjs/prismjs.bundle.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/assets/css/style.bundle.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css" />
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/media/logos/favicon.ico" />
        <link href="${pageContext.request.contextPath}/assets/css/sweetalert2.min.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/assets/css/responsive.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/sidebar.css">
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
                                        <!--begin::Page Title-->

                                        <!--end::Page Title-->
                                        <!--begin::Breadcrumb-->
                                        <ul class="breadcrumb breadcrumb-transparent breadcrumb-dot font-weight-bold p-0 my-2 font-size-sm">
                                            <li class="breadcrumb-item text-muted">
                                                <a href="dashboard.html" class="text-muted"> Admin </a>
                                            </li>
                                            <li class="breadcrumb-item text-muted">
                                                <a href="" class="text-muted">
                                                    <h5 class="text-dark font-weight-bold my-1 mr-5"> Customer Verification </h5>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
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


                                        <!--begin::Card-->
                                        <div class="card card-custom">
                                            <div class="card-header flex-wrap py-5">
                                                <div class="card-title">
                                                    <h3 class="card-label"> Customer Request List </h3>
                                                </div>

                                                <div class="card-toolbar" style="display:none">
                                                    <!--begin::Button-->
                                                    <a href="#" class="btn btn-primary  font-weight-bolder">
                                                        <span class="svg-icon svg-icon-md">
                                                    <!--begin::Svg Icon | path:C:\wamp64\www\keenthemes\legacy\metronic\theme\html\demo6\dist/../src/media/svg/icons\Navigation\Check.svg--><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                        <polygon points="0 0 24 0 24 24 0 24"></polygon>
                                                        <path d="M6.26193932,17.6476484 C5.90425297,18.0684559 5.27315905,18.1196257 4.85235158,17.7619393 C4.43154411,17.404253 4.38037434,16.773159 4.73806068,16.3523516 L13.2380607,6.35235158 C13.6013618,5.92493855 14.2451015,5.87991302 14.6643638,6.25259068 L19.1643638,10.2525907 C19.5771466,10.6195087 19.6143273,11.2515811 19.2474093,11.6643638 C18.8804913,12.0771466 18.2484189,12.1143273 17.8356362,11.7474093 L14.0997854,8.42665306 L6.26193932,17.6476484 Z" fill="#000000" fill-rule="nonzero" transform="translate(11.999995, 12.000002) rotate(-180.000000) translate(-11.999995, -12.000002) "></path>
                                                    </g>
                                                </svg><!--end::Svg Icon--></span> Approve All </a>
                                                    <!--end::Button-->
                                                </div>
                                            
                                            
                                              
                                            		<ul class="nav nav-bold nav-pills" id="myTab" role="tablist">
															<li class="nav-item">
																<a class="nav-link active" id="manufacturer-tab" data-toggle="tab" href="javascript:void(0)" onclick="getCustomerVerificationList('MANUFACTURER')" >
																	<span class="nav-icon">
																		<i class="flaticon2-user-1"></i>
																	</span>
																	<span class="nav-text">Manufacturer</span>
																</a>
															</li>
															<li class="nav-item">
																<a class="nav-link" id="supplier-tab" data-toggle="tab" href="javascript:void(0)" onclick="getCustomerVerificationList('SUPPLIER')" aria-controls="supplier">
																	<span class="nav-icon">
																		<i class="flaticon2-lorry"></i>
																	</span>
																	<span class="nav-text">Supplier</span>
																</a>
															</li>
															<li class="nav-item">
																<a class="nav-link" id="pharmacy-tab" data-toggle="tab" href="javascript:void(0)" onclick="getCustomerVerificationList('PHARMACY')"  aria-controls="pharmacy">
																	<span class="nav-icon">
																		<i class="flaticon2-add"></i>
																	</span>
																	<span class="nav-text">Pharmacy</span>
																</a>
															</li>
													</ul>
                                            
                                            
                                            
                                            </div>
                                            
                                            <div class="card-body">
                                            
                                                <!--begin: Datatable-->
                                                <table id="customerDataTable" class="table table-hover nowrap table-checkable">
                                                </table>
                                                <!--end: Datatable-->
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

        <!--begin:: Customer History Modal-->
        <div class="modal fade" id="ViewCustomerHistoryModal" data-backdrop='static' tabindex="-1" role="dialog" aria-labelledby="exampleModalSizeXl" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-xl" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel"> Customer Audit Log </h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<i aria-hidden="true" class="ki ki-close"></i>
					</button>
                    </div>
                    <div class="modal-body">
                        <table id="customerHistoryGrid"></table>
                        <div id="customerHistoryGridPager"></div>
                    </div>
                </div>
            </div>
        </div>


        <div class="modal fade" id="LicenseVerificationModal" data-backdrop='static' tabindex="-1" role="dialog" aria-labelledby="LicenseVerificationModal" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel"> Customer License verification </h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<i aria-hidden="true" class="ki ki-close"></i>
					</button>
                    </div>
                    <div class="modal-body pt-3 pr-5 pl-5">
                        <!--begin::Table-->
                        <div class="table-responsive">
                            <table class="table table-vertical-center">
                                <thead>
                                    <tr>
                                        <th> Schedule </th>
                                        <th> Licence No. </th>
                                        <th> Expiry Date </th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <tr>
                                        <td><span class="text-dark-75 d-block font-size-lg"> Schedule 2  </span> </td>
                                        <td><span class="text-dark-75  d-block font-size-lg" id="license2"> 56037-XDER </span></td>
                                        <td><span class="text-dark-75 d-block font-size-lg" id="license2DatePicker">05/28/2020</span></td>
                                    </tr>

                                    <tr>
                                        <td><span class="text-dark-75 d-block font-size-lg"> Schedule 3  </span> </td>
                                        <td><span class="text-dark-75  d-block font-size-lg" id="license3"> 56037-XDER </span></td>
                                        <td><span class="text-dark-75 d-block font-size-lg" id="license3DatePicker">05/28/2020</span></td>
                                    </tr>

                                    <tr>
                                        <td><span class="text-dark-75 d-block font-size-lg"> Schedule 4.1  </span> </td>
                                        <td><span class="text-dark-75  d-block font-size-lg" id="license41"> 56037-XDER </span></td>
                                        <td><span class="text-dark-75 d-block font-size-lg" id="license41DatePicker">05/28/2020</span></td>
                                    </tr>
                                    <tr>
                                        <td><span class="text-dark-75 d-block font-size-lg"> Schedule 4.2  </span> </td>
                                        <td><span class="text-dark-75  d-block font-size-lg" id="license42"> 56037-XDER </span></td>
                                        <td><span class="text-dark-75 d-block font-size-lg" id="license42DatePicker">05/28/2020</span></td>
                                    </tr>
                                    <tr>
                                        <td><span class="text-dark-75 d-block font-size-lg"> Schedule 5  </span> </td>
                                        <td><span class="text-dark-75  d-block font-size-lg" id="license5"> 56037-XDER </span></td>
                                        <td><span class="text-dark-75 d-block font-size-lg" id="license5DatePicker">05/28/2020</span></td>
                                    </tr>

                                </tbody>
                            </table>
                        </div>
                        <!--end::Table-->

                        <div class="separator separator-dashed my-5"></div>
                        <h5 class="modal-title"> Home License File </h5>
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
<!--                         <div class="separator separator-dashed my-5"></div> -->
                        <h5 class="modal-title"> WDA License File </h5>
                        <ul class="navi navi-hover navi-link-rounded-lg">
                            <li class="navi-item">
                                <a class="navi-link" id="wdalicenseFileDownload">
                                    <span class="navi-icon">
										<i class="icon-lg text-danger far fa-file-pdf"></i>
										</span>
                                    <span class="navi-text" id="wdalicenseFile"></span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <!--end::Customer History  Modal-->


        <%-- 		<script src="${pageContext.request.contextPath}/assets/plugins/global/plugins.bundle.js"></script> --%>
            <script src="${pageContext.request.contextPath}/assets/plugins/custom/prismjs/prismjs.bundle.js"></script>
            <script src="${pageContext.request.contextPath}/assets/js/scripts.bundle.js"></script>
            <script src="${pageContext.request.contextPath}/assets/js/menu-scripts.bundle.js"></script>
            <script src="${pageContext.request.contextPath}/assets/plugins/custom/datatables/datatables.bundle.js"></script>
            <script src="${pageContext.request.contextPath}/assets/js/pages/features/miscellaneous/sweetalert2.js"></script>
            <script src="${pageContext.request.contextPath}/JS/Admin/customerVerification.js?v=435"></script>
            <script src="${pageContext.request.contextPath}/JS/tenderCommon.js"></script>


    </body>
    <!--end::Body-->

    </html>