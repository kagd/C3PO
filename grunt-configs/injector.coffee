'use strict'

module.exports = (grunt, options) ->
  return {
    options:
      # mark as relative to "dist" or "build" directories
      # this is needed or "src" attribute will prepend "dist" or "build"
      relative: true
      # prepend rootslash to "src" attribute
      addRootSlash: true

    buildJs:
      options:
        template: "#{options.paths.build.root}/index.html"

      files: "#{options.paths.build.root}/index.html": [
        # Include vendor files first
        # If we are using foundation, add these scripts to the html first
        "#{options.paths.build.vendor}/modernizr/*.js"

        # Don't include fastclick, jquery-placeholer, jquery.cookie
        "!#{options.paths.build.vendor}/{fastclick,jquery-placeholder,jquery.cookie}/**/*.js"
        "#{options.paths.build.vendor}/jquery/*.js"
        "#{options.paths.build.vendor}/angular/angular.min.js"
        "#{options.paths.build.vendor}/**/*.js"

        # Don't include angular mocks when not testing
        "!#{options.paths.build.vendor}/angular-mocks/*.js"

        # Include app dependent modules
        "#{options.paths.build.js}/modules/**/*.js"

        # Include angular app module
        "#{options.paths.build.js}/c3po.js"

        # Include the helper files
        "#{options.paths.build.js}/helpers/**/*.js"

        # Include the remaining app files
        "#{options.paths.build.js}/**/*.js"
      ]

    buildCss:
      options:
        template: "#{options.paths.build.root}/index.html"

      files: "#{options.paths.build.root}/index.html": [
        # Load all vendor files first
        "#{options.paths.build.vendor}/**/*.css"
        # Then all app files
        "#{options.paths.build.css}/**/*.css"
      ]

    distJs:
      options:
        template: "#{options.paths.dist.root}/index.html"

      files: "#{options.paths.dist.root}/index.html": [
        # Include vendor files first
        # If we are using foundation, add these scripts to the html first
        "#{options.paths.dist.vendor}/modernizr/*.js"
        # Don't include fastclick, jquery-placeholer, jquery.cookie
        "!#{options.paths.dist.vendor}/{fastclick,jquery-placeholder,jquery.cookie}/**/*.js"
        "#{options.paths.dist.vendor}/jquery/*.js"
        "#{options.paths.dist.vendor}/angular/angular.min.js"
        "#{options.paths.dist.vendor}/**/*.js"
        # Don't include angular mocks when not testing
        "!#{options.paths.dist.vendor}/angular-mocks/*.js"
        # Include angular app module
        "#{options.paths.dist.js}/c3_p_o.js"
        # Include the remaining app files
        "#{options.paths.dist.js}/**/*.js"
      ]

    distCss:
      options:
        template: "#{options.paths.dist.root}/index.html"

      files: "#{options.paths.dist.root}/index.html": [
        # Load all vendor files first
        "#{options.paths.dist.vendor}/**/*.css"
        # Then all app files
        "#{options.paths.dist.css}/**/*.css"
      ]
  }
