json.array!(@animations) do |animation|
  json.extract! animation, :id, :name, :description
  json.url animation_url(animation, format: :json)
end
