<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<!--begin::Head-->
<head>
		
		<base href="">
		<meta charset="utf-8" />
		<title> Vendors </title>
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
		<link href="${pageContext.request.contextPath}/assets/css/sweetalert2.min.css" rel="stylesheet" type="text/css" />
		<link href="${pageContext.request.contextPath}/assets/css/responsive.css" rel="stylesheet" type="text/css" />
		<link href="${pageContext.request.contextPath}/assets/css/pages/wizard/wizard-2.css" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/sidebar.css">

		<link	href="${pageContext.request.contextPath}/assets/jqgrid/css/ui.jqgrid-bootstrap.min.css"	rel="stylesheet" type="text/css" />
        <script src="${pageContext.request.contextPath}/assets/plugins/global/plugins.bundle.js"></script>
        <script src="${pageContext.request.contextPath}/assets/jqgrid/js/jquery.jqgrid.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/validator/js/bootstrapValidator.min.js"></script>

</head>
<!--end::Head-->

<!--begin::Body-->
<body id="kt_body" class="header-fixed header-mobile-fixed sidebar-enabled aside-enabled aside-fixed aside-minimize-hoverable aside-minimize zoom">
	<!--begin::Main-->
	
	<div id="div_block"></div>

	<jsp:include page="../header.jsp"></jsp:include>
	
	



	
	
	<div class="d-flex flex-column flex-root bg-color">
		<!--begin::Page-->
		<div class="d-flex flex-row flex-column-fluid page">
			<jsp:include page="../sidebar.jsp"></jsp:include>
			<!--begin::Wrapper-->
			<div class="d-flex flex-column flex-row-fluid wrapper"
				id="kt_wrapper">

				<!--begin::Content-->
				<div class="content d-flex flex-column flex-column-fluid" id="kt_content">
				
					<!--begin::Subheader-->
						<div class="subheader py-2 py-lg-4 subheader-transparent" id="kt_subheader">
							<div class="container-fluid  d-flex align-items-center justify-content-between flex-wrap flex-sm-nowrap">
								<!--begin::Info-->
								<div class="d-flex align-items-center flex-wrap mr-1">
									<!--begin::Page Heading-->
									<div class="d-flex align-items-baseline flex-wrap mr-5">
										<!--begin::Page Title-->
										
										<!--end::Page Title-->
										<!--begin::Breadcrumb-->
										<ul class="breadcrumb breadcrumb-dot breadcrumb-transparent  font-weight-bold p-0 my-2 font-size-sm" id="qtHeadUl">
											<li class="breadcrumb-item text-muted">
												<a href="wellcomeCustomerPage" class="text-muted">Dashboard</a>
											</li>
											<li class="breadcrumb-item text-muted" >
												<h5><a href="customerTenderPage" class="text-dark font-weight-bold" id="qtHref">Quotation</a></h5>
											</li>
<!-- 										<li class="breadcrumb-item text-muted " style="" -->
<!-- 											id="qtDetailLi"> -->
<!-- 											<h5> -->
<!-- 												<a href="#" class="text-dark font-weight-bold">Quotation Details</a> -->
<!-- 											</h5> -->
<!-- 										</li> -->
									</ul> 
										
