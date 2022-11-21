<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>

    <html lang="en">
    <!--begin::Head-->

    <head>

        <meta charset="utf-8" />
        <title>Sign Up</title>
        <meta name="description" content="Singin page example" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" />

        <link href="${pageContext.request.contextPath}/assets/css/pages/login/login-3.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/assets/plugins/custom/prismjs/prismjs.bundle.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/assets/css/style.bundle.css" rel="stylesheet" type="text/css" />
		  <link href="${pageContext.request.contextPath}/assets/css/responsive.css" rel="stylesheet" type="text/css">
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/media/logos/favicon.ico" />
    </head>
    <!--end::Head-->

    <!--begin::Body-->

    <body id="kt_body" class="header-fixed header-mobile-fixed subheader-enabled sidebar-enabled page-loading">
        <!--begin::Main-->
        <div class="d-flex flex-column flex-root bg-color">
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
						<h6 class="text-center font-size-h3 font-size-h3-lg" style="color: #ffffff;     line-height: 32px;">
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
				
				
                <!--begin::Aside-->
                <div class="login-aside d-flex flex-column flex-row-auto" style="display: none !important;">
                    <!--begin::Aside Top-->
                    <div class="d-flex flex-column-auto flex-column pt-lg-40 pt-15">
                        <!--begin::Aside header-->
                        <a href="#" class="login-logo text-center pt-lg-25 pb-2">
                            <img src="${pageContext.request.contextPath}/assets/media/logos/logo-1.png" class="max-h-40px" alt="" />
                        </a>
                        <!--end::Aside header-->
                        <!--begin::Aside Title-->
<!--                         <h3 class="font-weight-bolder text-center font-size-h2  text-primary line-height-xl"> -->
<!--                             Pharma eTender </h3> -->
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
                            <form class="form" id="addNewUserForm" name="addNewUserForm" novalidate="novalidate" autocomplete="off">

                                <!--begin::Title-->
                                <div class="pb-5 pb-lg-15 login-form-header">
                                    <h3 class="font-weight-bolder text-dark font-size-h2 font-size-h1-lg">Sign Up </h3>
                                    <div class="text-muted font-weight-bold font-size-h4"> Already have an Account ?
                                        <a href="${pageContext.request.contextPath}/login" class="text-primary font-weight-bolder">Sign In</a></div>
                                </div>
                                <!--begin::Title-->

								<div class="login-form-body">
								

	                                <!--REGISTER AS begin::Form Group-->
	                                <div class="form-group">
	                                    <label class="font-size-h6 font-weight-bolder text-dark"> Register as* </label>
	                                    <p style="float: right; font-size: 10px;" class="text-dark text-muted"> 	*indicates mandatory fields </p>
	                                    <select id="regUserType" name="regUserType" required class="form-control h-auto py-7 px-6 border-2 rounded-lg font-size-h6">
													<option value="" disabled selected>Choose Register As</option>
<!-- 												  <option value="Dispensing Doctor"> Dispensing Doctor </option> -->
							                      <option value="Pharmacy"> Pharmacy </option>
							                      <option value="Supplier"> Supplier </option>
<!-- 							                      <option value="Wholesale"> Wholesale Customer </option> -->
							                      <option value="Manufacturer"> Manufacturer </option>
											</select>
	                                </div>
	                                <!--end::Form Group-->
									
									    <div class="form-group" style="display: none">
									    <label class="font-size-h6 font-weight-bolder text-dark"> Register as* </label>
									    <p style="float: right;" class="text-dark text-muted"> 	*indicates mandatory fields </p>
									   <div class="wrapper-radio">
