'use strict';

angular.
  module('root').
  config(['$routeProvider',
    function config($routeProvider) {
      $routeProvider.
        when('/tecadmin/home', {
          template: '<home></home>'
        }).
        // when('/tecairport', {
        //   template: '<airport></airport>',
        //   css: 'airport/airport.css'
        // }).
        otherwise('/tecadmin/home');
    }
]);