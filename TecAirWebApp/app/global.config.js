'use strict';

angular.
  module('root').
  config(['$routeProvider',
    function config($routeProvider) {
      $routeProvider.
        when('/tecairlines', {
          template: '<client></client>',
          css: 'client/client.css'
        }).
        when('/tecairport', {
          template: '<airport></airport>',
          css: 'airport/airport.css'
        }).
        otherwise('/tecairlines');
    }
]);