<!-- 										<ul class="breadcrumb breadcrumb-dot breadcrumb-transparent  font-weight-bold p-0 my-2 font-size-sm"> -->
<!-- 											<li class="breadcrumb-item text-muted" style="" id ="qtDetailLi"> -->
<!-- 												<h5><a href="#" class="">Quotation Details</a></h5> -->
<!-- 											</li> -->
<!-- 											</ul> -->
										<!--end::Breadcrumb-->
									</div>
									<!--end::Page Heading-->
								</div>
								<!--end::Info-->

								<!--begin::Toolbar-->
								<!-- <div class="d-flex align-items-center">
								
								<a onclick="manageView()" class="btn btn-icon btn-sm btn-danger" data-toggle="tooltip" data-placement="top" title="" data-original-title="Back">
									<span class="svg-icon  svg-icon-2x">begin::Svg Icon | path:C:\wamp64\www\keenthemes\legacy\metronic\theme\html\demo6\dist/../src/media/svg/icons\Navigation\Left-2.svg<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
										<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
											<polygon points="0 0 24 0 24 24 0 24"></polygon>
											<rect fill="#000000" opacity="0.3" transform="translate(15.000000, 12.000000) scale(-1, 1) rotate(-90.000000) translate(-15.000000, -12.000000) " x="14" y="7" width="2" height="10" rx="1"></rect>
											<path d="M3.7071045,15.7071045 C3.3165802,16.0976288 2.68341522,16.0976288 2.29289093,15.7071045 C1.90236664,15.3165802 1.90236664,14.6834152 2.29289093,14.2928909 L8.29289093,8.29289093 C8.67146987,7.914312 9.28105631,7.90106637 9.67572234,8.26284357 L15.6757223,13.7628436 C16.0828413,14.136036 16.1103443,14.7686034 15.7371519,15.1757223 C15.3639594,15.5828413 14.7313921,15.6103443 14.3242731,15.2371519 L9.03007346,10.3841355 L3.7071045,15.7071045 Z" fill="#000000" fill-rule="nonzero" transform="translate(9.000001, 11.999997) scale(-1, -1) rotate(90.000000) translate(-9.000001, -11.999997) "></path>
										</g>
									</svg>end::Svg Icon</span>
								</a>
		
								</div> -->
								<!--end::Toolbar-->
								
							</div>
						</div>
						<!--end::Subheader-->


					<div class="container-fluid">
						<div class="card card-custom">
										<div class="card-header py-5">
												<h3 class="card-title align-items-start flex-column">
													<span class="card-label font-weight-bolder text-dark">Vendor's</span>
												</h3>
												<div class="card-toolbar">
													<button type="reset" class="btn font-weight-bold btn-success mr-2" data-toggle="modal" data-target="#viewCustomerListModal">Show List</button>
												</div>
											</div>
							<div class="card-body p-0">
								<!--begin: Wizard-->
								<div class="wizard wizard-2" id="vendorCreationWizard"
									data-wizard-state="first" data-wizard-clickable="true">
									<!--begin: Wizard Nav-->
									<div
										class="wizard-nav border-right py-8 px-8 py-lg-20 px-lg-10">
										<!--begin::Wizard Step 1 Nav-->
										<div class="wizard-steps">
											<div class="wizard-step" data-wizard-type="step"
												data-wizard-state="current">
												<div class="wizard-wrapper">
													<div class="wizard-icon">
														<span class="svg-icon svg-icon-2x"> <!--begin::Svg Icon | path:assets/media/svg/icons/General/User.svg-->
															<svg xmlns="http://www.w3.org/2000/svg"
																xmlns:xlink="http://www.w3.org/1999/xlink" width="24px"
																height="24px" viewBox="0 0 24 24" version="1.1">
																		<g stroke="none" stroke-width="1" fill="none"
																	fill-rule="evenodd">
																			<polygon points="0 0 24 0 24 24 0 24"></polygon>
																			<path
																	d="M12,11 C9.790861,11 8,9.209139 8,7 C8,4.790861 9.790861,3 12,3 C14.209139,3 16,4.790861 16,7 C16,9.209139 14.209139,11 12,11 Z"
																	fill="#000000" fill-rule="nonzero" opacity="0.3"></path>
																			<path
																	d="M3.00065168,20.1992055 C3.38825852,15.4265159 7.26191235,13 11.9833413,13 C16.7712164,13 20.7048837,15.2931929 20.9979143,20.2 C21.0095879,20.3954741 20.9979143,21 20.2466999,21 C16.541124,21 11.0347247,21 3.72750223,21 C3.47671215,21 2.97953825,20.45918 3.00065168,20.1992055 Z"
																	fill="#000000" fill-rule="nonzero"></path>
																		</g>
																	</svg> <!--end::Svg Icon-->
														</span>
													</div>
													<div class="wizard-label">
														<h3 class="wizard-title">Vendor Details</h3>
														<div class="wizard-desc">Setup Vendor Details</div>
													</div>
												</div>
											</div>
											<!--end::Wizard Step 1 Nav-->
											<!--begin::Wizard Step 2 Nav-->
											<div class="wizard-step" data-wizard-type="step"
												data-wizard-state="pending">
												<div class="wizard-wrapper">
													<div class="wizard-icon">
														<span class="svg-icon svg-icon-2x"> <!--begin::Svg Icon | path:assets/media/svg/icons/Map/Compass.svg-->
															<svg xmlns="http://www.w3.org/2000/svg"
																xmlns:xlink="http://www.w3.org/1999/xlink" width="24px"
																height="24px" viewBox="0 0 24 24" version="1.1">
																		<g stroke="none" stroke-width="1" fill="none"
																	fill-rule="evenodd">
																			<rect x="0" y="0" width="24" height="24"></rect>
																			<path
																	d="M12,21 C7.02943725,21 3,16.9705627 3,12 C3,7.02943725 7.02943725,3 12,3 C16.9705627,3 21,7.02943725 21,12 C21,16.9705627 16.9705627,21 12,21 Z M14.1654881,7.35483745 L9.61055177,10.3622525 C9.47921741,10.4489666 9.39637436,10.592455 9.38694497,10.7495509 L9.05991526,16.197949 C9.04337012,16.4735952 9.25341309,16.7104632 9.52905936,16.7270083 C9.63705011,16.7334903 9.74423017,16.7047714 9.83451193,16.6451626 L14.3894482,13.6377475 C14.5207826,13.5510334 14.6036256,13.407545 14.613055,13.2504491 L14.9400847,7.80205104 C14.9566299,7.52640477 14.7465869,7.28953682 14.4709406,7.27299168 C14.3629499,7.26650974 14.2557698,7.29522855 14.1654881,7.35483745 Z"
																	fill="#000000"></path>
																		</g>
																	</svg> <!--end::Svg Icon-->
														</span>
													</div>
													<div class="wizard-label">
														<h3 class="wizard-title">Address</h3>
														<div class="wizard-desc">Add Vendor Address</div>
													</div>
												</div>
											</div>
											<!--end::Wizard Step 2 Nav-->
											<!--begin::Wizard Step 3 Nav-->
											<div class="wizard-step" data-wizard-type="step"
												data-wizard-state="pending">
												<div class="wizard-wrapper">
													<div class="wizard-icon">
														<span class="svg-icon svg-icon-2x"> <!--begin::Svg Icon | path:assets/media/svg/icons/General/Thunder-move.svg-->
															<svg xmlns="http://www.w3.org/2000/svg"
																xmlns:xlink="http://www.w3.org/1999/xlink" width="24px"
																height="24px" viewBox="0 0 24 24" version="1.1">
																		<g stroke="none" stroke-width="1" fill="none"
																	fill-rule="evenodd">
																			<rect x="0" y="0" width="24" height="24"></rect>
																			<rect fill="#000000" opacity="0.3" x="2" y="5"
																	width="20" height="14" rx="2"></rect>
																			<rect fill="#000000" x="2" y="8" width="20"
																	height="3"></rect>
																			<rect fill="#000000" opacity="0.3" x="16" y="14"
																	width="4" height="2" rx="1"></rect>
																		</g>
																	</svg> <!--end::Svg Icon-->
														</span>
													</div>
													<div class="wizard-label">
														<h3 class="wizard-title">Bank Details</h3>
														<div class="wizard-desc">Add Bank Details</div>
													</div>
												</div>
											</div>
											<!--end::Wizard Step 3 Nav-->
											<!--begin::Wizard Step 4 Nav-->
											
											<!--end::Wizard Step 4 Nav-->
											<!--begin::Wizard Step 5 Nav-->
											
											<!--end::Wizard Step 5 Nav-->
										</div>
									</div>
									<!--end: Wizard Nav-->
									<!--begin: Wizard Body-->
									<div class="wizard-body py-8 px-8 py-lg-20 px-lg-10">
										<!--begin: Wizard Form-->
										<div class="row">
											<div class="offset-xxl-2 col-xxl-8">
												<form class="form fv-plugins-bootstrap fv-plugins-framework"
													id="vendorCreationForm">
													<!--begin: Wizard Step 1-->
													<div class="pb-5" data-wizard-type="step-content"
														data-wizard-state="current">
														<h4 class="mb-10 font-weight-bold text-dark">Enter
															Vendor Details</h4>
														<!--begin::Input-->
														<div class="row d-none" >
														<div class="col-xl-6">
														<div class="form-group fv-plugins-icon-container">
															<label>Vendor Id *</label> <input type="text"
																class="form-control  form-control-lg" name="vendorId" id="vendorId"
																placeholder="Please enter vendor name." value="">
															<!-- 																	<span class="form-text text-muted">Please enter vendor name.</span> -->
															<div class="fv-plugins-message-container"></div>
														</div>
														</div>
														</div>
														<div class="row">
														<div class="col-xl-6">
														<div class="form-group fv-plugins-icon-container">
															<label>Name *</label> <input type="text"
																class="form-control  form-control-lg" name="vendorName" id="vendorName"
																placeholder="Please enter vendor name." value="">
															<!-- 																	<span class="form-text text-muted">Please enter vendor name.</span> -->
															<div class="fv-plugins-message-container"></div>
														</div>
														</div>
														<div class="col-xl-6">
														<div class="form-group fv-plugins-icon-container">
															<label>Select User *</label>
															<select class="form-control form-control-lg " name="userType" id="userType">
																<option value="CUSTOMER" selected="selected">Customer</option>
																<option value="SUPPLIER">Supplier</option>
															</select>
															<div class="fv-plugins-message-container"></div>
															</div>
														</div>
														
														</div>
														<!--end::Input-->
														<!--begin::Input-->
														<div class="row">
															<div class="col-xl-6">
																<div class="form-group fv-plugins-icon-container">
																	<label>GST *</label> <input type="text"
																		class="form-control  form-control-lg" name="gst" id="gst"
																		placeholder="GST Number" value="">
																	<!-- 																	<span class="form-text text-muted">Please enter your last name.</span> -->
																	<div class="fv-plugins-message-container"></div>
																</div>
															</div>
															<div class="col-xl-6">
																<div class="form-group fv-plugins-icon-container">
																	<label>PAN *</label> <input type="text"
																		class="form-control  form-control-lg" name="pan" id ="pan"
																		placeholder="PAN Number" value="">
																	<!-- 																	<span class="form-text text-muted">Please enter your last name.</span> -->
																	<div class="fv-plugins-message-container"></div>
																</div>
															</div>
														</div>
														<!--end::Input-->
														<div class="row">
															<div class="col-xl-6">
																<!--begin::Input-->
																<div class="form-group fv-plugins-icon-container">
																	<label>Mobile *</label> <input type="text"
																		class="form-control  form-control-lg" name="mobileNumber" id="mobileNumber"
																		placeholder="Phone" value="">
																	<!-- 																				<span class="form-text text-muted">Please enter your phone number.</span> -->
																	<div class="fv-plugins-message-container"></div>
																</div>
																<!--end::Input-->
															</div>
															<div class="col-xl-6">
																<!--begin::Input-->
																<div class="form-group fv-plugins-icon-container">
																	<label>Email *</label> <input type="email"
																		class="form-control  form-control-lg" name="email" id="email"
																		placeholder="Email" value="">
																	<!-- 																			<span class="form-text text-muted">Please enter your email address.</span> -->
																	<div class="fv-plugins-message-container"></div>
																</div>
																<!--end::Input-->
															</div>
														</div>
													</div>
													<!--end: Wizard Step 1-->
													<!--begin: Wizard Step 2-->
													<div class="pb-5" data-wizard-type="step-content">
														<h4 class="mb-10 font-weight-bold text-dark">Vendor Address</h4>
														<div class="row">
															<div class="col-xl-6">
																<!--begin::Input-->
																<div class="form-group fv-plugins-icon-container">
																	<label>Address Line 1 *</label> <input type="text"
																		class="form-control  form-control-lg" name="address1" id ="address1"
																		placeholder="Address Line 1" >