<!-- 									  <input type="radio" name="select" id="option-1" checked> -->
									  <input type="radio" name="select" id="pharmacy">
									  <input type="radio" name="select" id="supplier">
									  <input type="radio" name="select" id="manufacturer">
									  <label for="pharmacy" class="option pharmacy">
									    <div class="dot"></div>
									    <span> Pharmacy </span>
									  </label>
									  <label for="supplier" class="option supplier">
									    <div class="dot"></div>
									    <span> Supplier </span>
									  </label>
									  <label for="manufacturer" class="option manufacturer">
									    <div class="dot"></div>
									    <span> Manufacturer </span>
									  </label>
									</div>
									</div>
									
									
	                                <!--begin::Form Group-->
	                                <div>
	                                    <!-- Dispensing Doctor -->
	                                    <div class="form-group" id="cqcNODiv" style="display:none">
	                                        <label class="font-size-h6 font-weight-bolder text-dark"> CqC No.* </label>
	                                        <input type="text" class="form-control h-auto py-7 px-6 border-2 rounded-lg font-size-h6" id="cqcNo" name="cqcNo"  value="" />
	                                    </div>
	
	                                    <!-- Pharmacy -->
	                                    <div class="form-group" id="gphcRegistrationNoDiv" style="display:none">
	                                        <label class="font-size-h6 font-weight-bolder text-dark"> GPhC Registration No.* </label>
	                                        <input type="text" class="form-control h-auto py-7 px-6 border-2 rounded-lg font-size-h6" name="gphcRegNo" id="gphcRegNo"  value="" />
	                                    </div>
	
	                                    <!-- Wholesale Customer -->
	                                    <div class="form-group" id="WDANoDiv" style="display:none">
	                                        <label class="font-size-h6 font-weight-bolder text-dark"> WDA no.* <small>(Wholesale Distribution Authorisation)</small></label>
	                                        <input type="text" placeholder="UK WDA(H) 99999" class="form-control  h-auto py-7 px-6 border-2 rounded-lg font-size-h6" name="wdaNo" id="wdaNo" />
	                                    </div>
	
	                                </div>
	                                <!--end::Form Group-->
	                                <!--begin::Form Group-->
	                                <div class="form-group">
	                                    <label class="font-size-h6 font-weight-bolder text-dark"> User Name* </label>
	                                    <input type="text" class="form-control h-auto py-7 px-6 border-2 rounded-lg font-size-h6" id="regUserName" name="regUserName"  value="" />
	                                </div>
	                                <!--end::Form Group-->
	
	                                <!--begin::Form Group-->
	                                <div class="form-group">
	                                    <label class="font-size-h6 font-weight-bolder text-dark"> Email Address* </label>
	                                    <div class="input-group">
	                                        <input type="text" class="form-control h-auto py-7 px-6 border-2  font-size-h6" id="regUserEmailId" name="regUserEmailId"  value="" />
	                                        <!-- 											<div class="input-group-append"> -->
	                                        <!-- 												<button class="btn btn-primary font-size-h6"  onclick="sendOTP()" type="button">  Send OTP </button> -->
	                                        <!-- 											</div> -->
	                                    </div>
	                                </div>
	                                <!--end::Form Group-->
	
	                                <!--begin::Form Group-->
	                                <div class="form-group">
	                                    <label class="font-size-h6 font-weight-bolder text-dark"> Password* </label>
	                                    <input type="password" class="form-control h-auto py-7 px-6 border-2 rounded-lg font-size-h6" id="regUserPassword" name="regUserPassword"  value="" />
	                                    <span toggle="#regUserPassword" class="fa fa-fw fa-eye field-icon toggle-password"></span>
	                                </div>
	                                <!--end::Form Group-->
	
	
	
	                                <!--begin::Form Group-->
	                                <div class="form-group">
	                                    <label class="font-size-h6 font-weight-bolder text-dark"> Confirm Password* </label>
	                                    <input type="password" class="form-control h-auto py-7 px-6 border-2 rounded-lg font-size-h6" id="regUserConfirmPassword" name="regUserConfirmPassword"  value="" />
	                                    <span toggle="#regUserConfirmPassword" class="fa fa-fw fa-eye field-icon toggle-password"></span>
	                                </div>
	                                <!--end::Form Group-->
	                                <!--begin::Action-->
	                                <div class="pb-lg-0 pb-5">
	                                    <button type="submit" class="btn btn-primary font-weight-bolder font-size-h6 px-8 py-4 my-3 mr-3"> Sign Up </button>
	                                </div>
	                                <!--end::Action-->
								</div>
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

        <!--begin::OtpVerificationModal Modal-->
        <div class="modal fade" id="OtpVerificationModal" data-backdrop='static' data-keyboard='false' tabindex="-1" role="dialog" aria-labelledby="OtpVerificationModal" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-md" role="document">
                <div class="modal-content">

                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel"> One time Password (OTP) Verification </h5>
                        <!-- 							<button type="button" class="close" data-dismiss="modal" aria-label="Close"> -->
                        <!-- 								<i aria-hidden="true" class="ki ki-close"></i> -->
                        <!-- 							</button> -->
                    </div>

                    <div class="modal-body">

                        <span class="mobile-text"> Please check an email sent to <b class="text-primary" id="showEmail"></b> </br> and  enter OTP below Ref No: <b class="text-primary" id="referenceNo"></b>  
							</span>


                        <div class="form-group text-center mt-6 mb-0">
                            <div class="form-group-input otp-form-group mb-3">
                                <input type="text" id="otp1" name="otp1" minlength="1" maxlength="1" class="form-control otp-inputbar pw">
                                <input type="text" id="otp2" name="otp2" minlength="1" maxlength="1" class="form-control otp-inputbar pw">
                                <input type="text" id="otp3" name="otp3" minlength="1" maxlength="1" class="form-control otp-inputbar pw">
                                <input type="text" id="otp4" name="otp4" minlength="1" maxlength="1" class="form-control otp-inputbar pw">
                                <input type="text" id="otp5" name="otp5" minlength="1" maxlength="1" class="form-control otp-inputbar pw">
                                <input type="text" id="otp6" name="otp6" minlength="1" maxlength="1" class="form-control otp-inputbar pw">
                            </div>
                        </div>
                        <span style="color:red;" class="mt-0" id="invalidOTP"></span>
                        <div id="timerDiv" class="text-center text-primary mt-5">
                            Resend OTP in <span id="timerValue" style="width:70px" class="label label-lg label-light-danger label-inline">03:00</span> minutes
                        </div>
                        <div id="resendButton" class="text-center mt-5" style="display:none;">
                            <span class="d-block mobile-text mb-1"> Don't receive the code? </span>
                            <a href="javascript:submitUserDetails()" class="btn btn-text-success btn-hover-light-success font-weight-bold mt-1"> Resend </a>
                        </div>

                        <div class="text-center mt-5">
                            <!-- 						<a href="javascript:" class="btn btn-outline-dark mr-4"  data-dismiss="modal"> Go Back </a> -->
                            <button type="button" id="validateOTPBTN" onclick="velidateOTP();" class="btn btn-primary" disabled id="OtpVerificationModal_btn"> Verify Code </button>
                        </div>


                    </div>

                    <!-- <div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary" id="OtpVerificationModal_btn"> Block modal </button>
						</div> -->

                </div>
            </div>
        </div>
        <!--end::Modal-->

        <!-- Start Pre-loader -->
        <div id="preLoader" class="pre-loader-wrap" style="display: none !important;">
            <div class="pre-loader triangle">
                <svg viewBox="0 0 86 80">
				        <polygon points="43 8 79 72 7 72"></polygon>
				      </svg>
                <!-- <span>Loading...</span> -->
            </div>
        </div>
        <!-- End Pre-loader -->


        <script src="${pageContext.request.contextPath}/assets/plugins/global/plugins.bundle.js"></script>
        <script src="${pageContext.request.contextPath}/assets/plugins/custom/prismjs/prismjs.bundle.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/scripts.bundle.js"></script>
        <script src="${pageContext.request.contextPath}/assets/validator/js/bootstrapValidator.min.js"></script>
        <script src="${pageContext.request.contextPath}/JS/signup.js"></script>



    </body>
    <!--end::Body-->

    </html>