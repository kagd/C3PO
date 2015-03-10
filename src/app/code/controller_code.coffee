'use strict'

CodeController = ($scope, $http, JsonHelpers, _) ->
  @firstHistoryItemOffset = 0

  @activateCommit = (e, commit) =>
    element = angular.element(e.target)
    offset = element.offset()

    $('#commit-history').scrollTo {left: offset.left, top: offset.top}, 500, {easing: Easie.quadInOut}
    console.log offset.left

    @activeCommit = commit

  onSuccess = (data) ->
    @data = JsonHelpers.objectKeysToCamelCase data

    firstYear = @data.siteCommits[_.keys(@data.siteCommits)[0]]
    firstCommit = firstYear[_.keys(firstYear)[0]][0]

    @activeCommit = firstCommit

  $http.get('http://localhost:5000/api/github').success onSuccess.bind(@)

angular.module('C3PO').controller 'CodeController', CodeController
CodeController.$inject = [
  '$scope', '$http', 'JsonHelpers', '_'
]
