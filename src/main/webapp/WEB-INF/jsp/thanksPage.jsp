<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="utf-8" />
        <title> Thank you for your registration! </title>
        <meta name="description" content="Singin page example" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <link rel="canonical" href="" />

        <link rel="apple-touch-icon" sizes="180x180" href="${pageContext.request.contextPath}/assets/media/favicon/apple-touch-icon.png">
        <link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath}/assets/media/favicon/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath}/assets/media/favicon/favicon-16x16.png">
        <link rel="manifest" href="${pageContext.request.contextPath}/assets/media/favicon/site.webmanifest">
        <meta name="msapplication-TileColor" content="#da532c">
        <meta name="theme-color" content="#ffffff">

        <!--begin::Fonts-->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" />
        <!--end::Fonts-->
        <!--begin::Page Custom Styles(used by this page)-->
        <link href="${pageContext.request.contextPath}/assets/css/pages/login/login-3.css" rel="stylesheet" type="text/css" />
        <!--end::Page Custom Styles-->
        <!--begin::Global Theme Styles(used by all pages)-->
        <link href="${pageContext.request.contextPath}/assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/assets/plugins/custom/prismjs/prismjs.bundle.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/assets/css/style.bundle.css" rel="stylesheet" type="text/css" />
          <link href="${pageContext.request.contextPath}/assets/css/responsive.css" rel="stylesheet" type="text/css">

    </head>
    <!--end::Head-->

    <!--begin::Body-->

    <body id="kt_body" class="header-fixed header-mobile-fixed subheader-enabled sidebar-enabled page-loading">
        <!--begin::Main-->
        <div class="d-flex flex-column flex-root bg-color">
            <!--begin::Login-->
            <div class="login login-3 wizard d-flex flex-column flex-lg-row flex-column-fluid">
                <!--begin::Aside-->
                <div class="login-aside d-flex flex-column flex-row-auto">
                    <!--begin::Aside Top-->
                    <div class="d-flex flex-column-auto flex-column pt-lg-40 pt-15">
                        <!--begin::Aside header-->
                        <a href="#" class="login-logo text-center pt-lg-25 pb-10">
                            <img src="${pageContext.request.contextPath}/assets/media/logos/logo-1.png" class="max-h-70px" alt="" />
                        </a>
                        <!--end::Aside header-->
                        <!--begin::Aside Title-->
                        <h3 class="font-weight-bolder text-center font-size-h4 text-dark-50 line-height-xl">User Experience &amp; Interface Design
                            <br />Strategy SaaS Solutions</h3>
                        <!--end::Aside Title-->
                    </div>
                    <!--end::Aside Top-->

                    <!--begin::Aside Bottom-->
                    <div class="aside-img d-flex flex-row-fluid bgi-no-repeat bgi-position-x-center" style="background-position-y: calc(100% + 5rem); background-image: url(${pageContext.request.contextPath}/assets/media/svg/illustrations/login-visual-5.svg)">
                    </div>
                    <!--end::Aside Bottom-->
                </div>
                <!--begin::Aside-->

                <!--begin::Content-->
                <div class="login-content flex-row-fluid d-flex flex-column p-10">

                    <!--begin::Wrapper-->
                    <div class="d-flex flex-row-fluid flex-center">
                        <!--begin::Signin-->
                        <div class="login-form">
                            <!--begin::Form-->
                            <form class="form" id="kt_login_singin_form" action="">


                                <!--begin::Title-->
                                <div class="pb-5 pb-lg-15 text-center">
                                    <i class="icon-xl far text-success display-1 font-size-lg mb-5 text-center fa-check-circle"></i>
                                    <h3 class="font-weight-bolder font-size-h2  mb-8 text-success font-size-h1-lg">
                                        Thank you for registration!
                                    </h3>

                                    <span class="font-size-h4 font-size-lg-h2 text-muted">Redirect to login page in <span id="timerValue" class="text-success" style="width:70px">10 seconds...</span> <br>or click here to </span>
                                    <a href="${pageContext.request.contextPath}/login" class="font-weight-bold font-size-h4 font-size-lg-h2 mr-2 mt-8">  Login </a>

                                </div>
                                <!--begin::Title-->

                            </form>
                            <!--end::Form-->
                        </div>
                        <!--end::Signin-->
                    </div>
                    <!--end::Wrapper-->
                </div>
                <!--end::Content-->

            </div>
            <!--end::Login-->
        </div>
        <!--end::Main-->

        <!--begin::Global Theme Bundle(used by all pages)-->
        <script src="${pageContext.request.contextPath}/assets/plugins/global/plugins.bundle.js"></script>
        <script src="${pageContext.request.contextPath}/assets/plugins/custom/prismjs/prismjs.bundle.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/scripts.bundle.js"></script>
        <!--end::Global Theme Bundle-->

        <script>
            $(document).ready(function() {
                setTimer();
            });

            function setTimer() {
                var second = 10;
                var interval = setInterval(function() {
                    second--;
                    if (second <= 0) {
                        clearInterval(interval);
                        window.location.href = "login";
                        return;
                    } else {
                        if (second <= 10) {
                            $('#timerValue').text(("0" + second).slice(-2) + " seconds...");
                        }
                    }
                }, 1000);
            }
        </script>
    </body>
    <!--end::Body-->

    </html>