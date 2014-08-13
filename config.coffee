# See http://brunch.io/#documentation for docs.
exports.config =
  # Enable notifications (on OSX uses terminal-notifier gem or Growl)
  notifications: on

  files:
    javascripts:
      joinTo: 'javascripts/app.js': /^(vendor|app)/
    stylesheets:
      joinTo: 'stylesheets/main.css'
    templates:
      joinTo: 'javascripts/app.js'

  plugins:
    autoReload:
      enabled:
        js: on
        css: on
        assets: on
    autoprefixer:
      browsers: ["last 1 version", "> 1%", "ie 8"]
      options:
        cascade: false

  conventions:
    # Prevent copying spritesheets source images to public
    ignored: [/[\\/]_/, /vendor[\\/](node|j?ruby-.*|bundle)[\\/]/, /spritesheets[\\/]/]

  # Uncomment for PHP built-in webserver support
  # server:
  #   path: 'server-php.coffee'
  #   port: 3333
