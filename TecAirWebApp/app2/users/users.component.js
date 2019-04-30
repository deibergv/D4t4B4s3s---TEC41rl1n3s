'use strict';

angular.
  module('users').
  component('users', {
    templateUrl: 'users/users.template.html',
    controller: ['$scope','$state', function UsersController($scope,$state){
      $scope.$state = $state;
    }]
  });