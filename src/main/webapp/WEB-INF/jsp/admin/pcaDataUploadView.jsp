<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>

    <html lang="en">
    <!--begin::Head-->

    <head>
        <meta charset="utf-8" />
        <title> PCA </title>
        <meta name="description" content="" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <link rel="canonical" href="https://keenthemes.com/metronic" />
        <!--begin::Fonts-->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" />
        <!--end::Fonts-->


        <link href="${pageContext.request.contextPath}/assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css" />


        <!--begin::Global Theme Styles(used by all pages)-->
        <link href="${pageContext.request.contextPath}/assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/assets/plugins/custom/prismjs/prismjs.bundle.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/assets/plugins/custom/global/uppy.bundle.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/assets/css/style.bundle.css" rel="stylesheet" type="text/css" />
          <link href="${pageContext.request.contextPath}/assets/css/responsive.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/sidebar.css">

        <link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/media/logos/favicon.ico" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/jqgrid/css/ui.jqgrid-bootstrap.min.css">
        <script src="${pageContext.request.contextPath}/assets/plugins/global/plugins.bundle.js"></script>
        <script src="${pageContext.request.contextPath}/assets/jqgrid/js/jquery.jqgrid.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/validator/js/bootstrapValidator.min.js"></script>

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
                                                    <h5 class="text-dark font-weight-bold my-1 mr-5"> PCA Data </h5>
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
                                <!--end::Row-->

                                <div class="card card-custom card-stretch">
                                    <div class="card-header">
                                        <div class="card-title">
                                            <h3 class="card-label">Upload</h3>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <div class="mb-0 row">
                                            <div class="col-lg-12 col-md-12 col-sm-12">
                                                <form id="pcaDataForm" name="pcaDataForm" enctype="multipart/form-data">
                                                    <div class="mb-0 row">
                                                        <div class="col-lg-2">
                                                            <div class="form-group input-group ">
                                                                <input type="text" class="form-control border-2" id="pcaMonthPicker" name="month" placeholder="Select Month">
                                                                <div class="input-group-append">
                                                                    <span class="input-group-text">
																<i class="la la-calendar"></i>
															</span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-2">
                                                            <div class="form-group input-group ">
                                                                <input type="text" class="form-control border-2" id="pcaYearPicker" name="year" placeholder="Select Year">
                                                                <div class="input-group-append">
                                                                    <span class="input-group-text">
																<i class="la la-calendar"></i>
															</span>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="col-lg-6 ">

                                                            <div class="form-group ">

                                                                <div class="custom-file">
                                                                    <input type="file" class="custom-file-input" id="pcaDataFile" name="pcaDataFile" />
                                                                    <label class="custom-file-label  border-2" for="customFile1">Choose file</label>
                                                                </div>
                                                            </div>

                                                        </div>
                                                        <div class="col-lg-2 ">
                                                            <div class="form-group mb-4 row">
                                                                <div class="col-lg-12 col-md-12 col-sm-12">
                                                                    <button class="uppy-btn btn btn-success font-weight-bold btn-sm mt-1" name="action" type="submit">Submit</button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                </form>
                                            </div>
                                        </div>


                                        <hr class="mb-8">


                                        <!-- DATA TABLE ::Card-->
                                        <div class="mb-0 mt-4 row">
                                            <div class="col-lg-12 col-md-12 col-sm-12">
                                                <div class="card card-custom shadow-none border card-stretch">
                                                    <div class="card-header flex-wrap  pt-0 pb-0">
                                                        <div class="card-title">
                                                            <h3 class="card-label"> Uploaded PCA Data History </h3>
                                                        </div>

                                                    </div>
                                                    <div class="card-body">
                                                        <!--begin: Datatable-->
                                                        <table id="pcaGrid"></table>
                                                        <div id="pcaPager"></div>
                                                        <!--end: Datatable-->
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                        <!-- DATA TABLE ::Card-->


                                    </div>
                                </div>
                                <!--end:: customer-verification.html -->




                            </div>
                            <!--end::Container-->
                        </div>
                        <!--end::Entry-->
                    </div>
                    <!--end::Content-->
                    <div>
                        <form id="downloadPcaFile" action="downloadPCAFile" method="get"></form>
                    </div>

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
        <script src="${pageContext.request.contextPath}/assets/plugins/custom/datatables/datatables.bundle.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/pages/features/miscellaneous/sweetalert2.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/pages/crud/forms/widgets/bootstrap-daterangepicker.js"></script>
        <%-- 		<script src="${pageContext.request.contextPath}/assets/validator/js/bootstrapValidator.min.js"></script> --%>
            <%-- 		<script src="${pageContext.request.contextPath}/assets/js/pages/crud/file-upload/dropzonejs.js"></script> --%>
                <script src="${pageContext.request.contextPath}/JS/Admin/pcaDataUploadView.js?v=1235"></script>
                <script src="${pageContext.request.contextPath}/JS/tenderCommon.js"></script>

                <!--begin::Page Scripts(used by this page)-->
                <script src="${pageContext.request.contextPath}/assets/js/pages/crud/datatables/basic/scrollable.js"></script>
                <!--end::Page Scripts-->

    </body>
    <!--end::Body-->

    </html>