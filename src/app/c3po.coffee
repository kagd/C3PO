'use strict'

@C3PO = angular.module('C3PO', ['underscore'])
  .constant('NAV_ITEMS', {
    code: {
      class: 'code',
      faIcon: 'code',
      name: 'code',
      path: '#/code'
    },
    twitter: {
      class: 'twitter',
      faIcon: 'twitter',
      name: '@gklinsing',
      path: 'http://twitter.com/gklinsing',
      external: true
    }
  })
