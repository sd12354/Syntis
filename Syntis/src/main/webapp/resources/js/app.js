'use strict';
var Syntis = {};
var App = angular.module('Syntis',['ngRoute']); 
App.config(['$routeProvider', function ($routeProvider) {
	console.log('----------app.js----------');
    $routeProvider.when('/welcome', {
        templateUrl: 'views/index.jsp',
        controller: IndexController
    }).when('/coreitem', {
        templateUrl: 'views/item.jsp',
        controller: CoreItemController
    });
	
//    $routeProvider.otherwise({redirectTo: '/'});// 會在url+『#/』
}]);
