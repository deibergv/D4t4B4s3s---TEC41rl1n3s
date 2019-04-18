'use strict';

angular.
  module('version').
  filter('interpolate', ['ver', function(ver) {
    return function(text) {
      return String(text).replace(/\%VERSION\%/mg, ver);
    };
  }]);
