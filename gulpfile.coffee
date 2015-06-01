g = require 'gulp'
mocha = require 'gulp-mocha'

g.task 'test', ->
  require 'espower-coffee/guess'
  g.src 'test/**/*_test.coffee'
    .pipe mocha()