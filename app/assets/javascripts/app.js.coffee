@app = angular.module 'FP', [
  'ngRoute'
  'ngResource'
]

@app.config ['$routeProvider', ($routeProvider) ->
  $routeProvider.
    when('/', {
      controller:'ListCtrl',
      templateUrl:'sitelist.ngt'
    })
]  

@app.config ["$httpProvider", ($httpProvider) ->
  $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
]

@app.factory "SortableResource", ["$resource", ($resource) ->
    $resource("/sortable/sort", {}, {sort: { method: "POST"}})
]