<!-- 																	<span class="form-text text-muted">Please enter -->
<!-- 																		your Address.</span> -->
																	<div class="fv-plugins-message-container"></div>
																</div>
																<!--end::Input-->
															</div>
															<div class="col-xl-6">
																<!--begin::Input-->
																<div class="form-group">
																	<label>Address Line 2</label> <input type="text"
																		class="form-control  form-control-lg" name="address2" id = "address2"
																		placeholder="Address Line 2" >
<!-- 																	<span class="form-text text-muted">Please enter -->
<!-- 																		your Address.</span> -->
																</div>
																<!--end::Input-->
															</div>
														</div>
														<div class="row">
															<div class="col-xl-6">
																<!--begin::Input-->
																<div class="form-group fv-plugins-icon-container">
																	<label>Postcode *</label> <input type="text"
																		class="form-control  form-control-lg" name="postCode" id="postCode"
																		placeholder="Postcode" > 
<!-- 																		<span -->
<!-- 																		class="form-text text-muted">Please enter your -->
<!-- 																		Postcode.</span> -->
																	<div class="fv-plugins-message-container"></div>
																</div>
																<!--end::Input-->
															</div>
															<div class="col-xl-6">
																<!--begin::Input-->
																<div class="form-group fv-plugins-icon-container">
																	<label>City *</label> <input type="text"
																		class="form-control  form-control-lg" name="city" id="city"
																		placeholder="City" >
