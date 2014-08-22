logger = require('loggy')
logger.notifications = ['error', 'warn', 'success']

# See http://brunch.io/#documentation for docs.
exports.config =
  # Enable notifications (on OSX uses terminal-notifier gem or Growl)
  notifications: on
  # Sends success notifications. Comment to disable.
  onCompile: (generatedFiles) ->
    files = generatedFiles.map (f) -> f.path.replace(/.+\//, "")
    files = files.join(', ')
    logger.success("Updated #{files}")

  files:
    javascripts:
      joinTo: 
        # 'javascripts/app.js': /^(bower_components|vendor|app)/
        'javascripts/app.js': /^app\/javascripts/
        'javascripts/vendor.js': /^bower_components/

    stylesheets:
      # By default, Brunch concatenates all files in vendor/stylesheets before all files in app/stylesheets
      joinTo: 'stylesheets/main.css'
      # It is simple to define multiple output for complex projects
      # joinTo:
      #   'stylesheets/main.css': /^(app\/stylesheets\/main\.scss)/
      #   'stylesheets/main-with-vendor.css': /^(vendor|app\/stylesheets\/main\.scss)/
      #   'stylesheets/other.css': /^(app\/stylesheets\/other\.scss)/

  # By default non-vendor JavaScript files are encapsulated in CommonJS modules (recommended)
  modules:
    wrapper: 'commonjs' # Set to false to disable modules
    definition: 'commonjs'
    nameCleaner: (path) -> path.replace /^app\/javascripts\//, ''

  plugins:
    autoReload:
      enabled:
        js: on
        css: on
        assets: on
    autoprefixer:
      browsers: ["last 1 version", "ie 9"]
      options:
        cascade: false

  conventions:
    # Prevent copying spritesheets source images to public
    ignored: [/[\\/]_/, /vendor[\\/](node|j?ruby-.*|bundle)[\\/]/, /spritesheets[\\/]/]

  # Uncomment for PHP built-in webserver support
  # server:
  #   path: 'server-php.coffee'
  #   port: 3333
