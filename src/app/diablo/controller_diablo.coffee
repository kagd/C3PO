'use strict'

DiabloController = ($scope, $http) ->

  $http.get('http://localhost:5000/api/diablo').success (data) =>
    @data = data

angular.module('C3PO').controller 'DiabloController', DiabloController
DiabloController.$inject = [
  '$scope', '$http'
]
