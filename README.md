Brunch Template
===============

Template supporting:
  
  - IE9+
  - Bower (defaults: console polyfill, jQuery and Modernizr)
  - SASS
  - Compass (+sprites)
  - CoffeeScript
  - Autoprefixer
  - Source maps
  - Autoreload
  - Basic HTTP server for REST aplications
  - Optional use of PHP built in server

Setup
-----
Note that NodeJS (`brew install nodejs`) and Ruby 2.0 are required.
    
    npm install -g brunch
    npm install -g bower

    bundle install
    npm install
    bower install

Development
-----------

    bundle exec brunch watch --server

Open your development server at [http://localhost:3333](). Remember auto-reload is enabled by default, so any changes to the project will refresh your browser.

Bundler is used to solve Compass x SASS version conflicts.

Extras
------

### PHP Support

Make sure PHP 5.4 is available: `php -v`

Enable support for the [PHP built in server](http://php.net/manual/en/features.commandline.webserver.php) in **config.coffee** (lines are commented out).

Customization
-------------

Most customization options are located in **config.coffee**. Additional information is available at [Brunch documentation](https://github.com/brunch/brunch/blob/stable/docs/config.md).


Credits
-------
Example icons from [http://glyphicons.com/]()


License
-------

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
