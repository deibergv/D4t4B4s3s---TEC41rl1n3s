'use strict';

// Declare app level module which depends on views, and core components
angular.
  module('home').
  component('home', {
    templateUrl: 'home/home.template.html',
    controller: [
      function HomeController() {
        this.name = 'hola';
      }
    ]
  });