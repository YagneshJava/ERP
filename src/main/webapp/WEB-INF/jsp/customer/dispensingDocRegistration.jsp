<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <!DOCTYPE html>

    <html lang="en">
    <!--begin::Head-->

    <head>

        <meta charset="utf-8" />
        <title>Doctor Registration</title>
        <meta name="description" content="Singin page example" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <link rel="canonical" href="https://keenthemes.com/metronic" />
        <!--begin::Fonts-->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" />
        <!--end::Fonts-->
        <!--begin::Page Custom Styles(used by this page)-->
        <link href="${pageContext.request.contextPath}/assets/css/pages/login/login-3.css" rel="stylesheet" type="text/css" />
        <!--end::Page Custom Styles-->
        <!--begin::Global Theme Styles(used by all pages)-->
        <link href="${pageContext.request.contextPath}/assets/css/pages/wizard/wizard-5.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/assets/plugins/custom/prismjs/prismjs.bundle.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/assets/css/style.bundle.css" rel="stylesheet" type="text/css" />
          <link href="${pageContext.request.contextPath}/assets/css/responsive.css" rel="stylesheet" type="text/css">
        <!--end::Global Theme Styles-->
        <!--begin::Layout Themes(used by all pages)-->
        <!--end::Layout Themes-->
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/media/logos/favicon.ico" />
    </head>
    <!--end::Head-->

    <!--begin::Body-->

    <body id="kt_body" class="header-fixed header-mobile-fixed subheader-enabled sidebar-enabled page-loading">
        <!--begin::Main-->
        <div class="d-flex flex-column flex-root bg-color">
            <!--begin::Login-->
            <div class="login login-3 wizard d-flex flex-column flex-lg-row flex-column-fluid wizard" id="kt_wizard">
                <!--begin::Aside-->
                <div class="login-aside d-flex flex-column flex-row-auto">
                    <!--begin::Aside Top-->
                    <div class="d-flex flex-column-auto flex-column pt-15 px-10">
                        <!--begin::Aside header-->
                        <a href="#" class="login-logo py-6 text-center ">
                            <img src="${pageContext.request.contextPath}/assets/media/logos/logo-1.png" class="max-h-70px" alt="" />
                        </a>

                        <h3 class="font-weight-bolder text-center font-size-h2  text-primary  line-height-xl">
                            Pharma eTender </h3>
                        <!--end::Aside Title-->

                        <!--end::Aside header-->
                        <!--begin: Wizard Nav-->
                        <div class="wizard-nav pt-5 pt-lg-20">
                            <!--begin::Wizard Steps-->
                            <div class="wizard-steps">


                                <!--begin::Wizard Step 2 Nav-->
                                <div class="wizard-step" data-wizard-type="step" data-wizard-state="current">
                                    <div class="wizard-wrapper">
                                        <div class="wizard-icon">
                                            <i class="wizard-check ki ki-check"></i>
                                            <span class="wizard-number">1</span>
                                        </div>
                                        <div class="wizard-label">
                                            <h3 class="wizard-title"> Company Details </h3>
                                            <div class="wizard-desc"> Setup Company Information </div>
                                        </div>
                                    </div>
                                </div>
                                <!--end::Wizard Step 2 Nav-->

                                <!--begin::Wizard Step 3 Nav-->
                                <div class="wizard-step" data-wizard-type="step">
                                    <div class="wizard-wrapper">
                                        <div class="wizard-icon">
                                            <i class="wizard-check ki ki-check"></i>
                                            <span class="wizard-number">2</span>
                                        </div>
                                        <div class="wizard-label">
                                            <h3 class="wizard-title"> Address </h3>
                                            <div class="wizard-desc"> Address Information </div>
                                        </div>
                                    </div>
                                </div>
                                <!--end::Wizard Step 3 Nav-->

                                <!--begin::Wizard Step 4 Nav-->
                                <!-- 								<div class="wizard-step" data-wizard-type="step"> -->
                                <!-- 									<div class="wizard-wrapper"> -->
                                <!-- 										<div class="wizard-icon"> -->
                                <!-- 											<i class="wizard-check ki ki-check"></i> -->
                                <!-- 											<span class="wizard-number">3</span> -->
                                <!-- 										</div> -->
                                <!-- 										<div class="wizard-label"> -->
                                <!-- 											<h3 class="wizard-title">  Upload Documents </h3> -->
                                <!-- 											<div class="wizard-desc">  Documents </div> -->
                                <!-- 										</div> -->
                                <!-- 									</div> -->
                                <!-- 								</div> -->
                                <!--end::Wizard Step 4 Nav-->

                            </div>
                            <!--end::Wizard Steps-->
                        </div>
                        <!--end: Wizard Nav-->
                    </div>
                    <!--end::Aside Top-->
                    <!--begin::Aside Bottom-->
                    <div class="aside-img-wizard d-flex flex-row-fluid bgi-no-repeat bgi-position-y-bottom bgi-position-x-center pt-2 pt-lg-5" style="background-position-y: calc(100% + 3rem); background-image: url(${pageContext.request.contextPath}/assets/media/svg/illustrations/features.svg)"></div>
                    <!--end::Aside Bottom-->
                </div>
                <!--begin::Aside-->

                <!--begin::Content-->
                <div class="login-content flex-column-fluid d-flex flex-column p-10">

                    <!--begin::Wrapper-->
                    <div class="d-flex flex-row-fluid flex-center">

                        <!--begin::Signin-->
                        <div class="login-form login-form-signup">

                            <!--begin::Form-->
                            <form class="form" novalidate="novalidate" id="customerRegistrationForm">


                                <!--begin: Wizard Step 2-->
                                <div class="pb-5 stepper" data-wizard-type="step-content" data-wizard-state="current" id="linearStepper">
                                    <!--begin::Title-->
                                    <div class="pt-lg-0 pt-5 pb-15">
                                        <h3 class="font-weight-bolder text-dark font-size-h2 font-size-h1-lg"> Company Details </h3>
                                        <div class="text-muted font-weight-bold font-size-h4"> Setup Company Information </div>
                                    </div>
                                    <!--begin::Title-->

                                    <!--begin::Row-->
                                    <div class="row">
                                        <div class="col-xl-6">
                                            <!--begin::Input-->
                                            <div class="form-group">
                                                <label class="font-size-h6 font-weight-bolder text-dark"> Company name* </label>
                                                <input type="text" class="form-control h-auto py-7 px-6 border-0 rounded-lg font-size-h6" id="regCompanyName" name="regCompanyName" placeholder="Company name" value="" />
                                            </div>
                                            <!--end::Input-->
                                        </div>
                                        <div class="col-xl-6">
                                            <!--begin::Input-->
                                            <div class="form-group">
                                                <label class="font-size-h6 font-weight-bolder text-dark"> Trading name* </label>
                                                <input type="text" class="form-control h-auto py-7 px-6 border-0 rounded-lg font-size-h6" id="tradingName" name="tradingName" placeholder="Trading name" value="" />
                                            </div>
                                            <!--end::Input-->
                                        </div>
                                    </div>
                                    <!--end::Row-->


                                    <!--begin::Row-->
                                    <div class="row">
                                        <div class="col-xl-6">
                                            <!--begin::Input-->
                                            <div class="form-group">
                                                <label class="font-size-h6 font-weight-bolder text-dark"> Company Registration No.* </label>
                                                <input type="text" class="form-control h-auto py-7 px-6 border-0 rounded-lg font-size-h6" id="registrationNo" name="registrationNo" placeholder="Company Registration No." value="" />
                                            </div>
                                            <!--end::Input-->
                                        </div>
                                        <div class="col-xl-6">
                                            <!--begin::Input-->
                                            <div class="form-group">
                                                <label class="font-size-h6 font-weight-bolder text-dark"> VAT Registration No.* </label>
                                                <input type="text" class="form-control h-auto py-7 px-6 border-0 rounded-lg font-size-h6" id="vatRegistrationNo" name="vatRegistrationNo" placeholder="VAT Registration No." value="" />
                                            </div>
                                            <!--end::Input-->
                                        </div>
                                    </div>
                                    <!--end::Row-->
                                    <!--begin::Row-->
                                    <div class="row">
                                        <div class="col-xl-6">
                                            <!--begin::Input-->
                                            <div class="form-group">
                                                <label class="font-size-h6 font-weight-bolder text-dark"> Mobile No* </label>
                                                <input type="text" class="form-control h-auto py-7 px-6 border-0 rounded-lg font-size-h6 phone-vali-class" id="mobileNo" name="mobileNo" placeholder="Mobile No" value="" />
                                            </div>
                                            <!--end::Input-->
                                        </div>
                                        <div class="col-xl-6">
                                            <!--begin::Input-->
                                            <div class="form-group">
                                                <label class="font-size-h6 font-weight-bolder text-dark"> Phone No </label>
                                                <input type="text" class="form-control h-auto py-7 px-6 border-0 rounded-lg font-size-h6 phone-vali-class" id="phoneNo" name="phoneNo" placeholder="Phone No" value="" />
                                            </div>
                                            <!--end::Input-->
                                        </div>
                                    </div>
                                    <!--end::Row-->

                                    <!-- Wholesale Customer -->
                                    <div class="row">
                                        <div class="col-xl-6">
                                            <div class="form-group">
                                                <label class="font-size-h6 font-weight-bolder text-dark"> CQC no.* </label>
                                                <input type="text" class="form-control h-auto py-7 px-6 border-0 rounded-lg font-size-h6" id="cqcRegistrationNo" name="cqcRegistrationNo" />
                                            </div>
                                        </div>
                                        <div class="col-xl-6">
                                            <div class="form-group">
                                                <label class="font-size-h6 font-weight-bolder text-dark"> Currency Code* </label>
                                                <select name="currencyCode" id="currencyCode" class="form-control h-auto py-7 px-6 border-0 rounded-lg font-size-h6">
												<option value=""> Select Currency Code  </option>
											</select>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- 								<div class="separator separator-dashed my-5"></div> -->

                                    <!--begin::Title-->
                                    <div class="pt-lg-0 pt-5 pb-5">
                                        <h4 class="font-weight-bolder text-dark font-size-h2 font-size-h1-lg"> Upload CQC License* </h4>
                                    </div>
                                    <!--end::Title-->
                                    <div class="form-group row">
                                        <div class="col-lg-12 col-md-12 col-sm-12">
                                            <div class="dropzone dropzone-default" id="cqcFileDZ">
                                                <div class="dropzone-msg dz-message needsclick mt-2 mb-2">
                                                    <h3 class="dropzone-msg-title">Drop files here or click to upload.</h3>
                                                    <span class="note needsclick">(<strong>.pdf</strong> file only.)</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>


                                    <!--begin::Row-->
                                    <div class="row" style="display:none">
                                        <div class="col-xl-6">
                                            <!--begin::Input-->
                                            <div class="form-group">
                                                <label class="font-size-h6 font-weight-bolder text-dark">Contact email id </label>
                                                <input type="email" class="form-control h-auto py-7 px-6 border-0 rounded-lg font-size-h6" id="otherEmail" name="otherEmail" placeholder="Alternative contact email-id" value="" />
                                            </div>
                                            <!--end::Input-->
                                        </div>
                                    </div>
                                    <!--end::Row-->

                                </div>
                                <!--end: Wizard Step 2-->


								<div class="row" >
								<div class="col-xl-6">
								<div class="form-group">
									<label class="font-size-h6 font-weight-bolder text-dark"> Postcode* </label>
									<div class="input-group">
										<input type="text" class="form-control h-auto py-7 px-6 border-0 rounded-lg font-size-h6"   id="regBillingPostcode" name="addresses[0].zipCode" />
										<div class="input-group-append">
                                            <input type="hidden" name="addresses[0].addressType" value="DELIVERY" >
