'use strict'

module.exports = (grunt, options) ->
  path = require('path')
  

  return {
    build:
      options:
        targetDir: options.paths.build.vendor

    dist:
      options:
        targetDir: options.paths.dist.vendor
  }
