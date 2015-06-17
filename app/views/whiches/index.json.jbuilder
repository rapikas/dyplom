json.array!(@whiches) do |which|
  json.extract! which, :id, :name, :description
  json.url which_url(which, format: :json)
end