<!-- 											<button class="btn btn-primary font-size-h6" type="button" onclick="getDeliveryAddress()">  Find Address </button> -->
										</div>
									</div>
								</div>
								</div>
								<div class="col-xl-6">
<!-- 									<div class="form-group"> -->
<!-- 										<label class="font-size-h6 font-weight-bolder text-dark"> Country </label> -->
<%-- 										<input name="addresses[1].country"  readonly value="" id="regBillingCountry" class="form-control h-auto py-7 px-6 border-0 rounded-lg font-size-h6"> --%>
<!-- 									</div> -->
									<div class="form-group">
										<label class="font-size-h6 font-weight-bolder text-dark"> Country* </label>
										<select name="addresses[0].country"  id="regBillingCountry"  class="form-control h-auto py-7 px-6 border-0 rounded-lg font-size-h6">
											<option value=""> Select Country  </option>
										</select>
                                                            </div>
                                                    </div>

                                                </div>

                                                <!--begin::Row-->
                                                <div class="row" style="display: none">
                                                    <div class="col-xl-6">
                                                        <!--begin::Input-->
                                                        <div class="form-group">
                                                            <label class="font-size-h6 font-weight-bolder text-dark"> Flat No </label>
                                                            <input type="text" class="form-control h-auto py-7 px-6 border-0 rounded-lg font-size-h6" name="addresses[0].flatNo" id="regBillingFlatNo" placeholder="Flat No" value="" />
                                                        </div>
                                                        <!--end::Input-->
                                                    </div>
                                                    <div class="col-xl-6">
                                                        <!--begin::Input-->
                                                        <div class="form-group">
                                                            <label class="font-size-h6 font-weight-bolder text-dark"> House No </label>
                                                            <input type="text" class="form-control h-auto py-7 px-6 border-0 rounded-lg font-size-h6" name="addresses[0].houseNo" id="regBillingHouseNo" placeholder="House No" value="" />
                                                        </div>
                                                        <!--end::Input-->
                                                    </div>
                                                </div>
                                                <!--end::Row-->



                                                <!--begin::Row-->
                                                <div class="row">
                                                    <div class="col-xl-12">
                                                        <!--begin::Input-->
                                                        <div class="form-group">
                                                            <label class="font-size-h6 font-weight-bolder text-dark"> Address Line 1* </label>
                                                            <input type="text" class="form-control h-auto py-7 px-6 border-0 rounded-lg font-size-h6" name="addresses[0].address1" id="regBillingAddress1" value="" />
                                                        </div>
                                                        <!--end::Input-->
                                                    </div>
                                                </div>

						<!--begin::Row-->
						<div class="row" > 
							<div class="col-xl-6" >
								<!--begin::Input-->
								<div class="form-group" >
									<label class="font-size-h6 font-weight-bolder text-dark"> Town </label>
									<input type="text" class="form-control h-auto py-7 px-6 border-0 rounded-lg font-size-h6" name="addresses[0].city" id="regBillingCity"  value="" />
								</div>
								<!--end::Input-->
							</div>
							<div class="col-xl-6">
								<!--begin::Input-->
								<div class="form-group">
									<label class="font-size-h6 font-weight-bolder text-dark"> County* </label>
									<input type="text" class="form-control h-auto py-7 px-6 border-0 rounded-lg font-size-h6" name="addresses[0].county" id="regBillingCounty"  />
								</div>
								<!--end::Input-->
							</div>
						</div>
						<!--end::Row-->


                                                <!--begin::Row-->
                                                <div class="row">
                                                    <div class="col-xl-6" style="display: none">
                                                        <!--begin::Input-->
                                                        <div class="form-group">
                                                            <label class="font-size-h6 font-weight-bolder text-dark"> City </label>
                                                            <input type="text" class="form-control h-auto py-7 px-6 border-0 rounded-lg font-size-h6" name="addresses[0].city" id="regBillingCity" value="" />
                                                        </div>
                                                        <!--end::Input-->
                                                    </div>
                                                    <div class="col-xl-6">
                                                        <!--begin::Input-->
                                                        <div class="form-group">
                                                            <label class="font-size-h6 font-weight-bolder text-dark"> County* </label>
                                                            <input type="text" class="form-control h-auto py-7 px-6 border-0 rounded-lg font-size-h6" name="addresses[0].county" id="regBillingCounty" />
                                                        </div>
                                                        <!--end::Input-->
                                                    </div>
                                                </div>
                                                <!--end::Row-->



                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <label style="background-color: #ffffff;" class="option">
											<span class="option-control">
												<span class="radio">
													<input type="checkbox" value="1" onclick="getRegistredAddress()" id="registredAddress" name="registredAddress" />
													<span></span>
												</span>
											</span>
											<span class="option-label">
												<span class="option-head">
													<span class="option-title"> Billing address different from delivery address </span>
												</span>
											</span>
										</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="billingAddressDiv" style="display:none;">
                                        <!--begin::Title-->
                                        <div class="pt-lg-0 pt-5 pb-15">
                                            <h3 class="font-weight-bolder text-dark font-size-h2 font-size-h1-lg"> Billing Address </h3>
                                            <div class="text-muted font-weight-bold font-size-h4"> Billing Address Information </div>
                                        </div>
                                        <!--end::Title-->

                                        <div class="row">
                                            <div class="col-xl-12">
                                                <div class="form-group">
                                                    <label class="font-size-h6 font-weight-bolder text-dark"> Postcode* </label>
                                                    <div class="input-group">
                                                        <input type="text" class="form-control h-auto py-7 px-6 border-0 font-size-h6" placeholder="Postcode" id="regPostcode" name="addresses[1].zipCode" />
                                                        <div class="input-group-append">
                                                            <input type="hidden" name="addresses[1].addressType" value="BILLING">
                                                            <button class="btn btn-primary font-size-h6" onclick="getAddress()" type="button">  Find Address </button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!--begin::Row-->
                                        <div class="form-group">
                                            <label class="font-size-h6 font-weight-bolder text-dark"> Address </label>
                                            <select id="searchedAddresses" class="form-control h-auto py-7 px-6 border-0 rounded-lg font-size-h6">
									<option value=""> Please select your address  </option>
								</select>
                                        </div>
                                        <div class="row" style="display:none;">
                                            <div class="col-xl-6">
                                                <!--begin::Input-->
                                                <div class="form-group">
                                                    <label class="font-size-h6 font-weight-bolder text-dark"> Flat No </label>
                                                    <input type="text" class="form-control h-auto py-7 px-6 border-0 rounded-lg font-size-h6" name="addresses[1].flatNo" id="flatNo" placeholder="Flat No" value="" />
                                                </div>
                                                <!--end::Input-->
                                            </div>
                                            <div class="col-xl-6">
                                                <!--begin::Input-->
                                                <div class="form-group">
                                                    <label class="font-size-h6 font-weight-bolder text-dark"> House No </label>
                                                    <input type="text" class="form-control h-auto py-7 px-6 border-0 rounded-lg font-size-h6" name="addresses[1].houseNo" id="houseNo" placeholder="House No" value="" />
                                                </div>
                                                <!--end::Input-->
                                            </div>
                                        </div>
                                        <!--end::Row-->



                                        <!--begin::Row-->
                                        <div class="row">
                                            <div class="col-xl-12">
                                                <!--begin::Input-->
                                                <div class="form-group">
                                                    <label class="font-size-h6 font-weight-bolder text-dark"> Address Line 1* </label>
                                                    <input type="text" class="form-control h-auto py-7 px-6 border-0 rounded-lg font-size-h6" name="addresses[1].address1" id="address1" placeholder="Address Line 1" />
                                                </div>
                                                <!--end::Input-->
                                            </div>

                                        </div>
                                        <div class="row">
                                            <div class="col-xl-6">
                                                <!--begin::Input-->
                                                <div class="form-group">
                                                    <label class="font-size-h6 font-weight-bolder text-dark"> Address Line 2 </label>
                                                    <input type="text" class="form-control h-auto py-7 px-6 border-0 rounded-lg font-size-h6" name="addresses[1].address2" id="address2" placeholder="Address Line 2" />
                                                </div>
                                                <!--end::Input-->
                                            </div>
                                            <div class="col-xl-6">
                                                <!--begin::Input-->
                                                <div class="form-group">
                                                    <label class="font-size-h6 font-weight-bolder text-dark"> Address Line 3 </label>
                                                    <input type="text" class="form-control h-auto py-7 px-6 border-0 rounded-lg font-size-h6" name="addresses[1].address3" id="address3" placeholder="Address Line 3" />
                                                </div>
                                                <!--end::Input-->
                                            </div>
                                        </div>
                                        <!--end::Row-->

							<!--begin::Row-->
							<div class="row" >
								<div class="col-xl-6">
