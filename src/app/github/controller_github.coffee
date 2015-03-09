'use strict'

GithubController = ($scope, $http, JsonHelpers) ->
  $http.get('http://localhost:5000/api/github').success (data) =>
    @data = JsonHelpers.objectKeysToCamelCase data

angular.module('C3PO').controller 'GithubController', GithubController
GithubController.$inject = [
  '$scope', '$http', 'JsonHelpers'
]
