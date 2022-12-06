<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

   <!--begin::Aside-->
				<div class="aside aside-left aside-fixed d-flex flex-column flex-row-auto" id="kt_aside">
					<!--begin::Brand-->
					<div class="brand flex-column-auto" id="kt_brand">
					
						<!--begin::Logo-->
						<a href="dashboardDefiner" class="brand-logo  pt-6">
						<img class="img-fluid" alt="Logo" src="assets/media/logos/e-pharma_logo.png" /> 
						</a>
						<!--end::Logo-->
						
						<div class="favicon"><img src="assets/media/logos/favicon-32x32.png" /></div>

					</div>
					<!--end::Brand-->
					
					<!--begin::Aside Menu-->
					<div class="aside-menu-wrapper flex-column-fluid" id="kt_aside_menu_wrapper">
					<div>
						<input type="hidden" id="partyTypeSideBar" name="partyTypeSideBar" value="${sessionScope.userCompanyDetails.getPartyType()}">
						</div>
						<!--begin::Menu Container-->
						<div id="kt_aside_menu" class="aside-menu my-4" data-menu-vertical="1" data-menu-scroll="1" data-menu-dropdown-timeout="500">
							<!--begin::Menu Nav-->
							<ul class="menu-nav">
								<security:authorize access="hasRole('ROLE_DB')">
									<li id="adminDashboardLI" class="menu-item" aria-haspopup="true">
										<a href="wellcomePage" class="menu-link">
											<i class="icon-xxl la la-layer-group mr-4"></i>
											<span class="menu-text">Dashboard</span>
										</a>
									</li>


									<li id="customerVerificationLI" class="menu-item" aria-haspopup="true">
										<a href="customerVerificationPage" class="menu-link ">
											<i class="icon-xxl la la-user-check mr-4"></i>
											<span class="menu-text"> Customer  </span>
										</a>
									</li>

									<li id="productMappingLI" class="menu-item" aria-haspopup="true">
										<a href="productMapping" class="menu-link">
											<i class="icon-xxl la fab la-dropbox mr-4"></i>
											<span class="menu-text"> Map Products </span>
										</a>
									</li>
	
	
									<li id="purchaseOrderViewLI" class="menu-item" aria-haspopup="true">
										<a href="purchaseOrderView" class="menu-link">
											<i class="icon-xxl mr-4 la la-clipboard-check"></i>
											<span class="menu-text"> Purchase Order  </span>
										</a>
									</li>
	
	
									<li id="quotationViewLI" class="menu-item" aria-haspopup="true">
										<a href="quotationView" class="menu-link">
											<i class="icon-xxl mr-4 la la-clipboard-list"></i>
											<span class="menu-text"> Quotation  </span>
										</a>
									</li>
									
									<li id="pcaDataUploadViewLI" class="menu-item" aria-haspopup="true">
										<a href="pcaDataUploadView" class="menu-link">
										<i class="icon-xxl mr-4 flaticon-analytics"></i>
											<span class="menu-text"> PCA Data  </span>
										</a>
									</li>
								</security:authorize>
								
								
								<security:authorize access="hasRole('ROLE_SUPER_ADMIN')">
									<li id="customerDashboardLI" class="menu-item" aria-haspopup="true">
										<a href="wellcomeCustomerPage" class="menu-link">
										<i class="icon-xxl  mr-4  la la-dashboard"></i>	
											<span class="menu-text"> Dashboard</span>
										</a>
									</li>


									<li  id="vendorCreationPageLI" class="menu-item" aria-haspopup="true">
										<a href="vendorCreationPage" class="menu-link">
											<i class="icon-xxl mr-4 la la-clipboard-list"></i>
											<span class="menu-text">  Vendor Creation  </span>
										</a>
									</li>

									<li id="itemCreationPageLI"  class="menu-item" aria-haspopup="true">
										<a href="itemCreationPage" class="menu-link">
											<i class="icon-xxl la fab la-dropbox mr-4"></i>
											<span id = "pharmacyNotification" class="label label-sm label-light-danger label-rounded font-weight-bolder position-absolute top-0 right-0 mt-1 mr-1 d-none" ></span>
											<span class="menu-text"> Item Creation </span>
										</a>
									</li>
	
	
									<li id="orderHistoryLI" class="menu-item" aria-haspopup="true" style="display: none">
										<a href="orderHistory" class="menu-link">
											<i class="icon-xxl mr-4 la la-history"></i>
											<span class="menu-text"> Order History  </span>
										</a>
									</li>
	
									<li id="offersPageLI" class="menu-item" aria-haspopup="true">
										<a href="offersPage" class="menu-link">
										<i class="icon-xxl  mr-4  flaticon2-percentage"></i>
											<span class="menu-text"> Offers  </span>
										</a>
									</li>
									<li id="pricePageLI" class="menu-item" aria-haspopup="true">
										<a href="marketPricePage" class="menu-link">
										<i class="icon-xxl  mr-4 la la-pound-sign"></i>
											<span class="menu-text"> Market Price  </span>
										</a>
									</li>
								</security:authorize>
								
								<security:authorize access="hasRole('ROLE_SUPPLIER')">
								
									<li id="supplierDashboardLI" class="menu-item" aria-haspopup="true">
										<a href="wellcomeSupplierPage" class="menu-link">
											<i class="icon-xxl la la-layer-group mr-4"></i>
											<span class="menu-text">Dashboard</span>
										</a>
									</li>

								<li class="menu-item menu-item-submenu" aria-haspopup="true" data-menu-toggle="hover" id="supplierAsCustMainMenu">
									<a href="javascript:;" class="menu-link menu-toggle">
									<i class="icon-xxl mr-4 la la-user-tie"></i>
