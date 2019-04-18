'use strict';

describe('interpolate', function() {
  beforeEach(module('version'));

  it('should replace VERSION', inject(function(interpolateFilter) {
    expect(interpolateFilter('before %VERSION% after')).toEqual('before 0.1 after');
  }));
});
