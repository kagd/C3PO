'use strict'

ApplicationController = ($scope) ->
  init = ->
    $scope.log = 'ApplicationController init called'

  init()

@C3PO.controller 'ApplicationController', ApplicationController
ApplicationController.$inject = [
  '$scope'
]
