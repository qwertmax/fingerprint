@ListCtrl = ["$scope", "ListResource", "SortableResource", "$routeParams", ($scope, ListResource, SortableResource, $routeParams) ->
  $scope.currentPage = 1;
  $scope.sites = ListResource.query({'page':$scope.currentPage})

  $scope.sortableOptions = {
    update: (e, ui) ->
      params = 'sites':$scope.sites
      SortableResource.sort(params) if $scope.sites.length > 0
  }

  $scope.loadMore = ->
    $scope.currentPage += 1
    $scope.sites = ListResource.query({'page':$scope.currentPage})
]