<!-- 																		 <span -->
<!-- 																		class="form-text text-muted">Please enter your -->
<!-- 																		City.</span> -->
																	<div class="fv-plugins-message-container"></div>
																</div>
																<!--end::Input-->
															</div>
														</div>
														<div class="row">
															<div class="col-xl-6">
																<!--begin::Input-->
																<div class="form-group fv-plugins-icon-container">
																	<label>State *</label> <input type="text"
																		class="form-control  form-control-lg" name="state" id="state"
																		placeholder="State" >
<!-- 																		 <span -->
<!-- 																		class="form-text text-muted">Please enter your -->
<!-- 																		State.</span> -->
																	<div class="fv-plugins-message-container"></div>
																</div>
																<!--end::Input-->
															</div>
															<div class="col-xl-6">
																<!--begin::Select-->
																<div class="form-group fv-plugins-icon-container">
																	<label>Country</label> <select name="country" id="country"
																		class="form-control  form-control-lg">
																		<option value="INDIA" selected="selected">India</option>
																	</select>
																	<div class="fv-plugins-message-container"></div>
																</div>
																<!--end::Input-->
															</div>
														</div>
													</div>
													<!--end: Wizard Step 2-->
													<div class="pb-5" data-wizard-type="step-content">
														<h4 class="mb-10 font-weight-bold text-dark">Vendor Bank Details</h4>
														<div class="row">
															<div class="col-xl-6">
																<!--begin::Input-->
																<div class="form-group fv-plugins-icon-container">
																	<label>Bank Name *</label> <input type="text"
																		class="form-control  form-control-lg" name="bankName" id="bankName"
																		placeholder="Bank Name" >
