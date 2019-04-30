'use strict';

angular.
  module('flights').
  component('flights', {
    templateUrl: 'flights/flights.template.html',
    controller: ['$scope','$state', function FlightsController($scope,$state){
      $scope.$state = $state;
    }]
  });