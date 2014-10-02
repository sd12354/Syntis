'use strict';
function CoreItemController($scope, $http) {
	$scope.fetchItemList = function() {
		$http.get('getItems').success(function(itemList) {
			$scope.items = itemList;
		});
	};
	$scope.fetchItemList();
	// draw charts
	$scope.charts = function(chartType) {
		$http.post('dataCharts/' + chartType).success(function(data) {
			if (chartType != 'line') {
				var chart = c3.generate({
					data : {
						bindto : '#chart',
						columns : data,
						type : chartType,
						onclick : function(d, i) {
							$('#description').remove();
						 $('#chart').prepend('<span id="description" style="color:red;"><b>value: '+d.value+'</b></span>');
						}
					},
					donut : {
						title : "inner"
					}
				});
			} else if (chartType === 'line') {
				var chart = c3.generate({
					bindto : '#chart',
					data : {
						json : data,
						keys : {
							x : 'itemTypeName', // it's possible to specify 'x' when category axis
							value : [ 'count' ],
						}
					},
					axis : {
						x : {
							type : 'category'
						}
					}
				});
			}
		});
	}

};
