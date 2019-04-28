'use strict';

angular.module('root',[
    'ngRoute',
    'ngAnimate',
    'core',
    'home',
    'core.version'
    // 'airport',
    // 'client'
])
.controller('MainController', ['$scope', function ($scope) {
    $scope.loggedIn = false;
}]);