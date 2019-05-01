'use strict';

angular.
  module('root').
  config(['$stateProvider', '$urlRouterProvider', '$locationProvider',
    function($stateProvider, $urlRouterProvider) {

        $urlRouterProvider.otherwise('/tecairlines/home');
        // $urlRouterProvider.when('/tecairlines/home', '/tecairlines/home/dashboard');

        // Application routes
        $stateProvider
            // .state('main', {
            //     'abstract': true,
            //     resolve: {
            //         user: function(User){
            //             console.log('checking authentication');
            //             return User.checkAuthentication();
            //         }
            //     }
            // })
            .state('home', {
                url: '/tecairlines/home',
                template: '<home></home>'
            })
            .state('home.registerLogin', {
                url: '/tecairlines/register-login',
                template: '<register-login></register-login>'
            });
            // .state('dashboard', {
            //     parent: 'main.home',
            //     url: '/dashboard',
            //     template: '<dashboard></dashboard>'
            // })
            // .state('flights', {
            //     parent: 'main.home',
            //     url: '/flights',
            //     template: '<flights></flights>'
            // }).state('newflight', {
            //     parent: 'main.home',
            //     url: '/newflight',
            //     template: '<new-flight></new-flight>'
            // }).state('users', {
            //     parent: 'main.home',
            //     url: '/users',
            //     template: '<users></users>'
            // }).state('reservations', {
            //     parent: 'main.home',
            //     url: '/reservations',
            //     template: '<reservations></reservations>'
            // });
    }]);