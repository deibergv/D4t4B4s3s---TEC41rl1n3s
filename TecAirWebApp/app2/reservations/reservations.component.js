'use strict';

angular.
  module('reservations').
  component('reservations', {
    templateUrl: 'reservations/reservations.template.html',
    controller: ['$scope','$state', function ReservationsController($scope,$state){
      $scope.$state = $state;
    }]
  });