<!-- 																		 <span -->
<!-- 																		class="form-text text-muted">Please enter your -->
<!-- 																		Card Name.</span> -->
																	<div class="fv-plugins-message-container"></div>
																</div>
																<!--end::Input-->
															</div>
															<div class="col-xl-6">
																<!--begin::Input-->
																<div class="form-group fv-plugins-icon-container">
																	<label>Account Number *</label> <input type="text"
																		class="form-control  form-control-lg" name="accountNumber" id = "accountNumber"
																		placeholder="Account Number" >
<!-- 																	<span class="form-text text-muted">Please enter -->
<!-- 																		your Address.</span> -->
																	<div class="fv-plugins-message-container"></div>
																</div>
																<!--end::Input-->
															</div>
														</div>
														<div class="row">
															<div class="col-xl-6">
																<!--begin::Input-->
																<div class="form-group fv-plugins-icon-container">
																	<label>Branch</label> <input type="text"
																		class="form-control  form-control-lg" name="branch" id="branch" 
																		placeholder="Branch" >
<!-- 																		 <span -->
<!-- 																		class="form-text text-muted">Please enter your -->
<!-- 																		Card Expiry Month.</span> -->
																	<div class="fv-plugins-message-container"></div>
																</div>
																<!--end::Input-->
															</div>
															<div class="col-xl-6">
																<!--begin::Input-->
																<div class="form-group fv-plugins-icon-container">
																	<label>IFSC *</label> <input type="text"
																		class="form-control  form-control-lg" name="ifsc" id="ifsc"
																		placeholder="IFSC" >
