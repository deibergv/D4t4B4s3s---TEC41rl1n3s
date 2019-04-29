'use strict';

angular.
    module('login').
    component('login', {
        templateUrl: 'login/login.template.html',
        controller: [
          function LoginController($scope, $location) {

            this.submit = function() {
              $location.path('/tecadmin/home');
              return false;
            };
          }
        ]
      });