<!-- 										<i class="icon-xxl mr-4 la la-history"></i> -->
										<span id = "supplierMainNotification" class="label label-sm label-light-danger label-rounded font-weight-bolder position-absolute top-0 right-0 mt-1 mr-1 d-none" ></span>
										<span class="menu-text">I am a Customer </span>
										<i class="menu-arrow"></i>
									</a>
									<div class="menu-submenu">
										<i class="menu-arrow"></i>
										<ul class="menu-subnav">
											
									<li id="supplierQuotGeneratePageLI" class="menu-item" aria-haspopup="true">
										<a href="supplierQuotGeneratePage" class="menu-link">
											<i class="menu-bullet menu-bullet-line">
														<span></span>
											</i>
											<span class="menu-text"> Quotation  </span>
										</a>
									</li>					
									
								   <li id="supplierPendingOrderLI"  class="menu-item" aria-haspopup="true">
										<a href="supplierPendingOrder" class="menu-link">
											<i class="menu-bullet menu-bullet-line">
														<span></span>
														
													</i>
													<span id = "supplierChatNotification" class="label label-sm label-light-danger label-rounded font-weight-bolder position-absolute top-0 right-0 mt-1 mr-1 d-none" ></span>
											<span class="menu-text"> Order / Order History </span>
										</a>
									</li>	
									
									<li id="supplierOrderHistoryLI" class="menu-item" aria-haspopup="true" style="display: none">
										<a href="supplierOrderHistory" class="menu-link">
											<i class="menu-bullet menu-bullet-line">
											<span></span>
											</i>
											<span class="menu-text"> Order History  </span>
										</a>
									</li>	

								<li id="stockPageLI" class="menu-item" aria-haspopup="true">
									<a href="stockPage" class="menu-link">
									<i class="menu-bullet menu-bullet-line"> <span></span> </i> 
									<span class="menu-text"> Stock Management </span>
								</a>
								</li>


								<li id="customerOffersFromSupplierPageLI" class="menu-item" aria-haspopup="true">
										<a href="customerOffersFromSupplier" class="menu-link">
										<i class="menu-bullet menu-bullet-line">
											<span></span>
											</i>
											<span class="menu-text"> Customer Offers  </span>
										</a>
									</li>	
											
									</ul>
									</div>
								</li>
								<!--end:: menu-item-submenu -->
	
									<!--start:: menu-item-submenu -->
									
									 <li id="supplierTenderPageLI" class="menu-item" aria-haspopup="true">
												<a href="supplierQuotationPage" class="menu-link">
													<i class="icon-xxl mr-4 flaticon-notepad"></i>
													<span id = "supplierQuotationNotification" class="label label-sm label-light-danger label-rounded font-weight-bolder position-absolute top-0 right-0 mt-1 mr-1 d-none" ></span>
													<span class="menu-text">  Quotation  </span>
												</a>
											</li>										
											
												
										<li id="supplierOrderConfirmationLI"  class="menu-item" aria-haspopup="true">
											<a href="supplierOrderConfirmation" class="menu-link">
												<i class="icon-xxl mr-4 flaticon2-delivery-package"></i>
												<span id = "supplierOrderChatNotification" class="label label-sm label-light-danger label-rounded font-weight-bolder position-absolute top-0 right-0 mt-1 mr-1 d-none" ></span>
												<span class="menu-text"> Order / Order History  </span>
											</a>
										</li>
										<li id="supplierOffersPageLI" class="menu-item" aria-haspopup="true">
										<a href="supplierOffersPage" class="menu-link">
										<i class="icon-xxl  mr-4  flaticon2-percentage"></i>
											<span class="menu-text"> Offers  </span>
										</a>
									</li>
										<li id="profileSettingPage"  class="menu-item" aria-haspopup="true" style="display: none">
											<a href="profileSettingPage" class="menu-link">
												<i class="icon-xxl mr-4 flaticon2-group"></i>
												<span class="menu-text"> Representative  </span>
											</a>
										</li>
									
									
									
								<!--end:: menu-item-submenu -->
								
								</security:authorize>
								
								<security:authorize access="hasRole('ROLE_MANUFACTURER')">
									<li id="manufacturerDashboardLI" class="menu-item" aria-haspopup="true">
										<a href="manufacturerWelcomePage" class="menu-link">
											<i class="icon-xxl la la-layer-group mr-4"></i>
											<span class="menu-text">Dashboard</span>
										</a>
									</li>


									<li id="manufacturerTenderPageLI" class="menu-item" aria-haspopup="true">
										<a href="manufacturerQuotationPage" class="menu-link">
											<i class="icon-xxl mr-4 la la-clipboard-list"></i>
											<span id = "manufacturerQuotationNotification" class="label label-sm label-light-danger label-rounded font-weight-bolder position-absolute top-0 right-0 mt-1 mr-1 d-none" ></span>
											<span class="menu-text">  Quotation  </span>
										</a>
									</li>

									<li id="manufacturerOrderConfirmationLI"  class="menu-item" aria-haspopup="true">
										<a href="manufacturerReceivedOrders" class="menu-link">
											<i class="icon-xxl la fab la-dropbox mr-4"></i>
											<span id = "manufacturerOrderNotification" class="label label-sm label-light-danger label-rounded font-weight-bolder position-absolute top-0 right-0 mt-1 mr-1 d-none" ></span>
											<span class="menu-text"> Order  </span>
										</a>
									</li>
									
									
									<li id="supplierOffersPageLI" class="menu-item" aria-haspopup="true">
										<a href="customerOffersFromSupplier" class="menu-link">
										<i class="icon-xxl mr-4  flaticon-list-1"></i>
											<span class="menu-text"> Customer Offers  </span>
										</a>
									</li>
	
								</security:authorize>
								<security:authorize access="hasAnyRole('ROLE_SUPPLIER')">
									<li id="stockPageLI"  class="menu-item" aria-haspopup="true" style="display: none;">
										<a href="stockPage" class="menu-link">
										<i class="icon-xxl flaticon-clipboard mr-4"></i>
