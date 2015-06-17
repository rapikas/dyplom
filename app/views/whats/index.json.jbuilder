json.array!(@whats) do |what|
  json.extract! what, :id, :name, :description
  json.url what_url(what, format: :json)
end
