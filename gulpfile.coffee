g = require 'gulp'
browserSync = require 'browser-sync'
karma = require('karma').server
$ = require('gulp-load-plugins')()

handleError = (errors) ->
  console.log "Error!", errors.message

g.task 'sass', ->
  $.rubySass('src/styles', {
    style: 'expanded'
  })
  .on 'error', handleError
  .pipe g.dest 'dist/styles'

g.task 'coffee', ->
  g.src 'src/scripts/**/*.coffee'
  .pipe $.coffee
      bare: true
  .on('error', handleError)
  .pipe g.dest 'dist/scripts'

g.task 'jade', ->
  g.src 'src/**/*.jade'
  .pipe $.jade {
    pretty: true
  }
  .on('error', handleError)
  .pipe g.dest "dist"

g.task 'test', ->
  karma.start
    configFile: "#{__dirname}/karma.conf.coffee",
    singleRun: true

g.task 'server', ['sass', 'coffee', 'jade'], ->
  browserSync.init
    server:
      baseDir: ["dist", "src"]
      routes:
        "/bower_components": "bower_components"


  g.watch ["src/**/*.jade"], ['jade']
  g.watch ["src/styles/**/*.scss"], ['sass']
  g.watch ["src/scripts/**/*.coffee"], ['coffee']