'use strict'

GithubController = ($scope, $http) ->

  $http.get('http://localhost:5000/api/github').success (data) =>
    @data = data

@C3PO.controller 'GithubController', GithubController
GithubController.$inject = [
  '$scope', '$http'
]
