'use strict'

StringHelpers = ->
  capitalize = (word) ->
    word.charAt(0).toUpperCase() + word.slice(1)

  uncapitalize = (word) ->
    word.charAt(0).toLowerCase() + word.slice(1)

  titleize = (string) ->
    cleanTitle = string.replace(/[ \-_]+/g, ' ');
    words = cleanTitle.replace(/([A-Z])/g, " $&").trim().split(' ')
    capitalizedWords = words.map (word) ->
      capitalize(word)

    capitalizedWords.join('')

  return {
    capitalize: capitalize
    uncapitalize: uncapitalize
    titleize: titleize
  }

angular.module('C3PO').factory 'StringHelpers', StringHelpers
