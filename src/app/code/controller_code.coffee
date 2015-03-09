'use strict'

CodeController = ($scope, $http, JsonHelpers, _) ->
  @activateCommit = (commit) =>
    @activeCommit = commit

  $http.get('http://localhost:5000/api/github').success (data) =>
    @data = JsonHelpers.objectKeysToCamelCase data

    firstYear = @data.siteCommits[_.keys(@data.siteCommits)[0]]
    console.log firstYear
    firstCommit = firstYear[_.keys(firstYear)[0]][0]
    console.log firstCommit

    @activateCommit firstCommit

angular.module('C3PO').controller 'CodeController', CodeController
CodeController.$inject = [
  '$scope', '$http', 'JsonHelpers', '_'
]
