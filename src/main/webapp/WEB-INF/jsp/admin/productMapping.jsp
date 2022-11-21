<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>

    <html lang="en">
    <!--begin::Head-->

    <head>
        <base href="">
        <meta charset="utf-8" />
        <title> Product Mapping </title>
        <meta name="description" content="" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <link rel="canonical" href="https://keenthemes.com/metronic" />
        <!--begin::Fonts-->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" />
        <!--end::Fonts-->

        <!--begin::Page Vendors Styles(used by this page)-->
        <link href="${pageContext.request.contextPath}/assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css" />
        <!--end::Page Vendors Styles-->

        <!--begin::Global Theme Styles(used by all pages)-->
        <link href="${pageContext.request.contextPath}/assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/assets/plugins/custom/prismjs/prismjs.bundle.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/assets/css/style.bundle.css" rel="stylesheet" type="text/css" />
          <link href="${pageContext.request.contextPath}/assets/css/responsive.css" rel="stylesheet" type="text/css">
        <link href="${pageContext.request.contextPath}/assets/css/sweetalert2.min.css" rel="stylesheet" type="text/css" />
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/media/logos/favicon.ico" />
        <%-- 		<link rel="shortcut icon" href="${pageContext.request.contextPath}/sJS/jquery-ui.css" /> --%>
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
                                <div class="d-flex align-items-center flex-wrap mr-1">
                                    <div class="d-flex align-items-baseline flex-wrap mr-5">
                                        <ul class="breadcrumb breadcrumb-transparent breadcrumb-dot font-weight-bold p-0 my-2 font-size-sm">
                                            <li class="breadcrumb-item text-muted">
                                                <a href="dashboard" class="text-muted"> Admin </a>
                                            </li>
                                            <li class="breadcrumb-item text-muted">
                                                <a href="" class="text-muted">
                                                    <h5 class="text-dark font-weight-bold my-1 mr-5"> Product Mapping </h5>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <!--begin::Entry-->
                        <div class="d-flex flex-column-fluid">
                            <div class="container-fluid">
                                <div class="row mt-0 mt-lg-4">
                                    <div class="col-xl-12">
                                        <form id="bnfForm">
                                            <!--begin::Card-->
                                            <div class="card card-custom">
                                                <div class="card-header flex-wrap py-5">
                                                    <div class="card-title">
                                                        <h3 class="card-label"> Master Pip Code </h3>
                                                    </div>

                                                    <div class="card-toolbar">
                                                        <!--begin::Button-->
                                                        <a href="downloadBnfCode" class="btn btn-outline-success">
                                                            <i class="icon-xl la la-file-excel"></i> Export
                                                        </a>
                                                        <!--end::Button-->
                                                    </div>
                                                </div>

                                                <div class="card-body py-0 pt-7">

                                                    <!--begin:: NEW Card-->
                                                    <div class="card card-custom shadow-none card-collapse" data-card="true" id="">
                                                        <div class="card-header border-bottom-sm-0 pb-0">

                                                            <div class="d-flex row flex-column-fluid page">
                                                                <div class="col-md-11">
                                                                    <div class="row">
                                                                        <div class="col-md-3">
                                                                            <div class="form-group">
                                                                                <label>Pip Code</label>
                                                                                <input type="text" id="pipCode" name="pipCode" class="form-control" placeholder="Search Pip Code">
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-3" style = "display: none">
                                                                            <div class="form-group">
                                                                                <label>Pip Code Id</label>
                                                                                <input type="text" id="pipCodeId" name="pipCodeId" class="form-control" placeholder="Search PIP Code">
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-5">
                                                                            <div class="form-group">
                                                                                <label>Product Description</label>
                                                                                <input type="text" class="form-control" id="description" name="description" placeholder="Product Description" value="" />
                                                                            </div>
                                                                        </div>
                                                                        
                                                                <div class="col-md-2">
                                                                    <div class="form-group">
                                                                        <label> Strength </label>
                                                                        <input type="text" class="form-control" id="strength" name="strength" placeholder="Strength" value="" />
                                                                    </div>
                                                                </div>
                                                                
                                                                         <div class="col-md-2">
                                                                            <div class="form-group">
                                                                                <label> Form </label>
                                                                                <input type="text" class="form-control" id="form" name="form" placeholder="Form" value="" />
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <div class="col-md-1">
                                                                    <div class="card-toolbar">
                                                                        <a href="#" class="btn btn-icon btn-circle btn-sm btn-light-primary mr-1  mt-7" data-card-tool="toggle">
                                                                            <i class="ki ki-arrow-up icon-nm"></i>
                                                                        </a>
                                                                    </div>
                                                                </div>


                                                            </div>

                                                        </div>

                                                        <div class="card-body pt-0" style="display: none; overflow: hidden;">
                                                            <div class=" row ">
