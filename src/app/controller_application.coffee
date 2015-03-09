'use strict'

ApplicationController = ($scope, NAV_ITEMS) ->
  @navItems = NAV_ITEMS
  @activeNavLink = @navItems.code

  @target = (navItem) ->
    if navItem.external
      return '_blank'
    else
      return '_self'

angular.module('C3PO').controller 'ApplicationController', ApplicationController
ApplicationController.$inject = [
  '$scope',
  'NAV_ITEMS'
]
