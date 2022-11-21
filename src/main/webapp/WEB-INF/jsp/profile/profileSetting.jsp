<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	href="${pageContext.request.contextPath}/assets/plugins/custom/datatables/datatables.bundle.css"
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
													Representative</h5>
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
								<div class="d-flex flex-row pro-info">
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
									<div class="flex-row-fluid col-xl-12">
										<!--begin::Card-->
										<div class="card card-custom">
											<div class="card-header py-3">
												<div class="card-title align-items-start flex-column">
													<h3 class="card-label font-weight-bolder text-dark">
														Representative</h3>
													<span class="text-muted font-weight-bold font-size-sm mt-1">Representative
														Information </span>
												</div>
											</div>
											<!--end::Header-->


											<div class="card-body">
												<form id="representativeForm">
													<div class="row">
														<div class="col-xl-10">
															<div class="card-toolbar">
																<div class="form-group mb-0">
																	<div class="input-group">
																		<input type="text" id="representative"
																			name="representative"
																			class="form-control form-control-lg border-2"
																			placeholder="Representative" />
																		<div class="input-group-append">
																			<button class="btn btn-success btn-lg" type="submit">
																				Add</button>
																		</div>
																	</div>
																</div>
															</div>
														</div>

														<div class="col-xl-2">
															<div class="form-group mt-2">
																<span
																	class="switch switch-outline switch-icon switch-success">
																	<label> <input type="checkbox" id="status"
																		name="status" checked="checked" name="select" /> <span></span>
																</label>
																</span>
															</div>
														</div>
													</div>
													<div class="row">
														<div class="col-xl-12">
															<table id="representativeList"
																class="table table-hover nowrap table-checkable"></table>
														</div>
													</div>
												</form>
												<!--end::Form-->
											</div>

										</div>
										<!--end::Card-->
									</div>
									<!--end::Content-->

									<c:if
										test="${userType.equals('PHARMACY') || userType.equals('DISPENSINGDOCTOR') || userType.equals('SUPPLIER')}">
										<!--begin:: Content - Your Account -->
										<div class="flex-row-fluid  col-xl-6 r-mt-10">
											<!--begin::Card-->
											<div class="card card-custom">
												<!--begin::Header-->
												<div class="card-header py-3">
													<div class="card-title align-items-start flex-column">
														<h3 class="card-label font-weight-bolder text-dark">
															Granted Supplier</h3>
													</div>
												</div>
												<div class="card-body">

													<form id="grantedSuppliersForm">
														<div class="row mb-5">
															<div class="col-xl-12">
																<div class="card-toolbar">
																



																	<div class="form-group row mb-0">
																		<div class="col-lg-10 col-md-10 col-sm-12">																	
																	
																	<div class="input-group">
																			<select class="form-control select2" id="grantedSuppliers" name="param">
																				<option label="Label"></option>
																			</select>
																		<div class="input-group-append">
																		<button class="btn btn-success btn-md" onclick="addGrantedSupplier();" type="button">Add</button>
																		</div>
																	</div>															
																
<!-- 																			<select class="form-control select2" -->
<!-- 																				id="grantedSuppliers" name="param"> -->
<!-- 																				<option label="Label"></option> -->
<!-- 																			</select> -->
																		</div>

<!-- 																		<div class="input-group-append col-lg-2 col-sm-12  "> -->
<!-- 																			<button class="btn btn-primary btn-md" type="button" -->
<!-- 																				onclick="addGrantedSupplier();">Add</button> -->
<!-- 																		</div> -->
																		
																		<div class="col-lg-2 col-sm-12">
																			<div class="form-group">
																				<span 	class="switch switch-outline switch-icon switch-success">
																					<label> <input type="checkbox"
																						id="supplierStatus" name="supplierStatus"
																						checked="checked" name="select" /> <span></span>
																				</label>
																				</span>
																			</div>
																		</div>
																	</div>

																	<!-- 							                                            <div class="form-group mb-0">
							                                                <div class="input-group">
							                                               		 <select   id="grantedSuppliersName" name="grantedSuppliersName"  class="form-control form-control-lg select2" >
							                                               		 </select>
							                                                    <input  style="display:none;" type="text" id="grantedSuppliers" name="grantedSuppliers"  class="form-control form-control-lg" >
							                                                    <div class="input-group-append">
							                                                        <button class="btn btn-primary btn-lg"  type="submit"> Add </button>
							                                                    </div>
							                                                </div>
							                                            </div> -->
																</div>
															</div>
														</div>
														<div class="row">
															<div class="col-xl-12">
																<table id="grantedSupplierList"
																	class="table table-hover nowrap table-checkable"></table>
															</div>
														</div>
													</form>

												</div>
											</div>
										</div>
									</c:if>
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
			src="${pageContext.request.contextPath}/assets/plugins/custom/datatables/datatables.bundle.js"></script>
		<script
			src="${pageContext.request.contextPath}/assets/js/pages/features/miscellaneous/sweetalert2.js"></script>
		<script src="${pageContext.request.contextPath}/JS/jquery-ui.js"></script>
		<script
			src="${pageContext.request.contextPath}/assets/validator/js/bootstrapValidator.min.js"></script>
		<script
			src="${pageContext.request.contextPath}/JS/profile/profileSetting.js"></script>
		<script src="${pageContext.request.contextPath}/JS/tenderCommon.js"></script>
		<%-- 		<script src="${pageContext.request.contextPath}/assets/js/pages/crud/forms/widgets/select2.js"></script> --%>
		<script type="text/javascript">
			
		</script>
</body>
<!--end::Body-->

</html>