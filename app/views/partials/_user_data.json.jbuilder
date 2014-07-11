json.extract! @user, :fp, :created_at
json.visits do
  json.total @user.sites_count
  json.sites do
    json.array! @user.sites.group(:uri) do |visit|
      json.sitename visit.sitename
      json.uri visit.uri
      json.count @user.visit_count(visit.uri, visit.sitename)
    end
  end
end