g = require 'gulp'
karma = require('karma').server

g.task 'test', ->
  karma.start
    configFile: "#{__dirname}/karma.conf.coffee",
    singleRun: true