<!--                                                                 <div class="col-md-3" style="display:none;"> -->
<!--                                                                     <div class="form-group"> -->
<!--                                                                         <input id="bnfCodeId" name="bnfCodeId" type="text"> -->
<!--                                                                     </div> -->
<!--                                                                 </div> -->
                                                                <div class="col-md-3">
                                                                    <!--begin::Input-->
                                                                    <div class="form-group">
                                                                        <label> Pack Size </label>
                                                                        <input type="text" class="form-control border-2" id="packSize" name="packSize" placeholder="" value="" />
                                                                    </div>
                                                                    <!--end::Input-->
                                                                </div>


                  														<div class="col-md-4">
                                                                            <div class="form-group">
                                                                                <label> BNF Code </label>
                                                                                <input type="text" class="form-control" id="bnfCode" name="bnfCode" placeholder="BNF Code" value="" />
                                                                            </div>
                                                                        </div>
                                                                        
                                                                        <div class="col-md-4" style="display:none">
                                                                            <div class="form-group">
                                                                                <label> BNF ID</label>
                                                                                <input type="text" class="form-control" id="bnfCodeId" name="bnfCodeId" placeholder="Product Description" value="" />
                                                                            </div>
                                                                        </div>

                                                                <div class="col-md-4">
                                                                    <div class="form-group">
                                                                        <label for="">  Category  </label>
                                                                        <select class="form-control border-2" id="category" name="category">
									                                        <option value=""></option>
									                                    </select>
                                                                    </div>
                                                                </div>
                                                                <div class="col-xl-1">
                                                                    <div class="form-group">
                                                                        <button class="btn btn-success btn-md mt-7" type="submit"> Save </button>
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
                                <div class="row mt-4 mt-lg-4">
                                    <div class="col-xl-12">
                                        <div class="card card-custom">
                                            <div class="card-header flex-wrap py-5">
                                                <div class="card-title">
                                                    <h3 class="card-label"> Alternate Pip Code </h3>
                                                </div>
                                                <form id="pipcodeForm">
                                                    <div class="card-toolbar pro-mapping">
                                                        <div class="form-group mb-0 mr-2">
                                                            <input type="text" id="supplier" name="supplier" class="form-control form-control-lg border-2" placeholder="Supplier" />
                                                        </div>
                                                        <div class="form-group mb-0 mr-2" style="display: none">
                                                            <input type="text" id="supplierId" name="supplierId" class="form-control form-control-lg border-2" placeholder="Supplier" />
                                                        </div>
                                                        <div class="form-group mb-0">
                                                            <div class="input-group">
                                                                <input type="text" id="alternatePipCode" name="alternatePipCode" class="form-control form-control-lg" placeholder="Pip Code" disabled/>
                                                                <div class="input-group-append">
                                                                    <button class="btn btn-success btn-lg" type="submit"> Add </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                            <div class="card-body">
                                                <table id="bnfPipcodeView"></table>
                                                <div id="bnfPipcodeViewPager"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--end::Content-->
                        <jsp:include page="../footer.jsp"></jsp:include>
                    </div>
                </div>
            </div>
        </div>
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
        <script src="${pageContext.request.contextPath}/JS/jquery-ui.js"></script>

        <script src="${pageContext.request.contextPath}/assets/js/scripts.bundle.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/menu-scripts.bundle.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/pages/features/miscellaneous/sweetalert2.js"></script>
        <script src="${pageContext.request.contextPath}/assets/validator/js/bootstrapValidator.min.js"></script>
        <script src="${pageContext.request.contextPath}/JS/Admin/productMapping.js"></script>
        <script src="${pageContext.request.contextPath}/JS/tenderCommon.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/pages/features/cards/tools.js"></script>


    </body>
    <!--end::Body-->

    </html>