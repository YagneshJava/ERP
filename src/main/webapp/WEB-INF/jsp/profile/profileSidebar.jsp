<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

											<div class="card-body pt-4">
												<!--begin::User-->
												<div class="d-flex align-items-center mt-4">
													<div class="symbol symbol-60 symbol-xxl-100 mr-5 align-self-start align-self-xxl-center">
														<div class="symbol-label" style="background-image:url('assets/media/users/300_21.jpg')"></div>
														<i class="symbol-badge bg-success"></i>
													</div>
													<div>
														<div class="text-muted"> ${sessionScope.userCompanyDetails.getName()}</div>
													</div>
												</div>
												<!--end::User-->

												<!--begin::Contact-->
												<div class="py-9">
												<div class="d-flex align-items-center justify-content-between mb-2">
														<span class="font-weight-bold mr-2">Status:</span>
														<c:choose>
															<c:when test="${status.equals('Pending')}">
																<span class="text-danger"> Deactive </span>
															</c:when>
															<c:when test="${status.equals('Deactive')}">
																<span class="text-danger"> Deactive </span>
															</c:when>
															<c:when test="${status.equals('Active')}">
																<span class="text-success"> Active</span>
															</c:when>
														</c:choose>
													</div>
													<div class="d-flex align-items-center justify-content-between mb-2">
														<span class="font-weight-bold mr-2">Email:</span>
														<span class="text-muted"> ${sessionScope.userLoginDetails.getEmail()} </span>
													</div>
													<div class="d-flex align-items-center justify-content-between mb-2">
														<span class="font-weight-bold mr-2">Phone:</span>
														<span class="text-muted">+44 ${sessionScope.userCompanyDetails.getMobileNo()} </span>
													</div>
												</div>
												<!--end::Contact-->

												<!--begin::Nav-->
												<div class="navi navi-bold navi-hover navi-active navi-link-rounded">
                                                    
													<div class="navi-item mb-2" >
														<a id="profileCompanyDetailsPage" href="profileCompanyDetailsPage" class="navi-link py-4 profileSidebarLI">
															<span class="navi-icon mr-2">
																<span class="svg-icon">
																	<!--begin::Svg Icon | path:assets/media/svg/icons/General/User.svg-->
																	<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
																		<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
																			<polygon points="0 0 24 0 24 24 0 24" />
																			<path d="M12,11 C9.790861,11 8,9.209139 8,7 C8,4.790861 9.790861,3 12,3 C14.209139,3 16,4.790861 16,7 C16,9.209139 14.209139,11 12,11 Z" fill="#8950FC" fill-rule="nonzero" opacity="0.3" />
																			<path d="M3.00065168,20.1992055 C3.38825852,15.4265159 7.26191235,13 11.9833413,13 C16.7712164,13 20.7048837,15.2931929 20.9979143,20.2 C21.0095879,20.3954741 20.9979143,21 20.2466999,21 C16.541124,21 11.0347247,21 3.72750223,21 C3.47671215,21 2.97953825,20.45918 3.00065168,20.1992055 Z" fill="#8950FC" fill-rule="nonzero" />
																		</g>
																	</svg>
																	<!--end::Svg Icon-->
																</span>
															</span>
															<span class="navi-text font-size-lg"> Company Account </span>
														</a>
													</div>
													
													 <c:if test="${userType.equals('WHOLESALECUSTOMER') || userType.equals('SUPPLIER') ||userType.equals('MANUFACTURER')}">
														<div class="navi-item mb-2" >
															<a id="profileLicenceInfoPage" href="profileLicenceInfoPage" class="navi-link py-4 profileSidebarLI">
																<span class="navi-icon mr-2">
																	<span class="svg-icon">
																		<!--begin::Svg Icon | path:assets/media/svg/icons/General/User.svg-->
																		<span class="svg-icon">
																		<!--begin::Svg Icon | path:assets/media/svg/icons/General/User.svg-->
																		<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
																			<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
																				<rect x="0" y="0" width="24" height="24"></rect>
																				<rect fill="#8950FC" x="4" y="5" width="16" height="3" rx="1.5"></rect>
																				<path d="M5.5,15 L18.5,15 C19.3284271,15 20,15.6715729 20,16.5 C20,17.3284271 19.3284271,18 18.5,18 L5.5,18 C4.67157288,18 4,17.3284271 4,16.5 C4,15.6715729 4.67157288,15 5.5,15 Z M5.5,10 L12.5,10 C13.3284271,10 14,10.6715729 14,11.5 C14,12.3284271 13.3284271,13 12.5,13 L5.5,13 C4.67157288,13 4,12.3284271 4,11.5 C4,10.6715729 4.67157288,10 5.5,10 Z" fill="#8950FC" opacity="0.3"></path>
																			</g>
																		</svg>
																	</span>
																	</span>
																</span>
																<span class="navi-text font-size-lg"> License Information </span>
															</a>
														</div>
														
													</c:if>
													<c:if test="${userType.equals('DISPENSINGDOCTOR') || userType.equals('PHARMACY')}">
														<div class="navi-item mb-2" >
															<a id="customerProfileLicenceInfoPage" href="customerProfileLicenceInfoPage" class="navi-link py-4 profileSidebarLI">
																<span class="navi-icon mr-2">
																	<span class="svg-icon">
																		<!--begin::Svg Icon | path:assets/media/svg/icons/General/User.svg-->
																		<span class="svg-icon">
																		<!--begin::Svg Icon | path:assets/media/svg/icons/General/User.svg-->
																		<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
																			<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
																				<rect x="0" y="0" width="24" height="24"></rect>
																				<rect fill="#8950FC" x="4" y="5" width="16" height="3" rx="1.5"></rect>
																				<path d="M5.5,15 L18.5,15 C19.3284271,15 20,15.6715729 20,16.5 C20,17.3284271 19.3284271,18 18.5,18 L5.5,18 C4.67157288,18 4,17.3284271 4,16.5 C4,15.6715729 4.67157288,15 5.5,15 Z M5.5,10 L12.5,10 C13.3284271,10 14,10.6715729 14,11.5 C14,12.3284271 13.3284271,13 12.5,13 L5.5,13 C4.67157288,13 4,12.3284271 4,11.5 C4,10.6715729 4.67157288,10 5.5,10 Z" fill="#8950FC" opacity="0.3"></path>
																			</g>
																		</svg>
																	</span>
																	</span>
																</span>
																<span class="navi-text font-size-lg"> License Information </span>
															</a>
														</div>
														
													</c:if>
													<c:if test="${userType.equals('SUPPLIER')}">
													<div class="navi-item mb-2" style="display: none;">
															<a id="profileBankDetailsPage" href="profileBankDetailsPage" class="navi-link py-4 profileSidebarLI">
																<!--begin::Svg Icon | path:C:\wamp64\www\keenthemes\legacy\metronic\theme\html\demo6\dist/../src/media/svg/icons\Shopping\Money.svg-->
																<span class="navi-icon mr-2">
																<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
    																<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
        																<polygon points="0 0 24 0 24 24 0 24" />
        																<path d="M2,6 L21,6 C21.5522847,6 22,6.44771525 22,7 L22,17 C22,17.5522847 21.5522847,18 21,18 L2,18 C1.44771525,18 1,17.5522847 1,17 L1,7 C1,6.44771525 1.44771525,6 2,6 Z M11.5,16 C13.709139,16 15.5,14.209139 15.5,12 C15.5,9.790861 13.709139,8 11.5,8 C9.290861,8 7.5,9.790861 7.5,12 C7.5,14.209139 9.290861,16 11.5,16 Z" fill="#8950FC" opacity="0.3" transform="translate(11.500000, 12.000000) rotate(-345.000000) translate(-11.500000, -12.000000) "/>
        																<path d="M2,6 L21,6 C21.5522847,6 22,6.44771525 22,7 L22,17 C22,17.5522847 21.5522847,18 21,18 L2,18 C1.44771525,18 1,17.5522847 1,17 L1,7 C1,6.44771525 1.44771525,6 2,6 Z M11.5,16 C13.709139,16 15.5,14.209139 15.5,12 C15.5,9.790861 13.709139,8 11.5,8 C9.290861,8 7.5,9.790861 7.5,12 C7.5,14.209139 9.290861,16 11.5,16 Z M11.5,14 C12.6045695,14 13.5,13.1045695 13.5,12 C13.5,10.8954305 12.6045695,10 11.5,10 C10.3954305,10 9.5,10.8954305 9.5,12 C9.5,13.1045695 10.3954305,14 11.5,14 Z" fill="#8950FC"/>
    																</g>
																</svg>
																	<!--end::Svg Icon-->
																</span>
																<span class="navi-text font-size-lg"> Bank Details </span>
															</a>
														</div>
														</c:if>
													
													<div class="navi-item mb-2">
													<a id="profileAddressDeatailsPage" href="profileAddressDeatailsPage" class="navi-link py-4  profileSidebarLI">
															<span class="navi-icon mr-2">
																<span class="svg-icon">
																	<!--begin::Svg Icon | path:assets/media/svg/icons/Code/Compiling.svg-->
																	<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
																		<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
																			<rect x="0" y="0" width="24" height="24"></rect>
																			<path d="M18,2 L20,2 C21.6568542,2 23,3.34314575 23,5 L23,19 C23,20.6568542 21.6568542,22 20,22 L18,22 L18,2 Z" fill="#8950FC" opacity="0.3"></path>
																			<path d="M5,2 L17,2 C18.6568542,2 20,3.34314575 20,5 L20,19 C20,20.6568542 18.6568542,22 17,22 L5,22 C4.44771525,22 4,21.5522847 4,21 L4,3 C4,2.44771525 4.44771525,2 5,2 Z M12,11 C13.1045695,11 14,10.1045695 14,9 C14,7.8954305 13.1045695,7 12,7 C10.8954305,7 10,7.8954305 10,9 C10,10.1045695 10.8954305,11 12,11 Z M7.00036205,16.4995035 C6.98863236,16.6619875 7.26484009,17 7.4041679,17 C11.463736,17 14.5228466,17 16.5815,17 C16.9988413,17 17.0053266,16.6221713 16.9988413,16.5 C16.8360465,13.4332455 14.6506758,12 11.9907452,12 C9.36772908,12 7.21569918,13.5165724 7.00036205,16.4995035 Z" fill="#8950FC"></path>
																		</g>
																	</svg>
																	<!--end::Svg Icon-->
																</span>
															</span>
															<span class="navi-text font-size-lg"> Address </span>
														</a>
													</div>

													<div class="navi-item mb-2">
														<a id="profileChangePasswordPage" href="profileChangePasswordPage" class="navi-link py-4 profileSidebarLI">
															<span class="navi-icon mr-2">
																<span class="svg-icon">
																	<!--begin::Svg Icon | path:assets/media/svg/icons/Communication/Shield-user.svg-->
																	<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
																		<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
																			<rect x="0" y="0" width="24" height="24" />
																			<path d="M4,4 L11.6314229,2.5691082 C11.8750185,2.52343403 12.1249815,2.52343403 12.3685771,2.5691082 L20,4 L20,13.2830094 C20,16.2173861 18.4883464,18.9447835 16,20.5 L12.5299989,22.6687507 C12.2057287,22.8714196 11.7942713,22.8714196 11.4700011,22.6687507 L8,20.5 C5.51165358,18.9447835 4,16.2173861 4,13.2830094 L4,4 Z" fill="#8950FC" opacity="0.3" />
																			<path d="M12,11 C10.8954305,11 10,10.1045695 10,9 C10,7.8954305 10.8954305,7 12,7 C13.1045695,7 14,7.8954305 14,9 C14,10.1045695 13.1045695,11 12,11 Z" fill="#8950FC" opacity="0.3" />
																			<path d="M7.00036205,16.4995035 C7.21569918,13.5165724 9.36772908,12 11.9907452,12 C14.6506758,12 16.8360465,13.4332455 16.9988413,16.5 C17.0053266,16.6221713 16.9988413,17 16.5815,17 C14.5228466,17 11.463736,17 7.4041679,17 C7.26484009,17 6.98863236,16.6619875 7.00036205,16.4995035 Z" fill="#8950FC" opacity="0.3" />
																		</g>
																	</svg>
																	<!--end::Svg Icon-->
																</span>
															</span>
															<span class="navi-text font-size-lg">Change Password</span>
														</a>
													</div>
													
													
													<security:authorize access="hasAnyRole('ROLE_CUSTOMER','ROLE_SUPPLIER')">
													<div class="navi-item mb-2">
														<a id="profileSettingPage" href="profileSettingPage" class="navi-link py-4 profileSidebarLI">
															<span class="navi-icon mr-2">
																<span class="svg-icon">
																	<!--begin::Svg Icon | path:assets/media/svg/icons/Communication/Shield-user.svg-->
																	<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
																		<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
																	        <rect x="0" y="0" width="24" height="24"/>
																	        <path d="M18.6225,9.75 L18.75,9.75 C19.9926407,9.75 21,10.7573593 21,12 C21,13.2426407 19.9926407,14.25 18.75,14.25 L18.6854912,14.249994 C18.4911876,14.250769 18.3158978,14.366855 18.2393549,14.5454486 C18.1556809,14.7351461 18.1942911,14.948087 18.3278301,15.0846699 L18.372535,15.129375 C18.7950334,15.5514036 19.03243,16.1240792 19.03243,16.72125 C19.03243,17.3184208 18.7950334,17.8910964 18.373125,18.312535 C17.9510964,18.7350334 17.3784208,18.97243 16.78125,18.97243 C16.1840792,18.97243 15.6114036,18.7350334 15.1896699,18.3128301 L15.1505513,18.2736469 C15.008087,18.1342911 14.7951461,18.0956809 14.6054486,18.1793549 C14.426855,18.2558978 14.310769,18.4311876 14.31,18.6225 L14.31,18.75 C14.31,19.9926407 13.3026407,21 12.06,21 C10.8173593,21 9.81,19.9926407 9.81,18.75 C9.80552409,18.4999185 9.67898539,18.3229986 9.44717599,18.2361469 C9.26485393,18.1556809 9.05191298,18.1942911 8.91533009,18.3278301 L8.870625,18.372535 C8.44859642,18.7950334 7.87592081,19.03243 7.27875,19.03243 C6.68157919,19.03243 6.10890358,18.7950334 5.68746499,18.373125 C5.26496665,17.9510964 5.02757002,17.3784208 5.02757002,16.78125 C5.02757002,16.1840792 5.26496665,15.6114036 5.68716991,15.1896699 L5.72635306,15.1505513 C5.86570889,15.008087 5.90431906,14.7951461 5.82064513,14.6054486 C5.74410223,14.426855 5.56881236,14.310769 5.3775,14.31 L5.25,14.31 C4.00735931,14.31 3,13.3026407 3,12.06 C3,10.8173593 4.00735931,9.81 5.25,9.81 C5.50008154,9.80552409 5.67700139,9.67898539 5.76385306,9.44717599 C5.84431906,9.26485393 5.80570889,9.05191298 5.67216991,8.91533009 L5.62746499,8.870625 C5.20496665,8.44859642 4.96757002,7.87592081 4.96757002,7.27875 C4.96757002,6.68157919 5.20496665,6.10890358 5.626875,5.68746499 C6.04890358,5.26496665 6.62157919,5.02757002 7.21875,5.02757002 C7.81592081,5.02757002 8.38859642,5.26496665 8.81033009,5.68716991 L8.84944872,5.72635306 C8.99191298,5.86570889 9.20485393,5.90431906 9.38717599,5.82385306 L9.49484664,5.80114977 C9.65041313,5.71688974 9.7492905,5.55401473 9.75,5.3775 L9.75,5.25 C9.75,4.00735931 10.7573593,3 12,3 C13.2426407,3 14.25,4.00735931 14.25,5.25 L14.249994,5.31450877 C14.250769,5.50881236 14.366855,5.68410223 14.552824,5.76385306 C14.7351461,5.84431906 14.948087,5.80570889 15.0846699,5.67216991 L15.129375,5.62746499 C15.5514036,5.20496665 16.1240792,4.96757002 16.72125,4.96757002 C17.3184208,4.96757002 17.8910964,5.20496665 18.312535,5.626875 C18.7350334,6.04890358 18.97243,6.62157919 18.97243,7.21875 C18.97243,7.81592081 18.7350334,8.38859642 18.3128301,8.81033009 L18.2736469,8.84944872 C18.1342911,8.99191298 18.0956809,9.20485393 18.1761469,9.38717599 L18.1988502,9.49484664 C18.2831103,9.65041313 18.4459853,9.7492905 18.6225,9.75 Z" fill="#8950FC" fill-rule="nonzero" opacity="0.3"/>
																	        <path d="M12,15 C13.6568542,15 15,13.6568542 15,12 C15,10.3431458 13.6568542,9 12,9 C10.3431458,9 9,10.3431458 9,12 C9,13.6568542 10.3431458,15 12,15 Z" fill="#8950FC"/>
																	    </g>
																	</svg>
																	<!--end::Svg Icon-->
																</span>
															</span>
															
															<span class="navi-text font-size-lg">Setting</span>
														</a>
													</div>
													</security:authorize>
													<security:authorize access="hasAnyRole('ROLE_CUSTOMER')">
													<div class="navi-item mb-2">
														<a id="profileStatementPage" href="profileStatementPage" class="navi-link py-4 profileSidebarLI">
															<span class="navi-icon mr-2">
																<span class="svg-icon">
																	<!--begin::Svg Icon | path:assets/media/svg/icons/Communication/Shield-user.svg-->
																	<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
    																		<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
        																	<polygon points="0 0 24 0 24 24 0 24"/>
																		    <path d="M4.85714286,1 L11.7364114,1 C12.0910962,1 12.4343066,1.12568431 12.7051108,1.35473959 L17.4686994,5.3839416 C17.8056532,5.66894833 18,6.08787823 18,6.52920201 L18,19.0833333 C18,20.8738751 17.9795521,21 16.1428571,21 L4.85714286,21 C3.02044787,21 3,20.8738751 3,19.0833333 L3,2.91666667 C3,1.12612489 3.02044787,1 4.85714286,1 Z M8,12 C7.44771525,12 7,12.4477153 7,13 C7,13.5522847 7.44771525,14 8,14 L15,14 C15.5522847,14 16,13.5522847 16,13 C16,12.4477153 15.5522847,12 15,12 L8,12 Z M8,16 C7.44771525,16 7,16.4477153 7,17 C7,17.5522847 7.44771525,18 8,18 L11,18 C11.5522847,18 12,17.5522847 12,17 C12,16.4477153 11.5522847,16 11,16 L8,16 Z" fill="#8950FC" fill-rule="nonzero" opacity="0.3"/>
																		    <path d="M6.85714286,3 L14.7364114,3 C15.0910962,3 15.4343066,3.12568431 15.7051108,3.35473959 L20.4686994,7.3839416 C20.8056532,7.66894833 21,8.08787823 21,8.52920201 L21,21.0833333 C21,22.8738751 20.9795521,23 19.1428571,23 L6.85714286,23 C5.02044787,23 5,22.8738751 5,21.0833333 L5,4.91666667 C5,3.12612489 5.02044787,3 6.85714286,3 Z M8,12 C7.44771525,12 7,12.4477153 7,13 C7,13.5522847 7.44771525,14 8,14 L15,14 C15.5522847,14 16,13.5522847 16,13 C16,12.4477153 15.5522847,12 15,12 L8,12 Z M8,16 C7.44771525,16 7,16.4477153 7,17 C7,17.5522847 7.44771525,18 8,18 L11,18 C11.5522847,18 12,17.5522847 12,17 C12,16.4477153 11.5522847,16 11,16 L8,16 Z" fill="#8950FC" fill-rule="nonzero"/>
																		    </g>
																	</svg><!--end::Svg Icon-->
																<!--end::Svg Icon-->
																</span>
															</span>
															
															<span class="navi-text font-size-lg">Transactions</span>
														</a>
													</div>
													</security:authorize>

												</div>
												<!--end::Nav-->
											</div>