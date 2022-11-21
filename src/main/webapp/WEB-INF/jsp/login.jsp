<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <!DOCTYPE html>

    <html lang="en">
    <!--begin::Head-->

    <head>

        <meta charset="utf-8" />
        <title>Sign In </title>
        <meta name="description" content="Singin page example" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <link rel="canonical" href="https://keenthemes.com" />

        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" />
        <link href="${pageContext.request.contextPath}/assets/css/pages/login/login-3.css" rel="stylesheet" type="text/css" />
<%--         <link href="${pageContext.request.contextPath}/assets/css/pages/login/login-4.css" rel="stylesheet" type="text/css" /> --%>
        <link href="${pageContext.request.contextPath}/assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/assets/plugins/custom/prismjs/prismjs.bundle.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/assets/css/style.bundle.css" rel="stylesheet" type="text/css" />
  		<link href="${pageContext.request.contextPath}/assets/css/responsive.css" rel="stylesheet" type="text/css">
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/media/logos/favicon.ico" />
    </head>
    <!--end::Head-->

    <!--begin::Body-->

    <body id="kt_body" class="header-fixed header-mobile-fixed subheader-enabled sidebar-en${pageContext.request.contextPath}/assetspage-loading">
        <!--begin::Main-->
        <div class="d-flex flex-column flex-root">
            <!--begin::Login-->
            <div class="login login-3 wizard d-flex flex-column flex-lg-row flex-column-fluid">
            
            <!--begin::Aside-->
				<div class="login-aside d-flex flex-column flex-row-auto login-gradient" style=" ">
					<!--begin::Aside Top-->
					<div class="d-flex flex-column-auto flex-column pt-lg-40 pt-15">
						<!--begin::Aside header-->
						<a href="#" class="text-center mb-10">
							<img src="${pageContext.request.contextPath}/assets/media/logos/e-pharma_logo1.png" class="max-h-40px" alt="" />
						</a>
						<!--end::Aside header-->
						<!--begin::Aside title-->
						<h6 class="text-center font-size-h3 font-size-h3-lg" style="color: #ffffff; line-height: 32px;">
						Provides a market-leading e-tendering facility  <br /> for preparing and publishing tenders online.
						</h6>
						<!--end::Aside title-->
					</div>
					<!--end::Aside Top-->
					<!--begin::Aside Bottom-->
					<div class="aside-img d-flex flex-row-fluid bgi-no-repeat bgi-position-y-bottom bgi-position-x-center" style="background-image: url(assets/media/svg/illustrations/login-visual-4.svg);"></div>
					<!--end::Aside Bottom-->
				</div>
				<!--begin::Aside-->
            
            				<div class="login-aside order-0 d-flex flex-column flex-row-auto" style="display: none !important;">
					<div class="login-conteiner bgi-no-repeat bgi-position-x-right bgi-position-y-bottom" style="background-image: url(assets/media/svg/illustrations/login-visual-4.svg);">
						<!--begin::Aside title-->
						<h3 class="pt-lg-40 pl-lg-20 pb-lg-0 pl-10 py-20 m-0 d-flex justify-content-lg-start font-weight-boldest display5 display1-lg text-white">We Got
						<br />A Surprise
						<br />For You</h3>
						<!--end::Aside title-->
					</div>
				</div>
				
                <!--begin::Aside-->
                <div class="login-aside d-flex flex-column flex-row-auto" style="background-color: #F2C98A; display: none !important;">
                    <!--begin::Aside Top-->
                    <div class="d-flex flex-column-auto flex-column pt-lg-40 pt-15">
                        <!--begin::Aside header-->
                        <a href="#" class="login-logo text-center pt-lg-25 pb-2">
                            <img src="${pageContext.request.contextPath}/assets/media/logos/logo-1.png" class="max-h-40px" alt="" />
                        </a>
                        <!--end::Aside header-->
                        <!--begin::Aside Title-->
