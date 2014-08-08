# Spawns PHP 5.4+ built-in server instead of default Brunch server
# Uses NodeJS child_process module
# http://nodejs.org/api/child_process.html

exports.startServer = (port, path, callback) ->
  spawn = require('child_process').spawn
  child = spawn('php', ['-S', "0.0.0.0:#{port}", '-t', path], {stdio: 'pipe'});

  # child.stderr.on 'data', (chunk) ->
  #   console.log("error")

  # child.stdout.on 'data', (chunk) ->
  #   console.log("stdout")

  callback()
