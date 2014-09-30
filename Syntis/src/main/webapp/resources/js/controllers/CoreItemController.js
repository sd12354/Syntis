'use strict';
function CoreItemController($scope, $http) {
	console.log('----------itemcontroller.js----------');
	    $scope.fetchItemList = function() {
	        $http.get('getall').success(function(itemList){
	            $scope.items = itemList;
	        });
	    };
	    $scope.fetchItemList();
	};