<!--                         <h3 class="font-weight-bolder text-center font-size-h2  text-primary  line-height-xl"> -->
<!--                             Pharma eTender  -->
<!--                             </h3> -->
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
                    <div id="loginFormDiv" class="d-flex flex-row-fluid flex-center">
                        <!--begin::Signin-->
                        <div class="login-form">
                            <!--begin::Form-->
                            <form class="form" id="loginValidate" name='f' method='POST' action="${pageContext.request.contextPath}/login">
                                <!--begin::Title-->
                                <div class="pb-5 pb-lg-15 login-form-header">
                                    <h3 class="font-weight-bolder text-dark font-size-h2 font-size-h1-lg">Sign In</h3>
                                    <div class="text-muted font-weight-bold font-size-h4">New Here?
                                        <a href="signup" class="text-primary font-weight-bolder">Create Account</a></div>
                                </div>
							<div id="displayError">
								<c:if test="${not empty error}">
								<c:choose>  
									<c:when test="${ error == 'Maximum sessions of 1 for this principal exceeded'}">
										<span style="color: red">Only one user can login at a time.</span>
									</c:when>
									<c:when test="${ error == 'External system authentication failed'}">
										<span style="color: red">Invalid user name or password.</span>
									</c:when>
									<c:otherwise>
									<span style="color: red">${error}</span>
									</c:otherwise>
									</c:choose>
								</c:if>
							</div>
							<!--begin::Title-->
                                <!--begin::Form group-->
                                <div class="login-form-body">
	                                <div class="form-group">
	                                    <label class="font-size-h6 font-weight-bolder text-dark">User Name</label>
	                                    <input class="form-control h-auto py-7 px-6 rounded-lg border-2" type="text" id="username" name="username" autocomplete="off" required/>
	                                </div>
	                                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	                                <!--end::Form group-->
	
	                                <!--begin::Form group-->
	                                <div class="form-group">
	                                    <div class="d-flex justify-content-between mt-n5">
	                                        <label class="font-size-h6 font-weight-bolder text-dark pt-5">Password</label>
	                                    </div>
	                                    <input class="form-control h-auto py-7 px-6 rounded-lg border-2" type="password" name="password" id="password" autocomplete="off" required />
	                                </div>
								</div>

                                <div class="row">
                                    <div class="col-md-6">
                                        <!--begin::Action-->
                                        <div class="">
                                            <button type="submit" id="kt_login_singin_form_submit_button" class="btn btn-primary font-weight-bolder font-size-h6 px-8 py-4 my-3 mr-3">Sign In</button>
                                        </div>
                                        <!--end::Action-->
                                    </div>

                                    <div class="col-md-6 text-right">
                                        <a href="javascript:showEmailSendDiv()" class="text-primary font-size-h6 font-weight-bolder text-hover-primary mt-8 fpws">
                                       Forgot Password 
                                        </a>
                                        <!--end::Form group-->
                                    </div>

                                </div>
                            </form>
                            <!--end::Form-->
                        </div>
                        	
                        <!--end::Signin-->
                    </div>

                    <div id="forgotPasswordOtpDiv" class="d-flex flex-row-fluid flex-center" style="display:none !important;">
                        <div class="login-form">
                            <div class="pb-5 pb-lg-15 login-form-header">
                                <h3 class="font-weight-bolder text-dark font-size-h2 font-size-h1-lg"> Forgot Password</h3>
                                <div class="text-muted font-weight-bold font-size-h6">Back to
                                    <a href="login" class="text-primary font-weight-bolder"> Sign In</a>
                                </div>
                            </div>
                            <form id="registeredEmailForm">
                                <div class="form-group login-form-body">
                                    <div class="d-flex justify-content-between mt-n5">
                                        <label class="font-size-h6 font-weight-bolder text-dark pt-5">Registered Email ID </label>
                                    </div>
                                    <div class="input-group">
                                        <input class="form-control  h-auto py-7 px-6 border-2 font-size-h6" type="email" name="regUserEmailId" id="regUserEmailId" autocomplete="off"  required />
                                        <div class="input-group-append">
                                            <button class=" btn btn-primary font-weight-bolder font-size-h6 " type="submit"> Submit </button>
                                        </div>
                                    </div>
                                   
                                </div>
                            </form>

                        </div>
                    </div>


   
                      <div id="otpDIV" class="d-flex flex-row-fluid flex-center" style="display:none !important;">
                        <div class="form-group text-left mt-6 mb-0">                        
                                                <div class="pb-5 pb-lg-15 login-form-header">
                                <h3 class="font-weight-bolder text-dark font-size-h2 font-size-h1-lg">  Account Recovery  </h3>
                                <div class="text-muted font-weight-bold font-size-h6">Back to
                                    <a href="login" class="text-primary font-weight-bolder"> Sign In </a>
                                </div>
                            </div>
                            
    
    
                           <p class="font-weight-bold text-primary text-left" > 
                           Enter Verification Code provided by Email for  
                           <span class="label label-lg label-light-primary label-inline font-weight-bold py-4" id="referenceNo"></span>
                           </p>
    
                            
                            <div class="d-flex justify-content-between mt-n5">
                                <label class="font-size-h6 font-weight-bolder text-dark pt-5">OTP</label>
                            </div>
                            <div class="form-group-input otp-form-group mb-3 otp-input-div"> 
                                <input type="text" id="otp1" name="otp1" minlength="1" maxlength="1" class="form-control form-control-lg border-2 otp-inputbar">
                                <input type="text" id="otp2" name="otp2" minlength="1" maxlength="1" class="form-control form-control-lg  border-2 otp-inputbar">
                                <input type="text" id="otp3" name="otp3" minlength="1" maxlength="1" class="form-control form-control-lg border-2 otp-inputbar">
                                <input type="text" id="otp4" name="otp4" minlength="1" maxlength="1" class="form-control form-control-lg  border-2 otp-inputbar">
                                <input type="text" id="otp5" name="otp5" minlength="1" maxlength="1" class="form-control form-control-lg  border-2 otp-inputbar">
                                <input type="text" id="otp6" name="otp6" minlength="1" maxlength="1" class="form-control form-control-lg  border-2 otp-inputbar">
                            </div>


                           <div style=" display:none !important;">
                            <span style="color:red;" class="mt-0" id="invalidOTP"></span>
                            <div id="timerDiv" class="text-center text-primary mt-5" style="display:none">
                                Resend OTP in <span id="timerValue" style="width:70px" class="label label-lg label-light-danger label-inline">3:00</span> minutes
                            </div>
                            </div>
                            <div class="text-center mt-5">
                                <button type="button" onclick="validateForgotPasswordOTP();" class="btn btn-primary" id="OtpVerificationModal_btn"> Verify Code </button>
                            </div>
                            </div>
                            
                               <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                               <div  id="resendButton" class="text-right mt-5" style="display:none;">
                                <a href="#" class="btn btn-success font-weight-bolder font-size-h6 px-8 py-4 my-3 mr-3"> Resend </a>
                                </div>
                               </div>
                            </div>


                        </div>
                    </div>
                    


                    <div id="changePasswordDiv" class="d-flex flex-row-fluid flex-center" style="display:none !important;">
                        <div class="login-form">
                            <form id="changePasswordForm">
                                <div class="form-group">
                                    <div class="d-flex justify-content-between mt-n5">
                                        <label class="font-size-h6 font-weight-bolder text-dark pt-5">New Password</label>
                                    </div>
                                    <input class="form-control h-auto py-7 px-6 rounded-lg border-2" type="password" name="newPassword" id="newPassword" autocomplete="off" required />
                                    <span toggle="#newPassword" class="fa fa-fw fa-eye field-icon toggle-password"></span>
                                </div>
                                <div class="form-group">
                                    <div class="d-flex justify-content-between mt-n5">
                                        <label class="font-size-h6 font-weight-bolder text-dark pt-5">Password</label>
                                    </div>
                                    <input class="form-control h-auto py-7 px-6 rounded-lg border-2" type="password" name="confirmNewPassword" id="confirmNewPassword" autocomplete="off" required />
                                    <span toggle="#confirmNewPassword" class="fa fa-fw fa-eye field-icon toggle-password"></span>
                                </div>
                                <!-- 								<div class="text-muted font-weight-bold font-size-h4">Back to -->
                                <%--<a href="${pageContext.request.contextPath}/login" class="text-primary font-weight-bolder"> Sign In</a> --%>
                                    <!-- 								</div> -->
                                    <div class="pb-lg-0 pb-5">
                                        <button type="submit" class="btn btn-primary font-weight-bolder font-size-h6 px-8 py-4 my-3 mr-3">Change Password</button>
                                    </div>
                            </form>
                        </div>
                    </div>
                    <!--end::Wrapper-->
                </div>
                <!--end::Content-->

                <!--begin::OtpVerificationModal Modal-->

                <!--end::Modal-->

            </div>
            <!--end::Login-->
        </div>
        <!--end::Main-->


        <script src="${pageContext.request.contextPath}/assets/plugins/global/plugins.bundle.js"></script>
        <script src="${pageContext.request.contextPath}/assets/validator/js/bootstrapValidator.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/plugins/custom/prismjs/prismjs.bundle.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/scripts.bundle.js"></script>
        <script src="${pageContext.request.contextPath}/JS/login.js?v=sdfs"></script>



    </body>
    <!--end::Body-->

    </html>