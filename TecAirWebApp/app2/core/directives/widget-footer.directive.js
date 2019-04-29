/**
 * Widget Footer Directive
 */

'use strict';

angular
    .module('core.directives')
    .directive('rdWidgetFooter', function rdWidgetFooter() {
        var directive = {
            requires: '^rdWidget',
            transclude: true,
            template: '<div class="widget-footer" ng-transclude></div>',
            restrict: 'E'
        };
        return directive;
    });