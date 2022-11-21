<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<!--begin::Head-->

<head>
<meta charset="utf-8" />
<title>Profile</title>
<meta name="description" content="" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<link rel="canonical" href="https://keenthemes.com/metronic" />
<!--begin::Fonts-->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" />
<!--end::Fonts-->

<link
	href="${pageContext.request.contextPath}/assets/plugins/global/plugins.bundle.css"
	rel="stylesheet" type="text/css" />
<link
	href="${pageContext.request.contextPath}/assets/plugins/custom/prismjs/prismjs.bundle.css"
	rel="stylesheet" type="text/css" />
<link
	href="${pageContext.request.contextPath}/assets/css/style.bundle.css"
	rel="stylesheet" type="text/css" />
	  <link href="${pageContext.request.contextPath}/assets/css/responsive.css" rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath}/assets/css/sweetalert2.min.css"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/sidebar.css">
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/assets/media/logos/favicon.ico" />

</head>
<!--end::Head-->

<!--begin::Body-->

<body id="kt_body"
	class="header-fixed header-mobile-fixed sidebar-enabled aside-enabled aside-fixed aside-minimize-hoverable aside-minimize">
	<!--begin::Main-->

	<jsp:include page="../header.jsp"></jsp:include>

	<div class="d-flex flex-column flex-root bg-color">
		<!--begin::Page-->
		<div class="d-flex flex-row flex-column-fluid page">
			<jsp:include page="../sidebar.jsp"></jsp:include>
			<!--begin::Wrapper-->
			<div class="d-flex flex-column flex-row-fluid wrapper"
				id="kt_wrapper">

				<!--begin::Content-->
				<div class="content d-flex flex-column flex-column-fluid"
					id="kt_content">


					<!--begin::Subheader-->
					<div class="subheader py-2 py-lg-2 subheader-transparent"
						id="kt_subheader">
						<div
							class="container-fluid d-flex align-items-center justify-content-between flex-wrap flex-sm-nowrap">
							<!--begin::Info-->
							<div class="d-flex align-items-center flex-wrap mr-1">
								<!--begin::Mobile Toggle-->
								<button
									class="burger-icon burger-icon-right mr-4 d-inline-block d-lg-none"
									id="kt_subheader_mobile_toggle">
									<span></span>
								</button>
								<!--end::Mobile Toggle-->
								<!--begin::Page Heading-->
								<div class="d-flex align-items-baseline flex-wrap mr-5">
									<!--begin::Page Title-->

									<!--end::Page Title-->
									<!--begin::Breadcrumb-->
									<ul
										class="breadcrumb breadcrumb-transparent breadcrumb-dot font-weight-bold p-0 my-2 font-size-sm">
										<li class="breadcrumb-item text-muted"><a
											href="wellcomeCustomerPage" class="text-muted"> Dashboard
										</a></li>
										<li class="breadcrumb-item text-muted"><a href=""
											class="text-muted"> Profile </a></li>
										<li class="breadcrumb-item text-muted"><a href=""
											class="text-muted">
												<h5 class="text-dark font-weight-bold my-1 mr-5">
													Address</h5>
										</a></li>
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
					<div class="content d-flex flex-column flex-column-fluid"
						id="kt_content">

						<!--begin::Entry-->
						<div class="d-flex flex-column-fluid">
							<!--begin::Container-->
							<div class="container-fluid">
								<!--begin::Profile Account Information-->
								<div class="d-flex flex-row">
									<!--begin::Aside-->
									<div class="flex-row-auto offcanvas-mobile w-250px w-xxl-350px"
										id="kt_profile_aside">
										<!--begin::Profile Card-->
										<div class="card card-custom card-stretch">
											<!--begin::Body-->
											<jsp:include page="profileSidebar.jsp"></jsp:include>
											<!--end::Body-->
										</div>
										<!--end::Profile Card-->
									</div>
									<!--end::Aside-->

									<!--begin:: Content - Your Account -->
									<div class="flex-row-fluid ml-lg-8" id="viewAddressDiv">
										<!--begin::Card-->
										<div class="card card-custom">

											<!--begin::Header-->
											<div class="card-header py-3">
												<div class="card-title align-items-start flex-column">
													<h3 class="card-label font-weight-bolder text-dark">
														Address</h3>
													<span class="text-muted font-weight-bold font-size-sm mt-1">
														Address Information </span>
												</div>
												<div class="card-toolbar">
													<button onclick="addAddressDivShow()" type="reset"
														class="btn btn-success mr-2 disabled">
														<i class="la la-plus"></i>
														 Add Address
													</button>
													<button type="reset" style="display: none;"
														class="btn btn-secondary">Cancel</button>
												</div>
											</div>
											<!--end::Header-->


											<div class="card-body">
												<!--                                                     <div class="row"> -->
												<!--                                                         <div class="col-xl-8"> -->
												<!--                                                             <div class="form-group m-0"> -->
												<!--                                                                 <div class="row"> -->
												<!--                                                                     <div class="col-lg-12 mb-5" id="CompanyDeliveryAddressesList"> -->
												<!--                                                                     </div> -->
												<!--                                                                     <div class="col-lg-12" id="CompanyBillingAddressesList"> -->
												<!--                                                                     </div> -->
												<!--                                                                 </div> -->
												<!--                                                             </div> -->
												<!--                                                         </div> -->
												<!--                                                     </div> -->


												<div class="row">

													<div class="col-xl-6">
														<div class="form-group m-0">
															<div class="row ml-5 d-contents">

																<h3>
