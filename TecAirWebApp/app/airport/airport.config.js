'use strict';

// Declare app level module which depends on views, and core components
angular.
  module('airport').
  config(['$locationProvider', '$routeProvider', 
    function($locationProvider, $routeProvider) {
      $locationProvider.hashPrefix('!');
      // $routeProvider.otherwise({redirectTo: '/view1'});
  }]);
