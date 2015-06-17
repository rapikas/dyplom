json.array!(@contacts) do |contact|
  json.extract! contact, :id, :name, :surname, :description
  json.url contact_url(contact, format: :json)
end
