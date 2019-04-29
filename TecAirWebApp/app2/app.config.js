'use strict';

angular.
  module('root').
  config(['$stateProvider', '$urlRouterProvider',
    function($stateProvider, $urlRouterProvider) {

        $urlRouterProvider.when('/tecadmin/home', '/tecadmin/home/dashboard');
        // For unmatched routes
        $urlRouterProvider.otherwise('/tecadmin/login');

        // Application routes
        $stateProvider
            .state('home', {
                url: '/tecadmin/home',
                template: '<home></home>'
            })
            .state('login', {
                url: '/tecadmin/login',
                template: '<login></login>'
            })
            .state('home.dashboard', {
                url: '/dashboard',
                template: '<dashboard></dashboard>'
            });
    }]);