<!-- 											<i class="icon-xxl mr-4 la la-user-circle"></i> -->
											<span class="menu-text"> Stock </span>
										</a>
									</li>
								</security:authorize>
								
								<security:authorize access="hasAnyRole('ROLE_MANUFACTURER')">
									<li id="manufacturerStockPageLI"  class="menu-item" aria-haspopup="true">
										<a href="mfrStockPage" class="menu-link">
											<i class="icon-xxl flaticon-clipboard mr-4"></i>
											<span class="menu-text"> Stock </span>
										</a>
									</li>
								</security:authorize>
							</ul>
							<!--end::Menu Nav-->
							<ul class="menu-nav">
								<security:authorize access="hasAnyRole('ROLE_CUSTOMER','ROLE_SUPPLIER','ROLE_PENDING','ROLE_MANUFACTURER')">
									<li id="profileCompanyDetailsPageLI"  class="menu-item" aria-haspopup="true">
										<a href="profileCompanyDetailsPage" class="menu-link">
											<i class="icon-xxl mr-4 la la-user-circle"></i>
											<span class="menu-text"> Profile  </span>
										</a>
									</li>
								</security:authorize>
	
					
									<li class="menu-item" aria-haspopup="true">
										<a href="#" id="kt_quick_notifications_toggle" data-toggle="tooltip" data-placement="right" data-container="body" data-boundary="window" title="" class="menu-link">
											<!-- <i class="icon-xxl mr-4 far fa-bell"></i> -->
											<i class="icon-xl   ml-1 mr-4 fas fa-bell"></i>
											<span class="menu-text"> Notifications </span>
											<span class="label label-sm label-light-success  label-rounded font-weight-bolder position-absolute top-0  mt-2 ml-6 d-none" id="mainNotificationCount"></span>
										</a>
									</li>								

						
									<li class="menu-item  text-danger" aria-haspopup="true" data-menu-toggle="hover">
										<a href="logout" class="menu-link menu-toggle">
											<i class="icon-xxl mr-4 text-danger la la-power-off"></i>
											<span class="menu-text text-danger "> Sign Out </span>
										</a>
									</li>
							</ul>
						</div>
						
						<!--end::Menu Container-->
					</div>
					<!--end::Aside Menu-->
					
					<!--begin::Brand-->
					<div class="brand flex-column-auto" id="kt_brand">
				
						
						<span class="text-muted font-weight-bold mr-2 sidebar_copyright mb-4	"><i class="la la-copyright mt-1"></i>Topia Technologies </span>
						
				
						<!--begin::Toggle-->
						<button class="brand-toggle btn btn-sm px-0 pt-0"  id="kt_aside_toggle">
							<span class="svg-icon svg-icon svg-icon-xl">
								<!--begin::Svg Icon | path:assets/media/svg/icons/Navigation/Angle-double-left.svg-->
								<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
									<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
										<polygon points="0 0 24 0 24 24 0 24" />
										<path d="M5.29288961,6.70710318 C4.90236532,6.31657888 4.90236532,5.68341391 5.29288961,5.29288961 C5.68341391,4.90236532 6.31657888,4.90236532 6.70710318,5.29288961 L12.7071032,11.2928896 C13.0856821,11.6714686 13.0989277,12.281055 12.7371505,12.675721 L7.23715054,18.675721 C6.86395813,19.08284 6.23139076,19.1103429 5.82427177,18.7371505 C5.41715278,18.3639581 5.38964985,17.7313908 5.76284226,17.3242718 L10.6158586,12.0300721 L5.29288961,6.70710318 Z" fill="#000000" fill-rule="nonzero" transform="translate(8.999997, 11.999999) scale(-1, 1) translate(-8.999997, -11.999999)" />
										<path d="M10.7071009,15.7071068 C10.3165766,16.0976311 9.68341162,16.0976311 9.29288733,15.7071068 C8.90236304,15.3165825 8.90236304,14.6834175 9.29288733,14.2928932 L15.2928873,8.29289322 C15.6714663,7.91431428 16.2810527,7.90106866 16.6757187,8.26284586 L22.6757187,13.7628459 C23.0828377,14.1360383 23.1103407,14.7686056 22.7371482,15.1757246 C22.3639558,15.5828436 21.7313885,15.6103465 21.3242695,15.2371541 L16.0300699,10.3841378 L10.7071009,15.7071068 Z" fill="#000000" fill-rule="nonzero" opacity="0.3" transform="translate(15.999997, 11.999999) scale(-1, 1) rotate(-270.000000) translate(-15.999997, -11.999999)" />
									</g>
								</svg>
								<!--end::Svg Icon-->
							</span>
						</button>
						<!--end::Toolbar-->
					</div>
					<!--end::Brand-->
					
				</div>
				<!--end::Aside-->
				
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
				
				
				
				
				
						<!-- begin::Notifications Panel-->
		<div id="kt_quick_notifications" class="offcanvas offcanvas-left p-10">
			<!--begin::Header-->
			<div class="offcanvas-header d-flex align-items-center justify-content-between mb-10">
				<h3 class="font-weight-bold m-0">Notifications
				<small class="text-muted font-size-sm ml-2" id="mainInnerCount"></small></h3>
				<a href="javascript:void(0)" class="btn btn-light btn-hover-primary	" id="kt_quick_notifications_close">
					Close
				</a>
			</div>
			<!--end::Header-->
			<!--begin::Content-->
			
			<div id='manNotificationContent'>
			</div>
			
			<!--end::Content-->
			<div class="" id="clearAllNotificationBtn">
				<a href="javascript:void(0)"	class="btn btn-light-danger btn-hover-danger"	onclick='removeAllNotification();'>Clear</a>
			</div>
		</div>
		<!-- end::Notifications Panel-->
				

	

		


		
    <script>
    $(document).ready(function(){
    	
    	$('#kt_aside_menu_wrapper').click(function(){
    		localStorage.clear();
       	});
    	
    });
    
    function getNotificationFunction(){
//     	debugger;
    	$('#mainNotificationCount').addClass('d-none');
    	$('#pharmacyNotification').addClass('d-none');
    	$('#supplierChatNotification').addClass('d-none');
    	$('#supplierMainNotification').addClass('d-none');
    	$('#supplierChatNotification').addClass('d-none');
    	$('#supplierChatNotificationTab').addClass('d-none');
    	$('#supplierQuotationNotification').addClass('d-none');
    	$('#supplierOrderChatNotification').addClass('d-none');
    	$('#manufacturerQuotationNotification').addClass('d-none');
    	$('#manufacturerOrderNotification').addClass('d-none');
    	$('#clearAllNotificationBtn').addClass('d-none');
    	$.ajax({
			url: "getNotifications",
			type: "POST",
			dataType: 'JSON',
			success: function(data) {
				console.log(data);
				var mainCount = 0;
				if(data.notifications != undefined && data.notifications.length > 0){
// 					alert($('#partyTypeSideBar').val());
					$('#manNotificationContent').empty();
					$('#mainInnerCount').html('');
					$('#mainNotificationCount').html('');
					$('#mainNotificationCount').removeClass('d-none');
					$('#clearAllNotificationBtn').removeClass('d-none');
					var chatCount = 0;
					var quotationCount = 0;
					var orderCount = 0;
					var manCount = 0;
				for(var i =0 ; i< data.notifications.length; i++){
					mainCount += data.notifications[i].notificationCount;
					renderNotification(data.notifications[i].notificationType, data.notifications[i].notificationCount);
					if(data.notifications[i].notificationType =="QUOTATION_NOTIFICATION")
						quotationCount = data.notifications[i].notificationCount;
					else if(data.notifications[i].notificationType =="ORDERS_NOTIFICATION")
						orderCount = data.notifications[i].notificationCount;
					else if(data.notifications[i].notificationType =="CHAT_NOTIFICATION")
						chatCount = data.notifications[i].notificationCount;
					else if(data.notifications[i].notificationType =="MANUFACTURER_CHAT_NOTIFICATION")
						manCount = data.notifications[i].notificationCount;
				}
				
				var partyType = $('#partyTypeSideBar').val();
				
				if( partyType == 'PHARMACY'){
					
					if(orderCount > 0 || chatCount > 0){
						$('#pharmacyNotification').removeClass('d-none');
						$('#pharmacyNotification').html('');
						$('#pharmacyNotification').html(parseInt(orderCount)+parseInt(chatCount));
					}
					
					if(chatCount > 0){
						$('#customerChatNotificationTab').removeClass('d-none');
						$('#customerChatNotificationTab').html('');
						$('#customerChatNotificationTab').html(chatCount);
					}
					
				}else if( partyType == 'SUPPLIER'){
// 					if(chatCount > 0)
	
					if(manCount > 0){
						$('#supplierMainNotification').removeClass('d-none');
						$('#supplierMainNotification').html('');
						$('#supplierMainNotification').html(manCount);
						$('#supplierChatNotification').removeClass('d-none');
						$('#supplierChatNotification').html('');
						$('#supplierChatNotification').html(manCount);
						$('#supplierChatNotificationTab').removeClass('d-none');
						$('#supplierChatNotificationTab').html('');
						$('#supplierChatNotificationTab').html(manCount);
					}
					if(quotationCount > 0 ){
						$('#supplierQuotationNotification').removeClass('d-none');
						$('#supplierQuotationNotification').html('');
						$('#supplierQuotationNotification').html(quotationCount);
					}
					if(orderCount > 0 || chatCount > 0){
						$('#supplierOrderChatNotification').removeClass('d-none');
						$('#supplierOrderChatNotification').html('');
						$('#supplierOrderChatNotification').html(parseInt(orderCount)+parseInt(chatCount));
					}
						
				}else if(partyType == 'MANUFACTURER'){
					
					if(quotationCount > 0){
						$('#manufacturerQuotationNotification').removeClass('d-none');
						$('#manufacturerQuotationNotification').html('');
						$('#manufacturerQuotationNotification').html(quotationCount);
					
					}
					if(orderCount > 0 || chatCount > 0){
						$('#manufacturerOrderNotification').removeClass('d-none');
						$('#manufacturerOrderNotification').html('');
						$('#manufacturerOrderNotification').html(parseInt(orderCount)+parseInt(chatCount));
					}
				}
				
				}
				if(mainCount>0){
				$('#mainNotificationCount').html(mainCount);
				$('#mainInnerCount').html(mainCount+' New');
				}
				else{
					$('#mainNotificationCount').addClass('d-none');
				}
			},
			error: function() {
				$("#preLoader").hide();
			}
		});
    }
    function renderNotification(notificationType, count){
    	
		var test;

    	var notificationRenderer = '<div class="offcanvas-content pr-5 mr-n5 d-flex justify-content-between hover-2">'+
    										'<a href="javascript:void(0)" class="navi-item d-flex cursor-default">'+
//     												'<div class="navi-link rounded hover-2">'+
    															'<div class="symbol symbol-50 symbol-circle mr-3">'+
    																		'<div class="symbol-label">'+
    																				'<i class="flaticon-bell text-success icon-lg"></i>'+
    																		'</div>'+
    															'</div>'+
    															'<div class="navi-text z-index-1">';
    															if(notificationType == 'CHAT_NOTIFICATION'){
    																test = '<div class="font-weight-bold font-size-lg">'+count+' new messages.</div>';
    																test += '<div class="text-muted">Order related messages.</div>';
    															}else if(notificationType == 'ORDERS_NOTIFICATION'){
    																test = '<div class="font-weight-bold font-size-lg">'+count+' new orders received.</div>';
    																test += '<div class="text-muted">Order received.</div>';
    															}else if(notificationType == 'QUOTATION_NOTIFICATION'){
    																test = '<div class="font-weight-bold font-size-lg">'+count+' new quotations submitted by customers.</div>';
    																test += '<div class="text-muted">New Quotations received.</div>';
    															}
    															else if(notificationType == 'MANUFACTURER_CHAT_NOTIFICATION'){
    																test = '<div class="font-weight-bold font-size-lg">'+count+' new Messages from manufacturers.</div>';
    																test += '<div class="text-muted">New Quotations received.</div>';
    															}
    															notificationRenderer += test;
    															notificationRenderer +=		'</div>';
    															notificationRenderer +=	'<div class ="navi-text mt-3 z-index-1">'+
    														'<a href="javascript:void(0)"	class="btn btn-xs btn-icon btn-light-danger btn-hover-danger"	onclick=removeMainNotification("'+notificationType+'");>'+
    																'<i class="ki ki-close icon-xs text-muted"></i>'+
    														'</a>'+
    												'</div>'+
//     												'</div>'+
    										'</a>'+
    										'</div>'+
    															'</div>'+
    															'<hr>';
    															$('#manNotificationContent').append(notificationRenderer);										
    															
    }
    
    function removeAllNotification(){
//    	debugger;
//    	$("#supplierFullAddress").html('');
//     $("#preLoader").show();

    	$.ajax({
    		type: "POST",
    		url: 'removeAllNotification',
    		dataType: 'JSON',
    		success:function(data){
    		getNotificationFunction();
    		$('#clearAllNotificationBtn').hide();
    		}
    		
    	})
//     	$("#preLoader").hide();
    }
    
function removeMainNotification(notificationType){
//    	debugger;
//    	$("#supplierFullAddress").html('');
    $("#preLoader").show();
    	$.ajax({
    		type: "POST",
    		url: 'removeNotification',
    		dataType: 'JSON',
    		async:false,
    		data: {
    			notificationType: notificationType
    		},
    		success:function(data){
    		getNotificationFunction();
    		}
    		
    	})
    	$("#preLoader").hide();
    }
    
function removeNotification(notificationType){
	$.ajax({
		type: "POST",
		url: 'removeNotification',
		dataType: 'JSON',
		async:false,
		data: {
			notificationType: notificationType
		},
		success:function(data){
// 		getNotificationFunction();
		}
		
	})
}
    </script>