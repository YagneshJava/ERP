<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<!--begin::Head-->
<head>
		
		<base href="">
		<meta charset="utf-8" />
		<title> Admin Dashboard </title>
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

<%-- 		<link href="${pageContext.request.contextPath}/assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css" /> --%>

		<link href="${pageContext.request.contextPath}/assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
		<link href="${pageContext.request.contextPath}/assets/plugins/custom/prismjs/prismjs.bundle.css" rel="stylesheet" type="text/css" />
		<link href="${pageContext.request.contextPath}/assets/css/style.bundle.css" rel="stylesheet" type="text/css" />
		  <link href="${pageContext.request.contextPath}/assets/css/responsive.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/sidebar.css">	

<%-- 		<link	href="${pageContext.request.contextPath}/assets/jqgrid/css/ui.jqgrid-bootstrap.min.css"	rel="stylesheet" type="text/css" /> --%>
        <script src="${pageContext.request.contextPath}/assets/plugins/global/plugins.bundle.js"></script>
<%--         <script src="${pageContext.request.contextPath}/assets/jqgrid/js/jquery.jqgrid.min.js"></script> --%>
<%--         <script src="${pageContext.request.contextPath}/assets/validator/js/bootstrapValidator.min.js"></script> --%>

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
			<div class="d-flex flex-column flex-row-fluid wrapper"
				id="kt_wrapper">

				<!--begin::Content-->
										
                    
                    	<!--begin::Entry-->
						<div class="d-flex flex-column-fluid">

							<!--begin::Container-->
							<div class="container-fluid">
								<!--begin::Dashboard-->
								<!--begin::Row-->
								<div class="row mt-0 mt-lg-4">

                                    

									<div class="col-xl-4">
									
										<!--begin::Mixed Widget 4-->
										<div class="card card-custom bg-radial-gradient-primary card-stretch card-shadowless gutter-b">										
											<!--begin::Header-->
											<div class="card-header border-0 py-5">																					
													<div class="card-title font-weight-bolder">
													<i class="icon-2x   text-white mr-3 flaticon-piggy-bank"></i>
													<div class="card-label text-white"> Savings Report
													<div class="font-size-sm text-muted mt-1"> Last 6 Months </div>
													</div>
												   </div>
											</div>
											<!--end::Header-->

											<!--begin::Body-->
											<div class="card-body d-flex flex-column p-0">
												<!--begin::Chart-->
												<div id="kt_mixed_widget_6_chart" style="height: 280px"></div>
												<!--end::Chart-->
												
												
												<!--begin::Stats-->
												<div class="card-spacer  bg-white card-rounded flex-grow-1">	
												<div class="mt-7 mb-5">								
												<div class="row row-paddingless">															
															<!--begin::Item-->
																<div class="col">
																	<div class="d-flex align-items-center mr-2">
																		<!--begin::Symbol-->
																		<div class="symbol symbol-45 symbol-light-success mr-4 flex-shrink-0">
																			<div class="symbol-label">
																				<span class="svg-icon svg-icon-lg svg-icon-danger">
																					<!--begin::Svg Icon | path:assets/media/svg/icons/Home/Library.svg-->
																					<i class="flaticon-piggy-bank icon-2x text-success font-weight-bold"></i>
																					<!--end::Svg Icon-->
																				</span>
																			</div>
																		</div>
																		<!--end::Symbol-->
																		<!--begin::Title-->
																		<div>
																			<div class="font-size-h4 text-dark-75 font-weight-bolder"> £9250 </div>
																			<div class="font-size-sm text-muted font-weight-bold mt-1"> Your Saving </div>
																		</div>
																		<!--end::Title-->
																	</div>
																</div>
																<!--end::Item-->
																
																<!--begin::Item-->
																<div class="col">
																	<div class="d-flex align-items-center mr-2">
																		<!--begin::Symbol-->
																		<div class="symbol symbol-45 symbol-light-info mr-4 flex-shrink-0">
																			<div class="symbol-label">
																				<span class="svg-icon svg-icon-lg svg-icon-info">
																					<!--begin::Svg Icon | path:assets/media/svg/icons/Shopping/Cart3.svg-->
																					<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
																						<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
																							<rect x="0" y="0" width="24" height="24"></rect>
																							<path d="M12,4.56204994 L7.76822128,9.6401844 C7.4146572,10.0644613 6.7840925,10.1217854 6.3598156,9.76822128 C5.9355387,9.4146572 5.87821464,8.7840925 6.23177872,8.3598156 L11.2317787,2.3598156 C11.6315738,1.88006147 12.3684262,1.88006147 12.7682213,2.3598156 L17.7682213,8.3598156 C18.1217854,8.7840925 18.0644613,9.4146572 17.6401844,9.76822128 C17.2159075,10.1217854 16.5853428,10.0644613 16.2317787,9.6401844 L12,4.56204994 Z" fill="#000000" fill-rule="nonzero" opacity="0.3"></path>
																							<path d="M3.5,9 L20.5,9 C21.0522847,9 21.5,9.44771525 21.5,10 C21.5,10.132026 21.4738562,10.2627452 21.4230769,10.3846154 L17.7692308,19.1538462 C17.3034221,20.271787 16.2111026,21 15,21 L9,21 C7.78889745,21 6.6965779,20.271787 6.23076923,19.1538462 L2.57692308,10.3846154 C2.36450587,9.87481408 2.60558331,9.28934029 3.11538462,9.07692308 C3.23725479,9.02614384 3.36797398,9 3.5,9 Z M12,17 C13.1045695,17 14,16.1045695 14,15 C14,13.8954305 13.1045695,13 12,13 C10.8954305,13 10,13.8954305 10,15 C10,16.1045695 10.8954305,17 12,17 Z" fill="#000000"></path>
																						</g>
																					</svg>
																					<!--end::Svg Icon-->
																				</span>
																			</div>
																		</div>
																		<!--end::Symbol-->
																		<!--begin::Title-->
																		<div>
																			<div class="font-size-h4 text-dark-75 font-weight-bolder"> 86 </div>
																			<div class="font-size-sm text-muted font-weight-bold mt-1"> Total  Orders</div>
																		</div>
																		<!--end::Title-->
																	</div>
																</div>
																<!--end::Item-->
																
															</div>
												</div>
												</div>
												<!--end::Stats-->
												
												
											</div>
											<!--end::Body-->
										</div>
										<!--end::Mixed Widget 4-->
									</div>


										<div class="col-xl-4">										
										<!--begin::Mixed Purches by Categories Widget 4-->
										<div class="card card-custom bg-radial-gradient-white card-stretch card-shadowless gutter-b">										
											<!--begin::Header-->
											<div class="card-header border-0 py-5">																					
													<div class="card-title font-weight-bolder">
													<i class="icon-2x text-dark-50 mr-3 flaticon-cart"></i>
													<div class="card-label  text-dark-75 "> Purches by Categories 
													<div class="font-size-sm text-muted mt-1"> Last 6 Months </div>
													</div>
												   </div>
											</div>
											<!--end::Header-->

											<!--begin::Body-->
											<div class="card-body d-flex flex-column p-0">
												<!--begin::Chart-->
												<div id="kt_flotcharts_11" style="height: 300px;"></div>
												<!--end::Chart-->
												
												<!--begin::Stats-->
												<div class="card-spacer bg-white card-rounded flex-grow-1">		
												<div class="mt-2 mb-5">	
												<div class="row row-paddingless">															
															<!--begin::Item-->
																<div class="col">
																	<div class="d-flex align-items-center mr-2">
																		<!--begin::Symbol-->
																		<div class="symbol symbol-45 symbol-light-success mr-4 flex-shrink-0">
																			<div class="symbol-label">
																				<span class="svg-icon svg-icon-lg svg-icon-danger">
																					<!--begin::Svg Icon | path:assets/media/svg/icons/Home/Library.svg-->
																					<i class="flaticon-piggy-bank icon-2x text-success font-weight-bold"></i>
																					<!--end::Svg Icon-->
																				</span>
																			</div>
																		</div>
																		<!--end::Symbol-->
																		<!--begin::Title-->
																		<div>
																			<div class="font-size-h4 text-dark-75 font-weight-bolder"> £9250 </div>
																			<div class="font-size-sm text-muted font-weight-bold mt-1"> Your Saving </div>
																		</div>
																		<!--end::Title-->
																	</div>
																</div>
																<!--end::Item-->
																
																<!--begin::Item-->
																<div class="col">
																	<div class="d-flex align-items-center mr-2">
																		<!--begin::Symbol-->
																		<div class="symbol symbol-45 symbol-light-info mr-4 flex-shrink-0">
																			<div class="symbol-label">
																				<span class="svg-icon svg-icon-lg svg-icon-info">
																					<!--begin::Svg Icon | path:assets/media/svg/icons/Shopping/Cart3.svg-->
																					<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
																						<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
																							<rect x="0" y="0" width="24" height="24"></rect>
																							<path d="M12,4.56204994 L7.76822128,9.6401844 C7.4146572,10.0644613 6.7840925,10.1217854 6.3598156,9.76822128 C5.9355387,9.4146572 5.87821464,8.7840925 6.23177872,8.3598156 L11.2317787,2.3598156 C11.6315738,1.88006147 12.3684262,1.88006147 12.7682213,2.3598156 L17.7682213,8.3598156 C18.1217854,8.7840925 18.0644613,9.4146572 17.6401844,9.76822128 C17.2159075,10.1217854 16.5853428,10.0644613 16.2317787,9.6401844 L12,4.56204994 Z" fill="#000000" fill-rule="nonzero" opacity="0.3"></path>
																							<path d="M3.5,9 L20.5,9 C21.0522847,9 21.5,9.44771525 21.5,10 C21.5,10.132026 21.4738562,10.2627452 21.4230769,10.3846154 L17.7692308,19.1538462 C17.3034221,20.271787 16.2111026,21 15,21 L9,21 C7.78889745,21 6.6965779,20.271787 6.23076923,19.1538462 L2.57692308,10.3846154 C2.36450587,9.87481408 2.60558331,9.28934029 3.11538462,9.07692308 C3.23725479,9.02614384 3.36797398,9 3.5,9 Z M12,17 C13.1045695,17 14,16.1045695 14,15 C14,13.8954305 13.1045695,13 12,13 C10.8954305,13 10,13.8954305 10,15 C10,16.1045695 10.8954305,17 12,17 Z" fill="#000000"></path>
																						</g>
																					</svg>
																					<!--end::Svg Icon-->
																				</span>
																			</div>
																		</div>
																		<!--end::Symbol-->
																		<!--begin::Title-->
																		<div>
																			<div class="font-size-h4 text-dark-75 font-weight-bolder"> 86 </div>
																			<div class="font-size-sm text-muted font-weight-bold mt-1"> Total  Orders</div>
																		</div>
																		<!--end::Title-->
																	</div>
																</div>
																<!--end::Item-->
																
															</div>
															</div>

												</div>
												<!--end::Stats-->
												
												
											</div>
											<!--end::Body-->
										</div>
										<!--end::Mixed Purches by Categories Widget 4-->
										</div>
										
										
										<div class="col-xl-4">
										<!--begin::Mixed Widget 18-->
										<div class="card card-custom card-stretch card-shadowless gutter-b">
											<!--begin::Header-->
											<div class="card-header border-0 pt-5">
												<div class="card-title font-weight-bolder">
													<div class="card-label"> Weekly Purches
													<div class="font-size-sm text-muted mt-2">890,344 Sales</div></div>
												</div>
												<div class="card-toolbar">
													<div class="dropdown dropdown-inline">
														<a href="#" class="btn btn-clean btn-sm btn-icon" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
															<i class="ki ki-bold-more-hor"></i>
														</a>
														<div class="dropdown-menu dropdown-menu-md dropdown-menu-right">
															<!--begin::Navigation-->
															<ul class="navi navi-hover">
																<li class="navi-header font-weight-bold py-4">
																	<span class="font-size-lg">Choose Label:</span>
																	<i class="flaticon2-information icon-md text-muted" data-toggle="tooltip" data-placement="right" title="Click to learn more..."></i>
																</li>
																<li class="navi-separator mb-3 opacity-70"></li>
																<li class="navi-item">
																	<a href="#" class="navi-link">
																		<span class="navi-text">
																			<span class="label label-xl label-inline label-light-success">Customer</span>
																		</span>
																	</a>
																</li>
																<li class="navi-item">
																	<a href="#" class="navi-link">
																		<span class="navi-text">
																			<span class="label label-xl label-inline label-light-danger">Partner</span>
																		</span>
																	</a>
																</li>
																<li class="navi-item">
																	<a href="#" class="navi-link">
																		<span class="navi-text">
																			<span class="label label-xl label-inline label-light-warning">Suplier</span>
																		</span>
																	</a>
																</li>
																<li class="navi-item">
																	<a href="#" class="navi-link">
																		<span class="navi-text">
																			<span class="label label-xl label-inline label-light-primary">Member</span>
																		</span>
																	</a>
																</li>
																<li class="navi-item">
																	<a href="#" class="navi-link">
																		<span class="navi-text">
																			<span class="label label-xl label-inline label-light-dark">Staff</span>
																		</span>
																	</a>
																</li>
																<li class="navi-separator mt-3 opacity-70"></li>
																<li class="navi-footer py-4">
																	<a class="btn btn-clean font-weight-bold btn-sm" href="#">
																	<i class="ki ki-plus icon-sm"></i>Add new</a>
																</li>
															</ul>
															<!--end::Navigation-->
														</div>
													</div>
												</div>
											</div>
											<!--end::Header-->
											
											<!--begin::Body-->
											<div class="card-body">
											
												<!--begin::Chart-->
												<div id="kt_mixed_widget_18_chart" style="height: 250px"></div>
												<!--end::Chart-->
												
												<!--begin::Items-->
												<div class="mt-n12 position-relative zindex-0">
													<!--begin::Widget Item-->
													<div class="d-flex align-items-center mb-8">
														<!--begin::Symbol-->
														<div class="symbol symbol-circle symbol-40 symbol-light mr-3 flex-shrink-0">
															<div class="symbol-label">
																<span class="svg-icon svg-icon-lg svg-icon-gray-500">
																	<!--begin::Svg Icon | path:assets/media/svg/icons/Media/Equalizer.svg-->
																	<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
																		<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
																			<rect x="0" y="0" width="24" height="24" />
																			<rect fill="#000000" opacity="0.3" x="13" y="4" width="3" height="16" rx="1.5" />
																			<rect fill="#000000" x="8" y="9" width="3" height="11" rx="1.5" />
																			<rect fill="#000000" x="18" y="11" width="3" height="9" rx="1.5" />
																			<rect fill="#000000" x="3" y="13" width="3" height="7" rx="1.5" />
																		</g>
																	</svg>
																	<!--end::Svg Icon-->
																</span>
															</div>
														</div>
														<!--end::Symbol-->
														<!--begin::Title-->
														<div>
															<a href="#" class="font-size-h6 text-dark-75 text-hover-primary font-weight-bolder">Most Sales</a>
															<div class="font-size-sm text-muted font-weight-bold mt-1">Authors with the best sales</div>
														</div>
														<!--end::Title-->
													</div>
													<!--end::Widget Item-->
													<!--begin::Widget Item-->
													<div class="d-flex align-items-center mb-8">
														<!--begin::Symbol-->
														<div class="symbol symbol-circle symbol-40 symbol-light mr-3 flex-shrink-0">
															<div class="symbol-label">
																<span class="svg-icon svg-icon-lg svg-icon-gray-500">
																	<!--begin::Svg Icon | path:assets/media/svg/icons/Shopping/Chart-pie.svg-->
																	<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
																		<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
																			<rect x="0" y="0" width="24" height="24" />
																			<path d="M4.00246329,12.2004927 L13,14 L13,4.06189375 C16.9463116,4.55399184 20,7.92038235 20,12 C20,16.418278 16.418278,20 12,20 C7.64874861,20 4.10886412,16.5261253 4.00246329,12.2004927 Z" fill="#000000" opacity="0.3" />
																			<path d="M3.0603968,10.0120794 C3.54712466,6.05992157 6.91622084,3 11,3 L11,11.6 L3.0603968,10.0120794 Z" fill="#000000" />
																		</g>
																	</svg>
																	<!--end::Svg Icon-->
																</span>
															</div>
														</div>
														<!--end::Symbol-->
														<!--begin::Title-->
														<div>
															<a href="#" class="font-size-h6 text-dark-75 text-hover-primary font-weight-bolder">Total Sales Lead</a>
															<div class="font-size-sm text-muted font-weight-bold mt-1">40% increased on week-to-week reports</div>
														</div>
														<!--end::Title-->
													</div>
													<!--end::Widget Item-->
													<!--begin::Widget Item-->
													<div class="d-flex align-items-center">
														<!--begin::Symbol-->
														<div class="symbol symbol-circle symbol-40 symbol-light mr-3 flex-shrink-0">
															<div class="symbol-label">
																<span class="svg-icon svg-icon-lg svg-icon-gray-500">
																	<!--begin::Svg Icon | path:assets/media/svg/icons/Design/Layers.svg-->
																	<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
																		<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
																			<polygon points="0 0 24 0 24 24 0 24" />
																			<path d="M12.9336061,16.072447 L19.36,10.9564761 L19.5181585,10.8312381 C20.1676248,10.3169571 20.2772143,9.3735535 19.7629333,8.72408713 C19.6917232,8.63415859 19.6104327,8.55269514 19.5206557,8.48129411 L12.9336854,3.24257445 C12.3871201,2.80788259 11.6128799,2.80788259 11.0663146,3.24257445 L4.47482784,8.48488609 C3.82645598,9.00054628 3.71887192,9.94418071 4.23453211,10.5925526 C4.30500305,10.6811601 4.38527899,10.7615046 4.47382636,10.8320511 L4.63,10.9564761 L11.0659024,16.0730648 C11.6126744,16.5077525 12.3871218,16.5074963 12.9336061,16.072447 Z" fill="#000000" fill-rule="nonzero" />
																			<path d="M11.0563554,18.6706981 L5.33593024,14.122919 C4.94553994,13.8125559 4.37746707,13.8774308 4.06710397,14.2678211 C4.06471678,14.2708238 4.06234874,14.2738418 4.06,14.2768747 L4.06,14.2768747 C3.75257288,14.6738539 3.82516916,15.244888 4.22214834,15.5523151 C4.22358765,15.5534297 4.2250303,15.55454 4.22647627,15.555646 L11.0872776,20.8031356 C11.6250734,21.2144692 12.371757,21.2145375 12.909628,20.8033023 L19.7677785,15.559828 C20.1693192,15.2528257 20.2459576,14.6784381 19.9389553,14.2768974 C19.9376429,14.2751809 19.9363245,14.2734691 19.935,14.2717619 L19.935,14.2717619 C19.6266937,13.8743807 19.0546209,13.8021712 18.6572397,14.1104775 C18.654352,14.112718 18.6514778,14.1149757 18.6486172,14.1172508 L12.9235044,18.6705218 C12.377022,19.1051477 11.6029199,19.1052208 11.0563554,18.6706981 Z" fill="#000000" opacity="0.3" />
																		</g>
																	</svg>
																	<!--end::Svg Icon-->
																</span>
															</div>
														</div>
														<!--end::Symbol-->
														<!--begin::Title-->
														<div>
															<a href="#" class="font-size-h6 text-dark-75 text-hover-primary font-weight-bolder">Average Bestseller</a>
															<div class="font-size-sm text-muted font-weight-bold mt-1">Pitstop Email Marketing</div>
														</div>
														<!--end::Title-->
													</div>
													<!--end::Widget Item-->
												</div>
												<!--end::Items-->
											</div>
											<!--end::Body-->
										</div>
										<!--end::Mixed Widget 18-->
									</div>


								</div>
								<!--end::Row-->

								<!--begin::Row-->
								<div class="row">
								
									<div class="col-xl-4">
									
									<!--begin::Mixed Purches by Categories Widget 4-->
										<div class="card card-custom bg-radial-gradient-white card-stretch card-shadowless gutter-b">										
											<!--begin::Header-->
											<div class="card-header border-0 py-5">																					
													<div class="card-title font-weight-bolder">
													<i class="icon-2x text-dark-50 mr-3 flaticon-cart"></i>
													<div class="card-label  text-dark-75 "> Weekly Purches  
													<div class="font-size-sm text-muted mt-1"> Last 6 Months </div>
													</div>
												   </div>
											</div>
											<!--end::Header-->

											<!--begin::Body-->
											<div class="card-body d-flex flex-column p-0">
												<!--begin::Chart-->
												<div id="chart_11" class="d-flex justify-content-center"></div>
												<!--end::Chart-->
												
												<!--begin::Stats-->
												<div class="card-spacer bg-white card-rounded flex-grow-1">		
												<div class="mt-2 mb-5">	
												<div class="row justify-content-center text-center row-paddingless">															
															<!--begin::Item-->
																<div class="col">
																	<div class="d-flex align-items-center mr-2">
																		<!--begin::Symbol-->
																		<div class="symbol symbol-45 symbol-light-success mr-4 flex-shrink-0">
																			<div class="symbol-label">
																				<span class="svg-icon svg-icon-lg svg-icon-danger">
																					<!--begin::Svg Icon | path:assets/media/svg/icons/Home/Library.svg-->
																					<i class="flaticon-piggy-bank icon-2x text-success font-weight-bold"></i>
																					<!--end::Svg Icon-->
																				</span>
																			</div>
																		</div>
																		<!--end::Symbol-->
																		<!--begin::Title-->
																		<div>
																			<div class="font-size-h4 text-dark-75 font-weight-bolder"> £9250 </div>
																			<div class="font-size-sm text-muted font-weight-bold mt-1"> Your Saving </div>
																		</div>
																		<!--end::Title-->
																	</div>
																</div>
																<!--end::Item-->
																
																<!--begin::Item-->
																<div class="col">
																	<div class="d-flex align-items-center mr-2">
																		<!--begin::Symbol-->
																		<div class="symbol symbol-45 symbol-light-info mr-4 flex-shrink-0">
																			<div class="symbol-label">
																				<span class="svg-icon svg-icon-lg svg-icon-info">
																					<!--begin::Svg Icon | path:assets/media/svg/icons/Shopping/Cart3.svg-->
																					<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
																						<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
																							<rect x="0" y="0" width="24" height="24"></rect>
																							<path d="M12,4.56204994 L7.76822128,9.6401844 C7.4146572,10.0644613 6.7840925,10.1217854 6.3598156,9.76822128 C5.9355387,9.4146572 5.87821464,8.7840925 6.23177872,8.3598156 L11.2317787,2.3598156 C11.6315738,1.88006147 12.3684262,1.88006147 12.7682213,2.3598156 L17.7682213,8.3598156 C18.1217854,8.7840925 18.0644613,9.4146572 17.6401844,9.76822128 C17.2159075,10.1217854 16.5853428,10.0644613 16.2317787,9.6401844 L12,4.56204994 Z" fill="#000000" fill-rule="nonzero" opacity="0.3"></path>
																							<path d="M3.5,9 L20.5,9 C21.0522847,9 21.5,9.44771525 21.5,10 C21.5,10.132026 21.4738562,10.2627452 21.4230769,10.3846154 L17.7692308,19.1538462 C17.3034221,20.271787 16.2111026,21 15,21 L9,21 C7.78889745,21 6.6965779,20.271787 6.23076923,19.1538462 L2.57692308,10.3846154 C2.36450587,9.87481408 2.60558331,9.28934029 3.11538462,9.07692308 C3.23725479,9.02614384 3.36797398,9 3.5,9 Z M12,17 C13.1045695,17 14,16.1045695 14,15 C14,13.8954305 13.1045695,13 12,13 C10.8954305,13 10,13.8954305 10,15 C10,16.1045695 10.8954305,17 12,17 Z" fill="#000000"></path>
																						</g>
																					</svg>
																					<!--end::Svg Icon-->
																				</span>
																			</div>
																		</div>
																		<!--end::Symbol-->
																		<!--begin::Title-->
																		<div>
																			<div class="font-size-h4 text-dark-75 font-weight-bolder"> 86 </div>
																			<div class="font-size-sm text-muted font-weight-bold mt-1"> Total  Orders</div>
																		</div>
																		<!--end::Title-->
																	</div>
																</div>
																<!--end::Item-->
																
															</div>
															</div>

												</div>
												<!--end::Stats-->
												
												
											</div>
											<!--end::Body-->
										</div>
										<!--end::Mixed  Weekly Purches  Stats   Widget 4-->
									</div>
									
									<div class="col-xl-8">
										<!--begin::Base Table Widget 5-->
										<div class="card card-custom card-stretch card-shadowless gutter-b">
										
											<!--begin::Header-->
											<div class="card-header border-0 pt-5">
												<h3 class="card-title align-items-start flex-column">
													<span class="card-label font-weight-bolder text-dark"> Your Orders </span>
													<span class="text-muted mt-3 font-weight-bold font-size-sm"> Last 10 Orders </span>
												</h3>
												
												<div class="card-toolbar">
											<a href="#" class="btn btn-info font-weight-bolder font-size-sm mr-3"> View all Orders</a>
										</div>
	
											</div>
											<!--end::Header-->

											<!--begin::Body-->
											<div class="card-body pt-2 pb-0 mt-3">
																								<!--begin::Table-->
												<div class="table-responsive">
													<table class="table table-head-custom table-vertical-center" id="kt_advance_table_widget_1">
														
														<thead>
															<tr class="text-left">
																<th> Quotation ID </th>
																<th> Order ID	 </th>
																<th> Supplier Name	 </th>
																<th> Created Date	 </th>
																<th> Final Date	 </th>
																<th> Order Status </th>
																<th class="pr-0 text-right">Action</th>
															</tr>
														</thead>
														
														<tbody>
															
															<tr>                                                                
																<td class="pl-0">
																<span class="text-dark-75 font-weight-bolder d-block"> Q_00027 </span>
																</td>
																
																
																<td class="pl-0">
																<span class="text-dark-75 font-weight-bolder d-block"> P00019 </span>
																</td>
																
																<td class="pl-0">
																<span class="text-dark-75 font-weight-bolder d-block"> P00019 </span>
																</td>
																
																<td>
																<span class="text-dark-75 font-weight-bolder d-block"> 04-Oct-2021 </span>
																</td>
																
																
																<td>
																	<span class="text-dark-75 font-weight-bolder"> 14-Oct-2021 </span>
																</td>
																															
																
																<td class="">
																<span class="label label-lg label-light-warning label-inline"> In Progress </span>
																</td>
	
																<td class="pr-0 text-right">
																	<a href="#" class="btn btn-icon btn-light btn-hover-primary btn-sm">
																		<span class="svg-icon svg-icon-md svg-icon-primary">
																			<!--begin::Svg Icon | path:assets/media/svg/icons/General/Settings-1.svg-->
																			<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
																				<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
																					<rect x="0" y="0" width="24" height="24" />
																					<path d="M7,3 L17,3 C19.209139,3 21,4.790861 21,7 C21,9.209139 19.209139,11 17,11 L7,11 C4.790861,11 3,9.209139 3,7 C3,4.790861 4.790861,3 7,3 Z M7,9 C8.1045695,9 9,8.1045695 9,7 C9,5.8954305 8.1045695,5 7,5 C5.8954305,5 5,5.8954305 5,7 C5,8.1045695 5.8954305,9 7,9 Z" fill="#000000" />
																					<path d="M7,13 L17,13 C19.209139,13 21,14.790861 21,17 C21,19.209139 19.209139,21 17,21 L7,21 C4.790861,21 3,19.209139 3,17 C3,14.790861 4.790861,13 7,13 Z M17,19 C18.1045695,19 19,18.1045695 19,17 C19,15.8954305 18.1045695,15 17,15 C15.8954305,15 15,15.8954305 15,17 C15,18.1045695 15.8954305,19 17,19 Z" fill="#000000" opacity="0.3" />
																				</g>
																			</svg>
																			<!--end::Svg Icon-->
																		</span>
																	</a>

																</td>
															</tr>
															
															
															
															<tr>                                                                
																<td class="pl-0">
																<span class="text-dark-75 font-weight-bolder d-block"> Q_00027 </span>
																</td>
																
																
																<td class="pl-0">
																<span class="text-dark-75 font-weight-bolder d-block"> P00019 </span>
																</td>
																
																<td class="pl-0">
																<span class="text-dark-75 font-weight-bolder d-block"> P00019 </span>
																</td>
																
																<td>
																<span class="text-dark-75 font-weight-bolder d-block"> 04-Oct-2021 </span>
																</td>
																
																
																<td>
																	<span class="text-dark-75 font-weight-bolder"> 14-Oct-2021 </span>
																</td>
																															
																
																<td class="">
																<span class="label label-lg label-light-danger  label-inline"> Panding </span>
																</td>
	
																<td class="pr-0 text-right">
																	<a href="#" class="btn btn-icon btn-light btn-hover-primary btn-sm">
																		<span class="svg-icon svg-icon-md svg-icon-primary">
																			<!--begin::Svg Icon | path:assets/media/svg/icons/General/Settings-1.svg-->
																			<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
																				<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
																					<rect x="0" y="0" width="24" height="24" />
																					<path d="M7,3 L17,3 C19.209139,3 21,4.790861 21,7 C21,9.209139 19.209139,11 17,11 L7,11 C4.790861,11 3,9.209139 3,7 C3,4.790861 4.790861,3 7,3 Z M7,9 C8.1045695,9 9,8.1045695 9,7 C9,5.8954305 8.1045695,5 7,5 C5.8954305,5 5,5.8954305 5,7 C5,8.1045695 5.8954305,9 7,9 Z" fill="#000000" />
																					<path d="M7,13 L17,13 C19.209139,13 21,14.790861 21,17 C21,19.209139 19.209139,21 17,21 L7,21 C4.790861,21 3,19.209139 3,17 C3,14.790861 4.790861,13 7,13 Z M17,19 C18.1045695,19 19,18.1045695 19,17 C19,15.8954305 18.1045695,15 17,15 C15.8954305,15 15,15.8954305 15,17 C15,18.1045695 15.8954305,19 17,19 Z" fill="#000000" opacity="0.3" />
																				</g>
																			</svg>
																			<!--end::Svg Icon-->
																		</span>
																	</a>

																</td>
															</tr>
															
															
															<tr>                                                                
																<td class="pl-0">
																<span class="text-dark-75 font-weight-bolder d-block"> Q_00027 </span>
																</td>
																
																
																<td class="pl-0">
																<span class="text-dark-75 font-weight-bolder d-block"> P00019 </span>
																</td>
																
																<td class="pl-0">
																<span class="text-dark-75 font-weight-bolder d-block"> P00019 </span>
																</td>
																
																<td>
																<span class="text-dark-75 font-weight-bolder d-block"> 04-Oct-2021 </span>
																</td>
																
																
																<td>
																	<span class="text-dark-75 font-weight-bolder"> 14-Oct-2021 </span>
																</td>
																															
																
																<td class="">
																<span class="label label-lg label-light-warning label-inline"> In Progress </span>
																</td>
	
																<td class="pr-0 text-right">
																	<a href="#" class="btn btn-icon btn-light btn-hover-primary btn-sm">
																		<span class="svg-icon svg-icon-md svg-icon-primary">
																			<!--begin::Svg Icon | path:assets/media/svg/icons/General/Settings-1.svg-->
																			<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
																				<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
																					<rect x="0" y="0" width="24" height="24" />
																					<path d="M7,3 L17,3 C19.209139,3 21,4.790861 21,7 C21,9.209139 19.209139,11 17,11 L7,11 C4.790861,11 3,9.209139 3,7 C3,4.790861 4.790861,3 7,3 Z M7,9 C8.1045695,9 9,8.1045695 9,7 C9,5.8954305 8.1045695,5 7,5 C5.8954305,5 5,5.8954305 5,7 C5,8.1045695 5.8954305,9 7,9 Z" fill="#000000" />
																					<path d="M7,13 L17,13 C19.209139,13 21,14.790861 21,17 C21,19.209139 19.209139,21 17,21 L7,21 C4.790861,21 3,19.209139 3,17 C3,14.790861 4.790861,13 7,13 Z M17,19 C18.1045695,19 19,18.1045695 19,17 C19,15.8954305 18.1045695,15 17,15 C15.8954305,15 15,15.8954305 15,17 C15,18.1045695 15.8954305,19 17,19 Z" fill="#000000" opacity="0.3" />
																				</g>
																			</svg>
																			<!--end::Svg Icon-->
																		</span>
																	</a>

																</td>
															</tr>
															
															
															
															<tr>                                                                
																<td class="pl-0">
																<span class="text-dark-75 font-weight-bolder d-block"> Q_00027 </span>
																</td>
																
																
																<td class="pl-0">
																<span class="text-dark-75 font-weight-bolder d-block"> P00019 </span>
																</td>
																
																<td class="pl-0">
																<span class="text-dark-75 font-weight-bolder d-block"> P00019 </span>
																</td>
																
																<td>
																<span class="text-dark-75 font-weight-bolder d-block"> 04-Oct-2021 </span>
																</td>
																
																
																<td>
																	<span class="text-dark-75 font-weight-bolder"> 14-Oct-2021 </span>
																</td>
																															
																
																<td class="">
																<span class="label label-lg label-light-danger  label-inline"> Panding </span>
																</td>
	
																<td class="pr-0 text-right">
																	<a href="#" class="btn btn-icon btn-light btn-hover-primary btn-sm">
																		<span class="svg-icon svg-icon-md svg-icon-primary">
																			<!--begin::Svg Icon | path:assets/media/svg/icons/General/Settings-1.svg-->
																			<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
																				<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
																					<rect x="0" y="0" width="24" height="24" />
																					<path d="M7,3 L17,3 C19.209139,3 21,4.790861 21,7 C21,9.209139 19.209139,11 17,11 L7,11 C4.790861,11 3,9.209139 3,7 C3,4.790861 4.790861,3 7,3 Z M7,9 C8.1045695,9 9,8.1045695 9,7 C9,5.8954305 8.1045695,5 7,5 C5.8954305,5 5,5.8954305 5,7 C5,8.1045695 5.8954305,9 7,9 Z" fill="#000000" />
																					<path d="M7,13 L17,13 C19.209139,13 21,14.790861 21,17 C21,19.209139 19.209139,21 17,21 L7,21 C4.790861,21 3,19.209139 3,17 C3,14.790861 4.790861,13 7,13 Z M17,19 C18.1045695,19 19,18.1045695 19,17 C19,15.8954305 18.1045695,15 17,15 C15.8954305,15 15,15.8954305 15,17 C15,18.1045695 15.8954305,19 17,19 Z" fill="#000000" opacity="0.3" />
																				</g>
																			</svg>
																			<!--end::Svg Icon-->
																		</span>
																	</a>

																</td>
															</tr>
															
															
															<tr>                                                                
																<td class="pl-0">
																<span class="text-dark-75 font-weight-bolder d-block"> Q_00027 </span>
																</td>
																
																
																<td class="pl-0">
																<span class="text-dark-75 font-weight-bolder d-block"> P00019 </span>
																</td>
																
																<td class="pl-0">
																<span class="text-dark-75 font-weight-bolder d-block"> P00019 </span>
																</td>
																
																<td>
																<span class="text-dark-75 font-weight-bolder d-block"> 04-Oct-2021 </span>
																</td>
																
																
																<td>
																	<span class="text-dark-75 font-weight-bolder"> 14-Oct-2021 </span>
																</td>
																															
																
																<td class="">
																<span class="label label-lg label-light-warning label-inline"> In Progress </span>
																</td>
	
																<td class="pr-0 text-right">
																	<a href="#" class="btn btn-icon btn-light btn-hover-primary btn-sm">
																		<span class="svg-icon svg-icon-md svg-icon-primary">
																			<!--begin::Svg Icon | path:assets/media/svg/icons/General/Settings-1.svg-->
																			<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
																				<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
																					<rect x="0" y="0" width="24" height="24" />
																					<path d="M7,3 L17,3 C19.209139,3 21,4.790861 21,7 C21,9.209139 19.209139,11 17,11 L7,11 C4.790861,11 3,9.209139 3,7 C3,4.790861 4.790861,3 7,3 Z M7,9 C8.1045695,9 9,8.1045695 9,7 C9,5.8954305 8.1045695,5 7,5 C5.8954305,5 5,5.8954305 5,7 C5,8.1045695 5.8954305,9 7,9 Z" fill="#000000" />
																					<path d="M7,13 L17,13 C19.209139,13 21,14.790861 21,17 C21,19.209139 19.209139,21 17,21 L7,21 C4.790861,21 3,19.209139 3,17 C3,14.790861 4.790861,13 7,13 Z M17,19 C18.1045695,19 19,18.1045695 19,17 C19,15.8954305 18.1045695,15 17,15 C15.8954305,15 15,15.8954305 15,17 C15,18.1045695 15.8954305,19 17,19 Z" fill="#000000" opacity="0.3" />
																				</g>
																			</svg>
																			<!--end::Svg Icon-->
																		</span>
																	</a>

																</td>
															</tr>
															
															
															
															<tr>                                                                
																<td class="pl-0">
																<span class="text-dark-75 font-weight-bolder d-block"> Q_00027 </span>
																</td>
																
																
																<td class="pl-0">
																<span class="text-dark-75 font-weight-bolder d-block"> P00019 </span>
																</td>
																
																<td class="pl-0">
																<span class="text-dark-75 font-weight-bolder d-block"> P00019 </span>
																</td>
																
																<td>
																<span class="text-dark-75 font-weight-bolder d-block"> 04-Oct-2021 </span>
																</td>
																
																
																<td>
																	<span class="text-dark-75 font-weight-bolder"> 14-Oct-2021 </span>
																</td>
																															
																
																<td class="">
																<span class="label label-lg label-light-danger  label-inline"> Panding </span>
																</td>
	
																<td class="pr-0 text-right">
																	<a href="#" class="btn btn-icon btn-light btn-hover-primary btn-sm">
																		<span class="svg-icon svg-icon-md svg-icon-primary">
																			<!--begin::Svg Icon | path:assets/media/svg/icons/General/Settings-1.svg-->
																			<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
																				<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
																					<rect x="0" y="0" width="24" height="24" />
																					<path d="M7,3 L17,3 C19.209139,3 21,4.790861 21,7 C21,9.209139 19.209139,11 17,11 L7,11 C4.790861,11 3,9.209139 3,7 C3,4.790861 4.790861,3 7,3 Z M7,9 C8.1045695,9 9,8.1045695 9,7 C9,5.8954305 8.1045695,5 7,5 C5.8954305,5 5,5.8954305 5,7 C5,8.1045695 5.8954305,9 7,9 Z" fill="#000000" />
																					<path d="M7,13 L17,13 C19.209139,13 21,14.790861 21,17 C21,19.209139 19.209139,21 17,21 L7,21 C4.790861,21 3,19.209139 3,17 C3,14.790861 4.790861,13 7,13 Z M17,19 C18.1045695,19 19,18.1045695 19,17 C19,15.8954305 18.1045695,15 17,15 C15.8954305,15 15,15.8954305 15,17 C15,18.1045695 15.8954305,19 17,19 Z" fill="#000000" opacity="0.3" />
																				</g>
																			</svg>
																			<!--end::Svg Icon-->
																		</span>
																	</a>

																</td>
															</tr>
														
														
														
															<tr>                                                                
																<td class="pl-0">
																<span class="text-dark-75 font-weight-bolder d-block"> Q_00027 </span>
																</td>
																
																
																<td class="pl-0">
																<span class="text-dark-75 font-weight-bolder d-block"> P00019 </span>
																</td>
																
																<td class="pl-0">
																<span class="text-dark-75 font-weight-bolder d-block"> P00019 </span>
																</td>
																
																<td>
																<span class="text-dark-75 font-weight-bolder d-block"> 04-Oct-2021 </span>
																</td>
																
																
																<td>
																	<span class="text-dark-75 font-weight-bolder"> 14-Oct-2021 </span>
																</td>
																															
																
																<td class="">
																<span class="label label-lg label-light-danger  label-inline"> Panding </span>
																</td>
	
																<td class="pr-0 text-right">
																	<a href="#" class="btn btn-icon btn-light btn-hover-primary btn-sm">
																		<span class="svg-icon svg-icon-md svg-icon-primary">
																			<!--begin::Svg Icon | path:assets/media/svg/icons/General/Settings-1.svg-->
																			<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
																				<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
																					<rect x="0" y="0" width="24" height="24" />
																					<path d="M7,3 L17,3 C19.209139,3 21,4.790861 21,7 C21,9.209139 19.209139,11 17,11 L7,11 C4.790861,11 3,9.209139 3,7 C3,4.790861 4.790861,3 7,3 Z M7,9 C8.1045695,9 9,8.1045695 9,7 C9,5.8954305 8.1045695,5 7,5 C5.8954305,5 5,5.8954305 5,7 C5,8.1045695 5.8954305,9 7,9 Z" fill="#000000" />
																					<path d="M7,13 L17,13 C19.209139,13 21,14.790861 21,17 C21,19.209139 19.209139,21 17,21 L7,21 C4.790861,21 3,19.209139 3,17 C3,14.790861 4.790861,13 7,13 Z M17,19 C18.1045695,19 19,18.1045695 19,17 C19,15.8954305 18.1045695,15 17,15 C15.8954305,15 15,15.8954305 15,17 C15,18.1045695 15.8954305,19 17,19 Z" fill="#000000" opacity="0.3" />
																				</g>
																			</svg>
																			<!--end::Svg Icon-->
																		</span>
																	</a>

																</td>
															</tr>
															
														</tbody>
													</table>
												</div>
												<!--end::Table-->
											</div>
											<!--end::Body-->
										</div>
										<!--end::Base Table Widget 5-->
									</div>
								</div>
								<!--end::Row-->

								<!--end::Dashboard-->
                                
							</div>
							<!--end::Container-->
						</div>
						<!--end::Entry-->

				<!--end::Content-->
				

				<jsp:include page="../footer.jsp"></jsp:include>

			</div>
			<!--end::Wrapper-->
			
			
				<!--begin::Aside Secondary-->
				<div class="sidebar sidebar-right d-flex flex-row-auto flex-column" id="kt_sidebar">
					
					<!--begin::Aside Secondary Content-->
					<div class="sidebar-content flex-column-fluid pb-10 pt-9 px-5 px-lg-10">
						<!--begin: Stats Widget 19-->
						<div class="card card-custom bg-light-success gutter-b">
							<!--begin::Body-->
							<div class="card-body my-3">
								<a href="#" class="card-title font-weight-bolder text-success text-hover-state-dark font-size-h6 mb-4 d-block">SAP UI Progress</a>
								<div class="font-weight-bold text-muted font-size-sm">
								<span class="text-dark-75 font-size-h2 font-weight-bolder mr-2">67%</span>Average</div>
								<div class="progress progress-xs mt-7 bg-success-o-60">
									<div class="progress-bar bg-success" role="progressbar" style="width: 67%;" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
								</div>
							</div>
							<!--end:: Body-->
						</div>
						<!--end: Stats:Widget 19-->
						<!--begin::Stats Widget 20-->
						<div class="card card-custom bg-light-warning gutter-b">
							<!--begin::Body-->
							<div class="card-body my-4">
								<a href="#" class="card-title font-weight-bolder text-warning font-size-h6 mb-4 text-hover-state-dark d-block">Airplus Budget</a>
								<div class="font-weight-bold text-muted font-size-sm">
								<span class="text-dark-75 font-weight-bolder font-size-h2 mr-2">87K%</span>23k to goal</div>
								<div class="progress progress-xs mt-7 bg-warning-o-60">
									<div class="progress-bar bg-warning" role="progressbar" style="width: 87%;" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
								</div>
							</div>
							<!--end::Body-->
						</div>
						<!--end::Stats Widget 20-->
						<!--begin::Stats Widget 20-->
						<div class="card card-custom bg-light-danger gutter-b">
							<!--begin::Body-->
							<div class="card-body my-4">
								<a href="#" class="card-title font-weight-bolder text-danger font-size-h6 mb-4 text-hover-state-dark d-block">Airplus Budget</a>
								<div class="font-weight-bold text-muted font-size-sm">
								<span class="text-dark-75 font-weight-bolder font-size-h2 mr-2">87K%</span>23k to goal</div>
								<div class="progress progress-xs mt-7 bg-danger-o-60">
									<div class="progress-bar bg-danger" role="progressbar" style="width: 87%;" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
								</div>
							</div>
							<!--end::Body-->
						</div>
						<!--end::Stats Widget 20-->
						<!--begin::Stats Widget 20-->
						<div class="card card-custom bg-light-info gutter-b">
							<!--begin::Body-->
							<div class="card-body my-4">
								<a href="#" class="card-title font-weight-bolder text-info font-size-h6 mb-4 text-hover-state-dark d-block">Airplus Budget</a>
								<div class="font-weight-bold text-muted font-size-sm">
								<span class="text-dark-75 font-weight-bolder font-size-h2 mr-2">87K%</span>23k to goal</div>
								<div class="progress progress-xs mt-7 bg-info-o-60">
									<div class="progress-bar bg-info" role="progressbar" style="width: 87%;" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
								</div>
							</div>
							<!--end::Body-->
						</div>
						<!--end::Stats Widget 20-->
						<!--begin::Stats Widget 20-->
						<div class="card card-custom bg-light-blue gutter-b">
							<!--begin::Body-->
							<div class="card-body my-4">
								<a href="#" class="card-title font-weight-bolder text-blue font-size-h6 mb-4 text-hover-state-dark d-block">Airplus Budget</a>
								<div class="font-weight-bold text-muted font-size-sm">
								<span class="text-dark-75 font-weight-bolder font-size-h2 mr-2">87K%</span>23k to goal</div>
								<div class="progress progress-xs mt-7 bg-blue-o-60">
									<div class="progress-bar bg-blue" role="progressbar" style="width: 87%;" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
								</div>
							</div>
							<!--end::Body-->
						</div>
						<!--end::Stats Widget 20-->
					</div>
					<!--end::Aside Secondary Content-->
				</div>
				<!--end::Aside Secondary-->

		</div>
		<!--end::Page-->
	</div>
	<!--end::Main-->

		<!--begin::Global Config(global config for global JS scripts)-->
		<script>var KTAppSettings = { "breakpoints": { "sm": 576, "md": 768, "lg": 992, "xl": 1200, "xxl": 1200 }, "colors": { "theme": { "base": { "white": "#ffffff", "primary": "#8950FC", "secondary": "#E5EAEE", "success": "#1BC5BD", "info": "#8950FC", "warning": "#FFA800", "danger": "#F64E60", "light": "#F3F6F9", "dark": "#212121" }, "light": { "white": "#ffffff", "primary": "#E1E9FF", "secondary": "#ECF0F3", "success": "#C9F7F5", "info": "#EEE5FF", "warning": "#FFF4DE", "danger": "#FFE2E5", "light": "#F3F6F9", "dark": "#D6D6E0" }, "inverse": { "white": "#ffffff", "primary": "#ffffff", "secondary": "#212121", "success": "#ffffff", "info": "#ffffff", "warning": "#ffffff", "danger": "#ffffff", "light": "#464E5F", "dark": "#ffffff" } }, "gray": { "gray-100": "#F3F6F9", "gray-200": "#ECF0F3", "gray-300": "#E5EAEE", "gray-400": "#D6D6E0", "gray-500": "#B5B5C3", "gray-600": "#80808F", "gray-700": "#464E5F", "gray-800": "#1B283F", "gray-900": "#212121" } }, "font-family": "Poppins" };</script>
		<!--end::Global Config-->
		
		<script src="${pageContext.request.contextPath}/assets/plugins/custom/prismjs/prismjs.bundle.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/scripts.bundle.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/menu-scripts.bundle.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/pages/widgets.js"></script>
		<script src="${pageContext.request.contextPath}/assets/plugins/custom/flot/flot.bundle.js"></script>
		<!--end::Page Vendors-->
		<!--begin::Page Scripts(used by this page)-->
		<script src="${pageContext.request.contextPath}/assets/js/pages/features/charts/flotcharts.js"></script>
				<!--begin::Page Vendors(used by this page)-->
				
						<!--begin::Page Scripts(used by this page)-->
		<script src="${pageContext.request.contextPath}/assets/js/pages/features/charts/apexcharts.js"></script>
		<!--end::Page Scripts-->
		
		<!--end::Page Scripts-->
		
		<script type="text/javascript">
			$(document).ready(function(){
				$(".menu-item").removeClass('menu-item-here');
				$("#adminDashboardLI").addClass('menu-item-here');
			});
		</script>
		
</body>
<!--end::Body-->
</html>