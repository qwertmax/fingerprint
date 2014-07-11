app.service("ListService", [ "ListResource", (ListResource) ->
  
  sites: ListResource.query()

])

app.factory('ListResource', ['$resource', ($resource) ->
  $resource("/sitelist.json")
])