<!-- 																		 <span -->
<!-- 																		class="form-text text-muted">Please enter your -->
<!-- 																		Card Expiry Year.</span> -->
																	<div class="fv-plugins-message-container"></div>
																</div>
																<!--end::Input-->
															</div>
														</div>
													</div>
													<!--end: Wizard Step 5-->
													<!--begin: Wizard Step 6-->
													<!--end: Wizard Step 6-->
													<!--begin: Wizard Actions-->
													<div
														class="d-flex justify-content-between border-top mt-5 pt-10">
														<div class="mr-2">
															<button type="button"
																class="btn btn-light-primary font-weight-bolder text-uppercase px-9 py-4"
																data-wizard-type="action-prev">Previous</button>
														</div>
														<div>
															<button type="button"
																class="btn btn-success font-weight-bolder text-uppercase px-9 py-4"
																data-wizard-type="action-submit">Submit</button>
															<button type="button"
																class="btn btn-primary font-weight-bolder text-uppercase px-9 py-4"
																data-wizard-type="action-next">Next</button>
														</div>
													</div>
													<!--end: Wizard Actions-->
													<div></div>
													<div></div>
													<div></div>
													<div></div>
													<div></div>
												</form>
											</div>
											<!--end: Wizard-->
										</div>
										<!--end: Wizard Form-->
									</div>
									<!--end: Wizard Body-->
								</div>
								<!--end: Wizard-->


							</div>
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


	
	<!--begin:: Customer suggestions Modal-->
	<div class="modal fade hide" id="viewCustomerListModal" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalSizeXl" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered modal-xl"
			role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" > Party List </h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<i aria-hidden="true" class="ki ki-close"></i>
					</button>
				</div>
				<div class="modal-body">
					<table id="userList"></table>
					<div id="userListPager"></div>
				</div>
				 <div class="modal-footer">
					<button type="button" class="btn btn-light-danger font-weight-bold" data-dismiss="modal">Close</button>
<!-- 					<button type="button" class="btn btn-primary font-weight-bold">Save changes</button> -->
				</div>
			</div>
		</div>
	</div>
	<!--end::Customer History  Modal-->

	<!--begin::Global Config(global config for global JS scripts)-->
	<script>var KTAppSettings = { "breakpoints": { "sm": 576, "md": 768, "lg": 992, "xl": 1200, "xxl": 1200 }, "colors": { "theme": { "base": { "white": "#ffffff", "primary": "#8950FC", "secondary": "#E5EAEE", "success": "#1BC5BD", "info": "#8950FC", "warning": "#FFA800", "danger": "#F64E60", "light": "#F3F6F9", "dark": "#212121" }, "light": { "white": "#ffffff", "primary": "#E1E9FF", "secondary": "#ECF0F3", "success": "#C9F7F5", "info": "#EEE5FF", "warning": "#FFF4DE", "danger": "#FFE2E5", "light": "#F3F6F9", "dark": "#D6D6E0" }, "inverse": { "white": "#ffffff", "primary": "#ffffff", "secondary": "#212121", "success": "#ffffff", "info": "#ffffff", "warning": "#ffffff", "danger": "#ffffff", "light": "#464E5F", "dark": "#ffffff" } }, "gray": { "gray-100": "#F3F6F9", "gray-200": "#ECF0F3", "gray-300": "#E5EAEE", "gray-400": "#D6D6E0", "gray-500": "#B5B5C3", "gray-600": "#80808F", "gray-700": "#464E5F", "gray-800": "#1B283F", "gray-900": "#212121" } }, "font-family": "Poppins" };</script>
	<!--end::Global Config-->
		<script src="${pageContext.request.contextPath}/assets/plugins/custom/prismjs/prismjs.bundle.js"></script>
		<script src="${pageContext.request.contextPath}/JS/jquery-ui.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/scripts.bundle.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/menu-scripts.bundle.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/pages/widgets.js"></script>
		<script src="${pageContext.request.contextPath}/assets/plugins/custom/datatables/datatables.bundle.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/pages/custom/wizard/wizard-2.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/pages/crud/forms/widgets/bootstrap-daterangepicker.js"></script>
		<script src="${pageContext.request.contextPath}/JS/tenderCommon.js"></script>
<%-- 		<script src="${pageContext.request.contextPath}/JS/customer/quotation.js?v=17721"></script>	 --%>
		<script src="${pageContext.request.contextPath}/JS/userJS/vendorCreation.js?v=17721"></script>	
		
		
		<script type="text/javascript">
		$(document).ready(function () {

		    $('#openBtn').click(function () {
		        $('#myModal').modal({
		            show: true
		        })
		    });

		        $(document).on('show.bs.modal', '.modal', function (event) {
		            var zIndex = 1040 + (10 * $('.modal:visible').length);
		            $(this).css('z-index', zIndex);
		            setTimeout(function() {
		                $('.modal-backdrop').not('.modal-stack').css('z-index', zIndex - 1).addClass('modal-stack');
		            }, 0);
		        });


		});
		</script>
		
</body>
<!--end::Body-->
</html>