<!-- 																	<i class="icon-xxl mr-4 flaticon2-delivery-truck"></i> -->
																	Delivery Address
																</h3>

<!-- 																<div class="option mb-30" -->
<!-- 																	style="flex-direction: column;"> -->
<!-- 																	<div class="option-label"> -->
<!-- 																		<div class="option-head" -->
<!-- 																			style="display: flex; justify-content: space-between;"> -->
<!-- 																			<div class="option-title"> -->
<!-- 																				Delivery Address <small>pincode</small> -->
<!-- 																			</div> -->
<!-- 																			<div class="option-focus"> -->
<!-- 																				<a href="#" -->
<!-- 																					class="btn btn-icon btn-sm btn-icon-warning btn-hover-light-warning mr-1" -->
<!-- 																					data-card-tool="toggle" data-toggle="tooltip" -->
<!-- 																					data-placement="top" title="" -->
<!-- 																					data-original-title="Edit"> <i -->
<!-- 																					class="icon-xl la la-pencil-alt"></i> -->
<!-- 																				</a> <a href="#" -->
<!-- 																					class="btn btn-icon btn-sm btn-icon-danger btn-hover-light-danger mr-1" -->
<!-- 																					data-card-tool="reload" data-toggle="tooltip" -->
<!-- 																					data-placement="top" title="" -->
<!-- 																					data-original-title="Del."> <i -->
<!-- 																					class="icon-xl la la-trash"></i> -->
<!-- 																				</a> -->
<!-- 																			</div> -->
<!-- 																		</div> -->
<!-- 																		<div class="separator separator-dashed my-2"></div> -->
																		
<!-- 																	</div> -->
<!-- 																</div> -->
																<div class="option-body mt-8" id="CompanyDeliveryAddressesList"></div>




<!-- 																<div class="col-lg-12" id="CompanyDeliveryAddressesList"> -->
<!-- 																</div> -->


															</div>
														</div>
													</div>

													<div class="col-xl-6">
														<div class="form-group m-0">
															<div class="row ml-5 d-contents">
																<h3>
<!-- 																	<i class="icon-xxl mr-4 flaticon2-crisp-icons"></i> -->
																	Billing Address
																</h3>

<!-- 																<div class="option mb-30" -->
<!-- 																	style="flex-direction: column;"> -->
<!-- 																	<div class="option-label"> -->
<!-- 																		<div class="option-head" -->
<!-- 																			style="display: flex; justify-content: space-between;"> -->
<!-- 																		</div> -->
																		
<!-- 																	</div> -->
<!-- 																</div> -->
<div class="option-body mt-8" id="CompanyBillingAddressesList"></div>

