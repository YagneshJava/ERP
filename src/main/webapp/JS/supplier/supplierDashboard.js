const primary = '#6993FF';
const success = '#1BC5BD';
const info = '#8950FC';
const warning = '#FFA800';
const danger = '#F64E60';

$(document).ready(function(){
	
	$(".menu-item").removeClass('menu-item-here');
	$("#supplierDashboardLI").addClass('menu-item-here');
	loadCustomerChartData();
	getDashboardDeliveryAddress();
	getSupplierQTData();
	
});


function loadCustomerChartData(){
	$.ajax({
			url: "getSupplierDashboardChartData",
			type: "POST",
			dataType: 'JSON',
			contentType: 'application/json',
			success: function(data) {
				getSupplierPurchasedAndSavingChart(data.purchaseArr,data.savingArr,data.monthArray);
				getSuppierQuotatedAndOrderedChart(data.quotatedArr,data.orderedArr,data.monthArray);
				orderStatusPieChart(data.statusArr);
			},
			error: function() {
				$("#preLoader").hide();
			}
		});
		
}

function getSupplierPurchasedAndSavingChart(purchaseArr,savingArr,monthArray){
	const apexChart = "#SupplierPurchaseAndSavingChart";
				var options = {
					series: [{
						name: 'Ordered',
						type: 'column',
						data: purchaseArr,
					}, {
						name: 'Won',
						type: 'column',
						data: savingArr
					}],
					chart: {
						height: 350,
						type: 'line',
						stacked: false
					},
					dataLabels: {
						enabled: false
					},
					stroke: {
						width: [1, 1, 4]
					},
					xaxis: {
						categories: monthArray,
					},
					yaxis: [
						{
							axisTicks: {
								show: true,
							},
							axisBorder: {
								show: true,
								color: primary
							},
							labels: {
								style: {
									colors: primary,
								}
							},
							title: {
								text: "Ordered (thousand)",
								style: {
									color: primary,
								}
							},
							tooltip: {
								enabled: true
							}
						},
						{
							seriesName: 'Won',
							opposite: true,
							axisTicks: {
								show: true,
							},
							axisBorder: {
								show: true,
								color: success
							},
							labels: {
								style: {
									colors: success,
								}
							},
							title: {
								text: "Won (thousand)",
								style: {
									color: success,
								}
							},
						},
					],
					tooltip: {
						fixed: {
							enabled: true,
							position: 'topLeft', // topRight, topLeft, bottomRight, bottomLeft
							offsetY: 30,
							offsetX: 60
						},
					},
					legend: {
						horizontalAlign: 'left',
						offsetX: 40
					}
				};
		
				var chart = new ApexCharts(document.querySelector(apexChart), options);
				chart.render();
}


function getSuppierQuotatedAndOrderedChart(quotatedArr,orderedArr,monthArray){
	const apexChart = "#SupplierQuatedAndOrderChart";
				var options = {
					series: [{
						name: 'Quoted Lines',
						type: 'column',
						data: quotatedArr
					}, {
						name: 'Won Lines',
						type: 'column',
						data: orderedArr
					}],
					chart: {
						height: 350,
						type: 'line',
						stacked: false
					},
					dataLabels: {
						enabled: false
					},
					colors: [info, warning],
					stroke: {
						width: [1, 1, 4]
					},
					xaxis: {
						categories: monthArray,
					},
					yaxis: [
						{
							axisTicks: {
								show: true,
							},
							axisBorder: {
								show: true,
								color: info
							},
							labels: {
								style: {
									colors: info,
								}
							},
							title: {
								text: "Quoted Lines (Nos)",
								style: {
									color: info,
								}
							},
							tooltip: {
								enabled: true
							}
						},
						{
							seriesName: 'Won Lines',
							opposite: true,
							axisTicks: {
								show: true,
							},
							axisBorder: {
								show: true,
								color: warning
							},
							labels: {
								style: {
									colors: warning,
								}
							},
							title: {
								text: "Won Lines (Nos)",
								style: {
									color: warning,
								}
							},
						},
						
					],
					tooltip: {
						fixed: {
							enabled: true,
							position: 'topLeft', // topRight, topLeft, bottomRight, bottomLeft
							offsetY: 30,
							offsetX: 60
						},
					},
					legend: {
						horizontalAlign: 'left',
						offsetX: 40
					}
				};
		
				var chart = new ApexCharts(document.querySelector(apexChart), options);
				chart.render();
}

function orderStatusPieChart(statusList){
	const apexChart = "#SupplierOrderStatusChart";
		var options = {
			series: statusList,
			chart: {
				width: 450,
				type: 'pie',
			},
			labels: ['Open', 'Closed'],
			responsive: [{
				breakpoint: 480,
				options: {
					chart: {
						width: '100%'
					},
					legend: {
						position: 'bottom'
					}
				}
			}],
			colors: [primary, danger]
		};

		var chart = new ApexCharts(document.querySelector(apexChart), options);
		chart.render();
}




function getSupplierQTData() {

	$('#quotationHeadDataTable').DataTable({
		ordering: false,
		destroy: true,
		searching: false,
		scrollY: true,
		//		scrollX: true,
		scrollCollapse: true,
		processing: true,
		serverSide: true,
		ajax: {

			url: 'qoutationDataForSupplierTable?status=' + 'New' +
				'&supplierId=' + $('#supplierId').val()+
				'&addressId=' + $("#dashBoardAddressId").val(),
			type: 'POST',
			// parameters for custom backend script demo
			columnsDef: ['quotationId', 'createdDate', 'finalUploadDate', 'deliveryDate', 'Status', ''],
		},
		columns: [
			{title: 'Quotation ID', data: 'quotationId' },
			{title: 'Created Date', data: 'createdDate' },
			{title: 'Final Date', data: 'finalUploadDate' },
			{title: 'Delivery Date', data: 'deliveryDate' },
			//			{ data: 'status'},
			{title: 'Status', data: 'status', className: 'dt-center', render: changeValueFormatter },
			{title: 'Action', data: null, className: 'dt-center', render: quotationEditFormatter },
		],
		fixedColumns: {
			rightColumns: 1,
			leftColumns: 0
		}
	});

}

function changeValueFormatter(cellvalue, options, rowObject) {
	return '<span class="label label-lg label-light-danger label-inline">New</span>';
}


function quotationEditFormatter(cellvalue, options, rowObject) {
	return "<center><a onclick='getQuotationData(\"" + rowObject.quotationId + "\",\""+$("#dashBoardAddressId").val()+ "\");' title='Edit' href='javascript:void(0)' class = 'btn btn-sm btn-bg-white btn-clean btn-icon-warning  btn-hover-warning  btn-icon mr-1 my-1 my-lg-0'><i class='la la-pencil'></i></a></center>";
}


function getQuotationData(quotationId,addressId){
	localStorage.setItem("supplierDivFlag", true);
	localStorage.setItem("supplierQuotationId",quotationId);
	localStorage.setItem("supplierAddressId",addressId)
	 window.location.href = "supplierQuotationPage";
}

function getDashboardDeliveryAddress(){
	$.ajax({
		type: "POST",
		async:false,
		url: 'getDeliveryAddress',
		dataType: 'JSON',
		data: {
			customerId: $('#supplierId').val()
		},
		success:function(data){
			for (var i = 0; i < data.length ; i++) {
				if (i == 0) {
					$("#dashBoardAddressId").val(data[i].addressId);
			}
		}
		}
	});
}
