'use strict';

angular.
  module('root').
  config(['$stateProvider', '$urlRouterProvider', '$locationProvider',
    function($stateProvider, $urlRouterProvider) {

        $urlRouterProvider.otherwise('/tecadmin/home');
        $urlRouterProvider.when('/tecadmin/home', '/tecadmin/home/dashboard');

        // Application routes
        $stateProvider
            .state('main', {
                'abstract': true,
                resolve: {
                    user: function(User){
                        console.log('checking authentication');
                        return User.checkAuthentication();
                    }
                }
            })
            .state('main.home', {
                url: '/tecadmin/home',
                template: '<home></home>'
            })
            .state('login', {
                url: '/tecadmin/login',
                template: '<login></login>'
            })
            .state('dashboard', {
                parent: 'main.home',
                url: '/dashboard',
                template: '<dashboard></dashboard>'
            })
            .state('flights', {
                parent: 'main.home',
                url: '/flights',
                template: '<flights></flights>'
            }).state('newflight', {
                parent: 'main.home',
                url: '/newflight',
                template: '<new-flight></new-flight>'
            });
    }]);