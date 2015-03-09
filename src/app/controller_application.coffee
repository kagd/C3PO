'use strict'

ApplicationController = ($scope) ->
  init = ->
    $scope.log = 'ApplicationController init called'

  init()

angular.module('C3PO').controller 'ApplicationController', ApplicationController
ApplicationController.$inject = [
  '$scope'
]