<!-- 									begin::Input -->
									<div class="form-group">
										<label class="font-size-h6 font-weight-bolder text-dark"> Town </label>
										<input type="text" class="form-control h-auto py-7 px-6 border-0 rounded-lg font-size-h6" name="addresses[1].city" id="city" placeholder="Town" value="" />
									</div>
<!-- 									end::Input -->
								</div>
								<div class="col-xl-6">
									<!--begin::Input-->
									<div class="form-group">
										<label class="font-size-h6 font-weight-bolder text-dark"> County* </label>
										<input type="text" class="form-control h-auto py-7 px-6 border-0 rounded-lg font-size-h6" name="addresses[1].county" id="county" placeholder="County" />
									</div>
									<!--end::Input-->
								</div>
								<div class="col-xl-6" >
									<div class="form-group">
										<label class="font-size-h6 font-weight-bolder text-dark"> Country* </label>
										<select name="addresses[1].country" id="country" class="form-control h-auto py-7 px-6 border-0 rounded-lg font-size-h6">
											<option value=""> Select Country  </option>
										</select>
                                                </div>
                                            </div>

                                        </div>
                                        <!--end::Row-->
                                    </div>
                                </div>

                                <!--end: Wizard Step 3-->


                                <!--begin: Wizard Step 4-->
                                <!-- 								<div class="pb-5" data-wizard-type="step-content"> -->
                                <!-- 									begin::Title -->
                                <!-- 									<div class="pt-lg-0 pt-5 pb-15"> -->
                                <!-- 										<h3 class="font-weight-bolder text-dark font-size-h2 font-size-h1-lg"> 	Upload Documents </h3> -->
                                <!-- 										<div class="text-muted font-weight-bold font-size-h4"> Home office License </div> -->
                                <!-- 									</div> -->
                                <!-- 									end::Title -->
                                <!-- 									<div class="form-group row"> -->
                                <!-- 										<div class="col-lg-12 col-md-12 col-sm-12"> -->
                                <!-- 											<div class="dropzone dropzone-default" id="kt_dropzone_1"> -->
                                <!-- 												<div class="dropzone-msg dz-message needsclick"> -->
                                <!-- 													<h3 class="dropzone-msg-title">Drop files here or click to upload.</h3> -->
                                <!-- 													 <span class="note needsclick">(Please upload <strong>PDF</strong> file only.)</span> -->
                                <!-- 												</div> -->
                                <!-- 											</div> -->
                                <!-- 										</div> -->
                                <!-- 									</div> -->
                                <!-- 								</div> -->
                                <!--end: Wizard Step 4-->


                                <!--begin: Wizard Actions-->
                                <div class="d-flex justify-content-between pt-3">
                                    <div class="mr-2">
                                        <button type="button" class="btn btn-light-primary font-weight-bolder font-size-h6 pl-6 pr-8 py-4 my-3 mr-3" data-wizard-type="action-prev">
										<span class="svg-icon svg-icon-md mr-1">
											<!--begin::Svg Icon | path:${pageContext.request.contextPath}/assets/media/svg/icons/Navigation/Left-2.svg-->
											<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
												<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
													<polygon points="0 0 24 0 24 24 0 24" />
													<rect fill="#000000" opacity="0.3" transform="translate(15.000000, 12.000000) scale(-1, 1) rotate(-90.000000) translate(-15.000000, -12.000000)" x="14" y="7" width="2" height="10" rx="1" />
													<path d="M3.7071045,15.7071045 C3.3165802,16.0976288 2.68341522,16.0976288 2.29289093,15.7071045 C1.90236664,15.3165802 1.90236664,14.6834152 2.29289093,14.2928909 L8.29289093,8.29289093 C8.67146987,7.914312 9.28105631,7.90106637 9.67572234,8.26284357 L15.6757223,13.7628436 C16.0828413,14.136036 16.1103443,14.7686034 15.7371519,15.1757223 C15.3639594,15.5828413 14.7313921,15.6103443 14.3242731,15.2371519 L9.03007346,10.3841355 L3.7071045,15.7071045 Z" fill="#000000" fill-rule="nonzero" transform="translate(9.000001, 11.999997) scale(-1, -1) rotate(90.000000) translate(-9.000001, -11.999997)" />
												</g>
											</svg>
											<!--end::Svg Icon-->
										</span>Previous</button>

                                    </div>
                                    <div>

                                        <button class="btn btn-primary font-weight-bolder font-size-h6 pl-5 pr-8 py-4 my-3" data-wizard-type="action-submit" type="submit" id="kt_login_signup_form_submit_button">Submit
										<span class="svg-icon svg-icon-md ml-2">
											<!--begin::Svg Icon | path:${pageContext.request.contextPath}/assets/media/svg/icons/Navigation/Right-2.svg-->
											<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
												<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
													<polygon points="0 0 24 0 24 24 0 24" />
													<rect fill="#000000" opacity="0.3" transform="translate(8.500000, 12.000000) rotate(-90.000000) translate(-8.500000, -12.000000)" x="7.5" y="7.5" width="2" height="9" rx="1" />
													<path d="M9.70710318,15.7071045 C9.31657888,16.0976288 8.68341391,16.0976288 8.29288961,15.7071045 C7.90236532,15.3165802 7.90236532,14.6834152 8.29288961,14.2928909 L14.2928896,8.29289093 C14.6714686,7.914312 15.281055,7.90106637 15.675721,8.26284357 L21.675721,13.7628436 C22.08284,14.136036 22.1103429,14.7686034 21.7371505,15.1757223 C21.3639581,15.5828413 20.7313908,15.6103443 20.3242718,15.2371519 L15.0300721,10.3841355 L9.70710318,15.7071045 Z" fill="#000000" fill-rule="nonzero" transform="translate(14.999999, 11.999997) scale(1, -1) rotate(90.000000) translate(-14.999999, -11.999997)" />
												</g>
											</svg>
											<!--end::Svg Icon-->
										</span>
									</button>

                                        <button type="button" class="btn btn-primary font-weight-bolder font-size-h6 pl-8 pr-4 py-4 my-3" data-wizard-type="action-next">Next Step
										<span class="svg-icon svg-icon-md ml-1">
											<!--begin::Svg Icon | path:${pageContext.request.contextPath}/assets/media/svg/icons/Navigation/Right-2.svg-->
											<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
												<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
													<polygon points="0 0 24 0 24 24 0 24" />
													<rect fill="#000000" opacity="0.3" transform="translate(8.500000, 12.000000) rotate(-90.000000) translate(-8.500000, -12.000000)" x="7.5" y="7.5" width="2" height="9" rx="1" />
													<path d="M9.70710318,15.7071045 C9.31657888,16.0976288 8.68341391,16.0976288 8.29288961,15.7071045 C7.90236532,15.3165802 7.90236532,14.6834152 8.29288961,14.2928909 L14.2928896,8.29289093 C14.6714686,7.914312 15.281055,7.90106637 15.675721,8.26284357 L21.675721,13.7628436 C22.08284,14.136036 22.1103429,14.7686034 21.7371505,15.1757223 C21.3639581,15.5828413 20.7313908,15.6103443 20.3242718,15.2371519 L15.0300721,10.3841355 L9.70710318,15.7071045 Z" fill="#000000" fill-rule="nonzero" transform="translate(14.999999, 11.999997) scale(1, -1) rotate(90.000000) translate(-14.999999, -11.999997)" />
												</g>
											</svg>
											<!--end::Svg Icon-->
										</span>
									</button>

                                    </div>
                                </div>
                                <!--end: Wizard Actions-->
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




        <script src="${pageContext.request.contextPath}/assets/plugins/global/plugins.bundle.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/pages/features/miscellaneous/sweetalert2.js"></script>
        <script src="${pageContext.request.contextPath}/assets/plugins/custom/prismjs/prismjs.bundle.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/scripts.bundle.js"></script>
        <script src="${pageContext.request.contextPath}/JS/tenderCommon.js"></script>
        <script src="${pageContext.request.contextPath}/JS/customer/dispensingDocRegistration.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/pages/crud/file-upload/dropzonejs.js"></script>

        <script type="text/javascript">
        var addresses; 
        $( document ).ready(function() {
//         	$('#regBillingCountry').val(viewCountry);
//             $('#country').val(viewCountry);
        });
            </script>
	</body>
	<!--end::Body-->
</html>
