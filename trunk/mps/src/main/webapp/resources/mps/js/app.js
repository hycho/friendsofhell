var mpsApp = angular.module('mpsApp', ['ngResource', 'ngRoute']);

mpsApp.config(function($routeProvider, $locationProvider) {
	$locationProvider.html5Mode({
		enabled: true,
		requireBase: false
	});
	
	$routeProvider.when(window.mps.contextPath + '/album/list', {
		templateUrl: window.mps.contextPath + '/album/list'
	});
	
	$routeProvider.otherwise({
		//templateUrl: window.mps.contextPath + '/dashboard/main'
		templateUrl: window.mps.contextPath + '/album/list'
	});
});


mpsApp.controller('mpsCtrl', ['$scope', '$http', '$location', function($scope, $http, $location) {
	
}]);