'use strict';

describe('appVersion', function() {
  beforeEach(module('core.version'));

  describe('appVersion directive', function() {
    it('should print current version', function() {
      // module(function($provide) {
      //   $provide.value('version', 'TEST_VER');
      // });
      inject(function($compile, $rootScope) {
        var element = $compile('<span app-version></span>')($rootScope);
        expect(element.text()).toEqual('0.1');
      });
    });
  });
});
