const primary = '#6993FF';
const success = '#1BC5BD';
const info = '#8950FC';
const warning = '#FFA800';
const danger = '#F64E60';

$(document).ready(function(){
//	getDeliveryAddress();
	loadCustomerChartData();
});


function loadCustomerChartData(){
	$.ajax({
			url: "getCustomerDashboardChartData",
			type: "POST",
			dataType: 'JSON',
			contentType: 'application/json',
			success: function(data) {
				getCustomerPurchasedAndSavingChart(data.purchaseArr,data.savingArr,data.monthArray);
				getCustomerQuotatedAndOrderedChart(data.quotatedArr,data.orderedArr,data.monthArray);
				orderStatusPieChart(data.statusArr);
				getQuotationList();
			},
			error: function() {
				$("#preLoader").hide();
			}
		});
		
}

function getCustomerPurchasedAndSavingChart(purchaseArr,savingArr,monthArray){
	const apexChart = "#CustomerPurchaseAndSavingChart";
				var options = {
					series: [{
						name: 'Purchased',
						type: 'column',
						data: purchaseArr,
					}, {
						name: 'Saving',
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
								text: "Purchased (thousand)",
								style: {
									color: primary,
								}
							},
							tooltip: {
								enabled: true
							}
						},
						{
							seriesName: 'Saving',
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
								text: "Saving (thousand)",
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


//function loadCustomerCount(){
//	$.ajax({
//			url: "getCustomerQuatedAndOrderCount",
////			data: JSON.stringify(orderLines),
//			type: "POST",
//			dataType: 'JSON',
//			contentType: 'application/json',
//			success: function(data) {
//				$("#preLoader").hide();
//				
//			},
//			error: function() {
//				$("#preLoader").hide();
//			}
//		});
//		
//}

function getCustomerQuotatedAndOrderedChart(quotatedArr,orderedArr,monthArray){
	const apexChart = "#CustomerQuatedAndOrderChart";
				var options = {
					series: [{
						name: 'Quoted Lines',
						type: 'column',
						data: quotatedArr
					}, {
						name: 'Ordered Lines',
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
						width: [1, 1]
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
								text: "Quoted Lines(Nos)",
								style: {
									color: info,
								}
							},
							tooltip: {
								enabled: true
							}
						},
						{
							seriesName: 'Ordered Lines',
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
								text: "Ordered Lines(Nos)",
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
	const apexChart = "#CustomerOrderStatusChart";
		var options = {
			series: statusList,
			chart: {
				width: 450,
				type: 'pie',
			},
			labels: ['Open', 'Confirmed', 'PartiallyConfirmed', 'Closed'],
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
			colors: [primary, success, warning, danger]
		};

		var chart = new ApexCharts(document.querySelector(apexChart), options);
		chart.render();
}


function getLastSixMonthName(){
	var monthName = ['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'];
	
	var monthNo = new Date().getMonth();
	var year = new Date().getFullYear();
	
	var lastSixMonth = [];
	
	for(var i = 0;i <= 5; i++){
		lastSixMonth.push(monthName[new Date().getMonth() - i]);
	}
	
	console.log(lastSixMonth);
}
function pad2(n) {
  return (n < 10 ? '0' : '') + n;
}
function getQuotationList(){

//	if($("#srchDateType").val() != '' && $("#srchStartEndDate").val() == ''){
//		toastr.error("Kindly select the date");
//		return;
//	}
//	if($("#srchDateType").val() == '' && $("#srchStartEndDate").val() != ''){
//		toastr.error("Kindly select the date type");
//		return;
//	}
	
	var date = new Date();
	var month = pad2(date.getMonth()+1);//months (0-11)
	var day = pad2(date.getDate());//day (1-31)
	var year= date.getFullYear();
	
	var formattedDate =  year+"-"+month+"-"+day;

	$('#quotationDataTable').DataTable({
		destroy: true,
		ordering: false,
		scrollX: true,
		searching: false,
		scrollCollapse: true,
		processing: true,
		serverSide: true,
		ajax: {
			url : 'quotationDataTable?&dateType=OPENFINALDATE' +
					  '&startEndDate=' + formattedDate+
					  '&status=Open'+
					  '&customerId=' + $("#custId").val(),
			type: 'POST',
			// parameters for custom backend script demo
			columnsDef: [
				'quotationId', 'representative',
				'createdDate', 'finalUploadDate', 'status'],
		},
		columns: [

			{title: 'Quotation ID', data: 'quotationId' },
			{title: 'Representative', data: 'representative' },
			{title: 'Created Date', data: 'createdDate' },
			{title: 'Final Date', data: 'finalUploadDate' },
			{title: 'Delivery Date', data: 'deliveryDate' },
			{title: 'Status', data: 'status',className: 'dt-center', render: statusFormatter },
			{title: 'Action', data: null,className: 'dt-center', render: quotationEditFormatter },
		],
		fixedColumns: {
			rightColumns: 0,
			leftColumns: 0
		}
	});
	
//	$('#quotationSearchForm')[0].reset();
}

function quotationEditFormatter(cellvalue, options, rowObject) {
	return "<a onclick='getQuotationData(\"" + rowObject.quotationId + "\");' title='Edit' href='javascript:void(0)'class='btn btn-sm btn-bg-white btn-clean btn-icon-warning  btn-hover-warning  btn-icon mr-2 my-1 my-lg-0' > <i class='la la-pencil'></i></a>";
}

function statusFormatter(cellvalue, options, rowObject) {
	if (cellvalue == 'Open')
		return '<span class="label label-lg label-light-warning label-inline">' + cellvalue + '</span>';
}

function getQuotationData(quotationId) {
	localStorage.setItem("divFlag", true);
	localStorage.setItem("quotationId", quotationId);
	window.location.href = "customerTenderPage";
}