<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>

    <html lang="en">
    <!--begin::Head-->

    <head>
        <meta charset="utf-8" />
        <title> Transactions </title>
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
        <link href="${pageContext.request.contextPath}/assets/css/sweetalert2.min.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/sidebar.css">
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/media/logos/favicon.ico" />

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
                                <!--begin::Mobile Toggle-->
									<button class="burger-icon burger-icon-right mr-4 d-inline-block d-lg-none" id="kt_subheader_mobile_toggle">
										<span></span>
									</button>
									<!--end::Mobile Toggle-->
                                    <!--begin::Page Heading-->
                                    <div class="d-flex align-items-baseline flex-wrap mr-5">
                                        <!--begin::Page Title-->

                                        <!--end::Page Title-->
                                        <!--begin::Breadcrumb-->
                                        <ul class="breadcrumb breadcrumb-transparent breadcrumb-dot font-weight-bold p-0 my-2 font-size-sm">
                                            <li class="breadcrumb-item text-muted">
                                                <a href="wellcomeCustomerPage" class="text-muted"> Dashboard </a>
                                            </li>
                                            <li class="breadcrumb-item text-muted">
                                                <a href="" class="text-muted"> Profile </a>
                                            </li>
                                            <li class="breadcrumb-item text-muted">
                                                <a href="" class="text-muted">
                                                    <h5 class="text-dark font-weight-bold my-1 mr-5"> Transactions </h5>
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

                        <!--begin::Content-->
                        <div class="content d-flex flex-column flex-column-fluid" id="kt_content">

                            <!--begin::Entry-->
                            <div class="d-flex flex-column-fluid">
                                <!--begin::Container-->
                                <div class="container-fluid">
                                    <!--begin::Profile Account Information-->
                                    <div class="d-flex flex-row">
                                        <!--begin::Aside-->
                                        <div class="flex-row-auto offcanvas-mobile w-250px w-xxl-350px" id="kt_profile_aside">
                                            <!--begin::Profile Card-->
                                            <div class="card card-custom card-stretch">
                                                <!--begin::Body-->
                                                <jsp:include page="profileSidebar.jsp"></jsp:include>
                                                <!--end::Body-->
                                            </div>
                                            <!--end::Profile Card-->
                                        </div>
                                        <!--end::Aside-->

                                        <div class="flex-row-fluid ml-lg-8" id="statementDiv">
                                            <form class="form" id="statementForm">
                                                <!--begin::Card-->
                                                <div class="card card-custom">
                                                    <div class="card-header py-3">
                                                        <div class="card-title align-items-start flex-column">
                                                            <h3 class="card-label font-weight-bolder text-dark"> Transactions </h3>
                                                            <span class="text-muted font-weight-bold font-size-sm mt-1"> Supplier wise Transactions.</span>
                                                        </div>
                                                    </div>
                                                    <!--end::Header-->


                                                    <div class="card-body">

                                                        <div class="row">

                                                            <div class="col-xl-12">


                                                                <div class="my-5">


                                                                    <div class=" row">
                                                                        <label class="col-2"> Month * </label>
                                                                        <div class="form-group col-4">
                                                                            <div class="input-group date">
                                                                                <input class="form-control border-2 date-picker" id="statementMonth" name="statementMonth" placeholder="Select Month" />
                                                                                <div class="input-group-append">
                                                                                    <span class="input-group-text">
							                                                    <i class="la la-calendar-check-o"></i>
							                                                </span>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-group col-3">
                                                                            <button type="submit" class="btn btn-light-info font-weight-bolder font-size-sm">
																		<i class="icon-lg la la-download"></i> Download Statement </button>
                                                                        </div>
                                                                        <div class=" row" style="display: none">
                                                                            <label class="col-3"> Account Name * </label>
                                                                            <div class="form-group col-9">
                                                                                <div class="input-group">
                                                                                    <input type="hidden" id="customerId" name="customerId" value="${sessionScope.userCompanyDetails.getId()}">
                                                                                </div>
                                                                            </div>
                                                                        </div>


                                                                    </div>
                                                                </div>
                                                            </div>

                                                        </div>
                                                    </div>
                                            </form>
                                            </div>

                                        </div>
                                        <!--end::Profile Account Information-->
                                    </div>
                                    <!--end::Container-->
                                </div>
                                <!--end::Entry-->
                            </div>
                            <!--end::Content-->

                        </div>
                        <!--end::Content-->
                        <div id="wrapper" style="display: none"></div>


                        <div class="modal fade" data-backdrop="static" id="supplierListModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalSizeXl" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered " role="document">
                                <div class="modal-content">

                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel"> Supplier List </h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <i aria-hidden="true" class="ki ki-close"></i>
                        </button>
                                    </div>

                                    <div class="modal-body">

                                        <div class="row">

                                            <div class="col-xl-12">
                                                <!--begin::Input-->
                                                <div class="form-group">
                                                    <input class="mr-3" type="checkbox" id="allSupplier" name="allSupplier" value="allSupplier"><label for="allSupplier"> All </label>

                                                </div>
                                                <!--end::Input-->
                                            </div>
                                            <div class="col-xl-12">
                                                <!--begin::Input-->
                                                <div class="form-group" id="supplierChkBox">
                                                </div>
                                                <!--end::Input-->
                                            </div>


                                        </div>

                                        <%--                     <input type="hidden" id="customerId" name="customerId" value="${sessionScope.userCompanyDetails.getId()}"> --%>
                                            <!--end::Form-->


                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-warning font-weight-bold" onclick="downloadStatement()">  Download   </button>
                                            </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <jsp:include page="../footer.jsp"></jsp:include>

                    </div>
                    <!--end::Wrapper-->

                </div>
                <!--end::Page-->
            </div>
            <!--end::Main-->

            <script src="${pageContext.request.contextPath}/assets/plugins/global/plugins.bundle.js"></script>
            <script src="${pageContext.request.contextPath}/assets/plugins/custom/prismjs/prismjs.bundle.js"></script>
            <script src="${pageContext.request.contextPath}/JS/jquery-ui.js"></script>
            <script src="${pageContext.request.contextPath}/assets/js/scripts.bundle.js"></script>
            <script src="${pageContext.request.contextPath}/assets/js/menu-scripts.bundle.js"></script>
                <script src="${pageContext.request.contextPath}/assets/js/profile.js"></script>
            <script src="${pageContext.request.contextPath}/assets/js/pages/features/miscellaneous/sweetalert2.js"></script>
            <script src="${pageContext.request.contextPath}/assets/js/pages/crud/forms/widgets/bootstrap-daterangepicker.js"></script>
            <script src="${pageContext.request.contextPath}/assets/validator/js/bootstrapValidator.min.js"></script>
            <script src="${pageContext.request.contextPath}/JS/profile/profileStatementDetails.js"></script>
            <script src="${pageContext.request.contextPath}/JS/tenderCommon.js"></script>
    </body>
    <!--end::Body-->

    </html>