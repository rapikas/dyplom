json.array!(@producers) do |producer|
  json.extract! producer, :id, :name, :description, :link
  json.url producer_url(producer, format: :json)
end
