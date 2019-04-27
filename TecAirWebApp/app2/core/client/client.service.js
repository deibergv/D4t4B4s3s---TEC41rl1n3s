'use strict';

angular.
  module('core.client').
  factory('Client', ['$resource',
    function($resource) {
      return $resource('http://localhost:9090/GetCliente', {}, {
        query: {
          method: 'GET',
          isArray: true
        }
      });
    }
  ]);