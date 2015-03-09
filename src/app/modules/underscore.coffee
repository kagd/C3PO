angular.module('underscore', [])
  .factory '_', ->
  	window._ # assumes underscore has already been loaded on the page
