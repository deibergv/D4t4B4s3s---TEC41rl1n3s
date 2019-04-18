//jshint strict: false
module.exports = function(config) {
  config.set({

    basePath: './app',

    files: [
      'lib/angular/angular.js',
      'lib/angular-animate/angular-animate.js',
      'lib/angular-resource/angular-resource.js',
      'lib/angular-route/angular-route.js',
      'lib/angular-touch/angular-touch.js',
      '../node_modules/angular-mocks/angular-mocks.js',
      'core/*.js',
      'core/**/*.js',
      'airport/*.js',
      'airport/**/*.js',
      'client/*.js',
      'client/**/*.js'
      // '*!(.module|.spec).js',
      // '**/*.module.js',
      // '!(lib)/**/*!(.module|.spec).js',
      // '**/*.spec.js'
    ],

    autoWatch: true,

    frameworks: ['jasmine'],

    browsers: ['Chrome', 'Firefox'],

    plugins: [
      'karma-chrome-launcher',
      'karma-firefox-launcher',
      'karma-jasmine'
    ]

  });
};
