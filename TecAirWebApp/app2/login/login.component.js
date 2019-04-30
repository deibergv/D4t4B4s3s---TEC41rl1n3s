'use strict';

angular.
    module('login').
    component('login', {
        templateUrl: 'login/login.template.html',
        controller: ['$scope','$state','User',
          function LoginController($scope, $state, User){
  
            $scope.login = function(){
              User.login().then(function(){
                console.log('login success, sending to home');
                $state.go('main.home');
              });
            };
          }
        ]
      });