/**
 * Widget Directive
 */

'use strict';

angular
    .module('core.directives')
    .directive('rdWidget', function rdWidget() {
        var directive = {
            transclude: true,
            template: '<div class="widget" ng-transclude></div>',
            restrict: 'EA'
        };
        return directive;
    
        function link(scope, element, attrs) {
            /* */
        }
    });