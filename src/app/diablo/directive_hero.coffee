'use strict';

Hero = ->
  # link = ->
  #   console.log 'foo'


  return {
    # link: link
    restrict: 'EA',
    scope: {
      hero: '='
    }
    templateUrl: '/app/diablo/directive_hero.html'
  }

@C3PO.directive 'hero', Hero
Hero.$inject = []
