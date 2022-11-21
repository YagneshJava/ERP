
$(document).ready(function() {

	$(".menu-item").removeClass('menu-item-here');
	$("#pricePageLI").addClass('menu-item-here');

	loadMarketPriceList();
	
	$('#srchMain').keyup(function(event) {
		var quotationDataTable = $('#marketPriceDataTable').DataTable();
		quotationDataTable.ajax.url('marketPriceList?searchQry=' + $("#srchMain").val().trim() ).load();
	});
});

function loadMarketPriceList(){

$('#marketPriceDataTable').DataTable({
//		searching: false,
		ordering: false,
//		destroy: true,
		scrollY: true,
		scrollX: true,
		scrollCollapse: true,
		processing: true,
		serverSide: true,
		searching: false,
		ajax: {
			url: 'marketPriceList',
			type: 'POST',
			columnsDef: [
				'pipcode', 'description', 
				'price'],
		},
		columns: [
			{ data: 'pipcode' },
			{ data: 'description' },
			{ data: 'price' ,className: 'dt-center'},
		],
		fixedColumns: {
			rightColumns: 0,
			leftColumns: 0
		}
	});
}