'use strict';

angular.
  module('version', []).
  directive('appVersion', ['ver', function(ver) {
    return function(scope, elm, attrs) {
      elm.text(ver);
    };
}]);
