'use strict'

module.exports = (grunt, options) ->
  console.log "#{options.paths.dist.js}/falcon.js"

  return {
    options:
      join: false

    build:
      cwd: options.paths.source.js
      dest: options.paths.build.js
      expand: true
      ext: '.js'
      flatten: false
      src: ['**/*.coffee']
      sourceMap: true

    dist:
      expand: true
      flatten: true
      files: {
        "#{options.paths.dist.js}/c3_p_o.js": [
          "#{options.paths.source.js}/c3_p_o.coffee"
          "#{options.paths.source.js}/**/*.coffee"
        ]
      }
      sourceMap: false
  }
