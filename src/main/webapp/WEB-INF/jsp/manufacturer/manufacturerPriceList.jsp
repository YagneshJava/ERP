<!DOCTYPE html>

<html lang="en">
<!--begin::Head-->

<head>

    <base href="">
    <meta charset="utf-8" />
    <title> Price List </title>
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
                                    <!-- 									<h5 class="text-dark font-weight-bold my-1 mr-5"> Price List </h5> -->
                                    <ul class="breadcrumb breadcrumb-transparent breadcrumb-dot font-weight-bold p-0 my-2 font-size-sm">
                                        <li class="breadcrumb-item text-muted"><a href="wellcomeSupplierPage" class="text-muted"> Dashboard
										</a></li>
                                        <li class="breadcrumb-item text-muted">
                                            <h5>
                                                <a href="supplierPriceListPage" class="text-dark font-weight-bold"> Price List </a>
                                            </h5>
                                        </li>
                                    </ul>
                                    <!--end::Page Title-->
                                    <!--begin::Breadcrumb-->
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

                        <!--begin::Container-->
                        <div class="container-fluid">
                            <input type="hidden" id="supplierId" name="supplierId" value="${sessionScope.userCompanyDetails.getId()}">
                            <!--begin::Content-->
                            <div class="row mt-0 mt-lg-4" id="supplierConfirmOrderDiv">
                                <div class="col-xl-12">


                    <!--begin::Global Search-->
                                    <div class="quick-search quick-search-inline mb-10 w-28" id="kt_quick_search_inline">
                                        <!--begin::Form-->
                                        <form method="get" class="quick-search-form g-search">
                                            <div class="input-group rounded bg-white input-group-lg g-search-box" >
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text">
                                                        <i class="flaticon2-search-1 icon-md"></i>
                                                    </span>
                                                </div>
                                                <input type="text" class="form-control h-40px search-form pl-3" placeholder="Search...">
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
                                                                <input type="text" id="srchProduct" name="srchProduct" class="form-control border-0 font-weight-bold pl-2 twitter-typeahead ui-autocomplete-input" placeholder=" Search Product " autocomplete="off">
                                                            </div>
                                                            
                                                            
                                                            
                                                             <div class="input-group mb-3">
                                                                <select id="srchLineType" name="srchDateType" style="width:auto" class="form-control border-0 font-weight-bold pl-2">
												                      <option value="all" selected=""> All  </option>
												                      <option value="offer"> Active Offers  </option>
												                    </select>
                                                            </div>
                                                            

															<button type="button" onclick="loadPriceList()" class="btn btn-primary font-weight-bold btn-hover-light-primary  float-right  mt-3 mt-sm-0" id="searchBtn">
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
                                        <div class="card-header py-5 justify-content-end">
                                            <div class="bg-white effect1 rounded p-2 pr-3 pl-3 d-flex flex-grow-1 flex-sm-grow-0" style="display: none !important;">
                                                <form id="quotationSearchForm" class="form d-flex flex-sm-row flex-column flex-grow-1 flex-sm-grow-0">
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
                                                        <input type="text" id="srchProduct" name="srchProduct" class="form-control border-0 font-weight-bold pl-2 twitter-typeahead" placeholder=" Search Product " />
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
                                                        <select id="srchLineType" name="srchDateType" style="width:auto" class="form-control border-0 font-weight-bold pl-2">
												                      <option value="all"  selected> All  </option>
												                      <option value="offer"  > Active Offers  </option>
												                    </select>
                                                    </div>
                                                    <!--end::Input-->


                                                    <button type="button" onclick="loadPriceList()" class="btn btn-primary font-weight-bold btn-hover-light-primary   mt-3 mt-sm-0">
																	<i class="icon-lg la la-search"></i>
																</button>
                                                </form>
                                                <!--end::Form-->
                                            </div>
                                            <div class="card-toolbar">
                                                <a href="#" data-toggle="modal" data-target="#UploadPriceListModal" class="btn btn-info font-weight-bolder font-size-sm mr-3"> Upload Price List </a>
                                                <a href="downloadPriceListFormat" class="btn btn-light-info font-weight-bolder font-size-sm">
                                                    <i class="icon-lg la la-download"></i> Download Price List Format </a>
                                            </div>
                                        </div>
                                        <!--begin::Header-->
                                        <!--end::Header-->



                                        <!--begin::Body-->
                                        <div class="card-body">

                                            <!--begin: Search Form-->

                                            <table id="priceListGrid"></table>
                                            <div id="priceListGridPager"></div>


                                            <!--end::Table-->



                                        </div>
                                        <!--end::Body-->
                                    </div>
                                    <!--end::Card-->


                                </div>
                            </div>
                            <!--end::Content-->


                        </div>

                    </div>
                </div>
                <jsp:include page="../footer.jsp"></jsp:include>
            </div>
        </div>
    </div>
    <!--begin::Entry-->

    <!--end::Main-->




    <!--begin::#UploadNewOffersModal Modal-->
    <div class="modal fade" id="UploadNewOffersModal" tabindex="-1" role="dialog" aria-labelledby="UploadNewOffersModal" aria-hidden="true" data-backdrop="static">
        <div class="modal-dialog modal-dialog-centered modal-xl" role="document">
            <div class="modal-content">

                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel"> Upload Offers Bulk </h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <i aria-hidden="true" class="ki ki-close"></i>
                        </button>
                </div>

                <div class="modal-body">
                    <!--begin::Form-->
                    <form class="form">

                        <div class="form-group mb-0 row">
                            <div class="col-lg-12 col-md-12 col-sm-12">
                                <div class="dropzone dropzone-default" id="kt_dropzone_1">
                                    <div class="dropzone-msg dz-message needsclick">
                                        <h3 class="dropzone-msg-title">Click here to upload Price List.</h3>
                                        <span class="dropzone-msg-desc">Only XLSX files are allowed!</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                    <!--end::Form-->


                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-success font-weight-bold"> Submit </button>
                    <button type="button" class="btn btn-danger font-weight-bold" data-dismiss="modal"> Close </button>
                </div>

            </div>
        </div>
    </div>
    <!--end::#UploadNewOffersModal Modal-->





    <!--begin:: Upload Price List  #UploadPriceListModal Modal-->
    <div class="modal fade" id="UploadPriceListModal" tabindex="-1" role="dialog" aria-labelledby="UploadPriceListModal" aria-hidden="true" data-backdrop="static">
        <div class="modal-dialog modal-dialog-centered modal-xl" role="document">
            <div class="modal-content">

                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel"> Upload Price List </h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <i aria-hidden="true" class="ki ki-close"></i>
                        </button>
                </div>

                <div class="modal-body">
                    <!--begin::Form-->
                    <form class="form">

                        <div class="form-group mb-0 row">
                            <div class="col-lg-12 col-md-12 col-sm-12">
                                <div class="dropzone dropzone-default" id="kt_dropzone_3">
                                    <div class="dropzone-msg dz-message needsclick">
                                        <h3 class="dropzone-msg-title">Click here to upload Price List.</h3>
                                        <span class="dropzone-msg-desc">Only XLSX files are allowed!</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                    <!--end::Form-->


                </div>

                <div class="modal-footer">
                    <!--                         <button type="button" class="btn btn-success font-weight-bold"> Submit   </button> -->
                    <button type="button" class="btn btn-danger font-weight-bold" data-dismiss="modal"> Close </button>
                </div>

            </div>
        </div>
    </div>
    <!--end:: #UploadPriceListModal Modal-->






    <!--begin:: MakeOfferModal Make it Offer   Modal-->
    <div class="modal fade" id="MakeOfferModal" tabindex="-1" role="dialog" aria-labelledby="MakeOfferModal" aria-hidden="true" data-backdrop="static">
        <div class="modal-dialog modal-dialog-centered modal-xl" role="document">
            <div class="modal-content">

                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel"> Make it Offer </h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <i aria-hidden="true" class="ki ki-close"></i>
                        </button>
                </div>

                <div class="modal-body">

                    <div class="row">
                        <div class="col-xl-12">
                            <div class="d-flex justify-content-between">

                                <div class="d-flex flex-column flex-root">
                                    <div class="card card-custom  mr-5  bg-success card-stretch gutter-b">
                                        <div class="card-body py-lg-0 pt-2">
                                            <p class="card-label font-weight-bolder mb-1 pt-5 text-white"> Product Name </p>
                                            <p  class="text-white font-size-h4" id="productName"></p>
                                        </div>
                                    </div>
                                </div>


                                <div class="d-flex flex-column flex-root">
                                    <div class="card card-custom  mr-5 bg-danger card-stretch gutter-b">
                                        <div class="card-body py-lg-0 pt-2">
                                            <p class="card-label font-weight-bolder mb-1 pt-5 text-white"> PIP Code </p>
                                            <p  class="text-white font-size-h4" id="pipCode"></p>
                                        </div>
                                    </div>
                                </div>

                                <div class="d-flex flex-column flex-root">
                                    <div class="card card-custom  mr-5 bg-info card-stretch gutter-b">
                                        <div class="card-body py-lg-0 pt-2">
                                            <p class="card-label font-weight-bolder mb-1 pt-5 text-white"> Selling Price </p>
                                            <p  class="text-white font-size-h4" id="sellingPrice"></p>
                                        </div>
                                    </div>
                                </div>


                            </div>

                        </div>
                    </div>


                    <hr class="mt-0 mb-8">

                    <!--begin::Form-->
                    <form class="form" id="offerForm">

                        <div class="row">

                            <div class="col-lg-6 col-md-9 col-sm-12">
                                <label for="">  Offer Start Date and End Date  </label>
                                <div class='input-group' id='offersDateRangePickerManu'>
                                    <input type='text' class="form-control border-2" readonly="readonly" placeholder="Select date range" id="offerStartEndDate" name="offerStartEndDate" />
                                    <div class="input-group-append">
                                        <span class="input-group-text">
											<i class="la la-calendar-check-o"></i>
										</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-6 pr-0">
                                <!--begin::Input-->
                                <div class="form-group">
                                    <label> Offer Price </label>
                                    <input type="number" class="form-control form-control-lg border-2" placeholder="" id="offerPrice" name="offerPrice" />
                                </div>
                                <!--end::Input-->
                            </div>

                            <div class="col-xl-3">
                                <!--begin::Input-->
                                <div class="form-group">
                                    <label> Buying Bulk Quantity </label>
                                    <input type="number" class="form-control form-control-lg border-2" placeholder="" id="offerMinQty" name="offerMinQty" />
                                </div>
                                <!--end::Input-->
                            </div>
							<div class="col-xl-3">
                              <!--begin::Input-->
                                <div class="form-group">
                                    <label> Buying Bulk Max Quantity </label>
                                    <input type="number" class="form-control form-control-lg" placeholder="" id="offerMaxQty" name="offerMaxQty" />
                                </div>
                                <!--end::Input-->
							</div>
                            <div class="col-xl-3" style="display: none">
                                <!--begin::Input-->
                                <div class="form-group">
                                    <input type="number" class="form-control form-control-lg border-2" placeholder="" id="lineId" name="lineId" />
                                </div>
                                <!--end::Input-->
                            </div>
                            <div class="col-xl-3" style="display: none">
                                <!--begin::Input-->
                                <div class="form-group">
                                    <input type="text" class="form-control form-control-lg border-2" placeholder="" id="supplierId" name="supplierId" />
                                </div>
                                <!--end::Input-->
                            </div>

                            <div class="col-xl-3 pr-0">
                                <!--begin::Input-->
                                <div class="form-group">
                                    <label> Brand </label>
                                    <input type="text" class="form-control form-control-lg border-2" placeholder="" id="brandName" name="brandName" />
                                </div>
                                <!--end::Input-->
                            </div>


                            <div class="col-xl-3 pl-0 text-center">
                                <div class="form-group row">
                                    <label class="col-12 "> Active / Inactive </label>
                                    <div class="col-12">
                                        <span class="switch switch-outline switch-icon switch-success">
											<label class="mt-2" style="    margin: 0 auto;">
												<input type="checkbox" checked="checked" name="status" id = "status" />
												<span></span>
                                        </label>
                                        </span>
                                    </div>
                                </div>
                            </div>

                        </div>

                    </form>
                    <!--end::Form-->
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-success font-weight-bold" onclick="updatePriceList()"> Submit  </button>
                    <button type="button" class="btn btn-danger font-weight-bold" data-dismiss="modal"> Close </button>
                </div>

            </div>
        </div>
    </div>
    <!--end::  Make it Offer   Modal-->





    <!--begin::Scrolltop-->

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
    <script src="${pageContext.request.contextPath}/JS/jquery-ui.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/scripts.bundle.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/menu-scripts.bundle.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/pages/widgets.js"></script>
    <script src="${pageContext.request.contextPath}/assets/plugins/custom/datatables/datatables.bundle.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/pages/crud/forms/widgets/bootstrap-daterangepicker.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/pages/crud/file-upload/dropzonejs.js"></script>
    <script src="${pageContext.request.contextPath}/JS/tenderCommon.js"></script>
    <script src="${pageContext.request.contextPath}/JS/manufacturer/manufacturerPriceList.js"></script>
</body>
<!--end::Body-->

</html>