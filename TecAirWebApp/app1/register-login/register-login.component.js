'use strict';

angular.
    module('registerLogin').
    component('registerLogin', {
      templateUrl: 'register-login/register-login.template.html',
      controller: ['$scope','$state', function UsersController($scope,$state){
        $scope.$state = $state;
      }]
    });