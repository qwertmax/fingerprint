json.array!(@sites) do |site|
  json.extract! site, :id, :fp, :sitename, :uri, :updated_at
end
