'use strict'

JsonHelpers = (StringHelpers, _) ->

  objectKeysToCamelCase = (object) ->
    newObj = null

    if _.isArray(object)
      newObj = object.map (item) ->
        objectKeysToCamelCase item

    else if _.isObject(object)
      newObj = {}
      _.forEach object, (value, key) ->
        newKey = StringHelpers.uncapitalize(StringHelpers.titleize(key))
        newObj[newKey] = objectKeysToCamelCase(value)

    else
      newObj = object

    return newObj

  return {
    objectKeysToCamelCase: objectKeysToCamelCase
  }

angular.module('C3PO').factory 'JsonHelpers', JsonHelpers
JsonHelpers.$inject = [
  'StringHelpers',
  '_'
]
