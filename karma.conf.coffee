# Karma configuration

module.exports = (config) ->
  config.set
    # base path that will be used to resolve all patterns (eg. files, exclude)
    basePath: '',

    # frameworks to use
    # available frameworks: https://npmjs.org/browse/keyword/karma-adapter
    frameworks: ['mocha'],

    # list of files / patterns to load in the browser
    files: [
      'node_modules/power-assert/build/power-assert.js'
      'src/**/*.coffee'
      'test/**/*_test.coffee'
    ],

    # list of files to exclude
    exclude: [],

    # preprocess matching files before serving them to the browser
   # available preprocessors: https://npmjs.org/browse/keyword/karma-preprocessor
    preprocessors:
      '**/*.coffee': ['coffee']
      'test/**/*_test.coffee': ['espower']

    espowerPreprocessor:
#      options:
#        # emit espowerified code.
#        # default: false (in-memory)
#        emitActualCode: true

      transformPath: (path) ->
        path.replace /\.coffee$/, '.espowered.js'

    # test results reporter to use
    # possible values: 'dots', 'progress'
    # available reporters: https://npmjs.org/browse/keyword/karma-reporter
    reporters: ['progress'],

    # web server port
    port: 9876,

    # enable / disable colors in the output (reporters and logs)
    colors: true,

    # level of logging
    # possible values: config.LOG_DISABLE || config.LOG_ERROR || config.LOG_WARN || config.LOG_INFO || config.LOG_DEBUG
    logLevel: config.LOG_INFO,

    # enable / disable watching file and executing tests whenever any file changes
    autoWatch: true,

    # start these browsers
    # available browser launchers: https://npmjs.org/browse/keyword/karma-launcher
    browsers: [
#      'Chrome'
      'PhantomJS'
    ],

    # Continuous Integration mode
    # if true, Karma captures browsers, runs the tests and exits
    singleRun: false
