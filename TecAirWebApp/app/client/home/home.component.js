'use strict';

// Declare app level module which depends on views, and core components
angular.
  module('client.home').
  component('client.home', {
    templateUrl: 'client/home/home.template.html',
    controller: [
      function HomeClientController() {
        this.name = 'hola';
      }
    ]
  });