<!-- 																<div class="col-lg-12" id="CompanyBillingAddressesList"> -->
<!-- 																</div> -->


															</div>
														</div>
													</div>

												</div>

											</div>


										</div>
									</div>
									<div class="flex-row-fluid ml-lg-8" id="AddAddressDiv"
										style="display: none;">
										<form class="form" id="companyAddressForm">
											<!--begin::Card-->
											<div class="card card-custom">
												<div class="card-header py-3">
													<div class="card-title align-items-start flex-column">
														<h3 class="card-label font-weight-bolder text-dark">
															Address</h3>
														<span
															class="text-muted font-weight-bold font-size-sm mt-1">
															Address Information </span>
													</div>
													<div class="card-toolbar">
														<button type="submit" class="btn btn-success mr-2 disabled">Save</button>
														<button type="button" onclick="viewAddressDivShow()"
															class="btn btn-warning disabled">Back</button>
													</div>
												</div>
												<!--end::Header-->


												<div class="card-body">

													<div class="row">

														<div class="col-xl-8">


															<div class="my-5">

																<div class=" row">
																	<label class="col-3 pro-addr-col-12"> Address
																		Type </label>
																	<div class="form-group col-9 pro-addr-col-12">
																		<select id="addressType" name="addressType"
																			class="form-control  border-2 form-control-lg">
																			<option value="DELIVERY">Delivery</option>
																			<option value="BILLING">Billing</option>
																		</select>
																	</div>
																</div>

																<div class=" row">
																	<label class="col-3 pro-addr-col-12"> Postcode
																		* </label>
																	<div class="form-group col-9 pro-addr-col-12">
																		<div class="input-group">
																			<input type="text" id="zipCode" name="zipCode"
																				class="form-control border-2 form-control-lg"
																				placeholder="Postcode" />
																			<!-- 																	<div class="input-group-append"> -->
																			<!-- 																		<button class="btn btn-primary" type="button">  Find Address </button> -->
																			<!-- 																	</div> -->
																		</div>
																	</div>
																</div>


																<!-- 														<div class="form-group row"> -->
																<!-- 															<label class="col-3"> Address * </label> -->
																<!-- 															<div class="col-9"> -->
																<!-- 																			<select name="" class="form-control  form-control-solid form-control-lg"> -->
																<!-- 									                                        <option value=""> Select Address </option> -->
																<!-- 									                                        <option value="">  Address 1  </option> -->
																<!-- 									                                        <option value="">  Address 2  </option> -->
																<!-- 									                                        </select> -->
																<!-- 															</div> -->
																<!-- 														</div> -->

																<div class=" row">
																	<label class="col-3 pro-addr-col-12"> Country *
																	</label>
																	<div class="form-group col-9 pro-addr-col-12">
																		<select id="country" name="country"
																			class="form-control  border-2 form-control-lg">
																			<option value="">Country</option>
																			<option value="">Country</option>
																		</select>
																	</div>
																</div>


																<div class=" row">
																	<label class="col-3 pro-addr-col-12"> Address
																		Line 1 </label>
																	<div class="col-9 pro-addr-col-12"
																		style="display: none">
																		<input type="text"
																			class="form-control border-2 form-control-lg"
																			id="id" name="id" placeholder="" />
																	</div>
																	<div class="col-9 pro-addr-col-12"
																		style="display: none">
																		<input type="text"
																			class="form-control border-2 form-control-lg"
																			id="addressID" name="addressID" placeholder="" />
																	</div>
																	<div class="col-9 pro-addr-col-12"
																		style="display: none">
																		<input type="text"
																			class="form-control border-2 form-control-lg"
																			id="companyId" name="companyId" placeholder="" />
																	</div>
																	<div class="col-9 pro-addr-col-12"
																		style="display: none">
																		<input type="text"
																			class="form-control border-2 form-control-lg"
																			id="identity" name="identity" placeholder="" />
																	</div>
																	<div class="form-group col-9 pro-addr-col-12">
																		<input type="text"
																			class="form-control border-2 form-control-lg"
																			id="address1" name="address1" placeholder="" value="" />
																	</div>
																</div>

																<div class=" row">
																	<label class="col-3 pro-addr-col-12"> Address
																		Line 2 </label>
																	<div class="form-group col-9 pro-addr-col-12">
																		<input type="text"
																			class="form-control border-2 form-control-lg"
																			id="address2" name="address2" placeholder="" value="" />
																	</div>
																</div>

																<div class=" row">
																	<label class="col-3 pro-addr-col-12"> Address
																		Line 3 </label>
																	<div class="form-group col-9 pro-addr-col-12">
																		<input type="text"
																			class="form-control border-2 form-control-lg"
																			id="address3" name="address3" placeholder="" value="" />
																	</div>
																</div>

																<div class=" row">
																	<label class="col-3 pro-addr-col-12"> Town </label>
																	<div class="form-group col-9 pro-addr-col-12">
																		<input class="form-control border-2"
																			type="text" id="city" name="city" />
																	</div>
																</div>
																<div class=" row">
																	<label class="col-3 pro-addr-col-12"> County *
																	</label>
																	<div class="form-group col-9 pro-addr-col-12">
																		<input class="form-control border-2"
																			type="text" id="county" name="county" />
																	</div>
																</div>

																<div class="form-group row">
																	<label class="col-3 pro-addr-col-12"></label>
																	<div class="col-9 pro-addr-col-12">
																		<label class="option border-0 py-2 pl-0"> <span
																			class="option-control"> <span class="radio">
																					<input type="checkbox" id="default_"
																					name="default_"> <span></span>
																			</span>
																		</span> <span class="option-label"> <span
																				class="option-head"> <span
																					class="option-title"> Set as Default </span>
																			</span>
																		</span>
																		</label>
																	</div>
																</div>

																<div class="form-group">
																	<div class="row">
																		<div class="col-lg-12"></div>
																	</div>
																</div>
															</div>
														</div>
														<div class="col-xl-4"></div>
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

				<jsp:include page="../footer.jsp"></jsp:include>

			</div>
			<!--end::Wrapper-->

		</div>
		<!--end::Page-->
	</div>
	<!--end::Main-->

	<script
		src="${pageContext.request.contextPath}/assets/plugins/global/plugins.bundle.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/plugins/custom/prismjs/prismjs.bundle.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/scripts.bundle.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/menu-scripts.bundle.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/profile.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/pages/features/miscellaneous/sweetalert2.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/validator/js/bootstrapValidator.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/JS/profile/profileAddressDetails.js"></script>
	<script src="${pageContext.request.contextPath}/JS/tenderCommon.js"></script>
</body>
<!--end::Body-->

</html>