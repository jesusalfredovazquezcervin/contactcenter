json.array!(@contacts) do |contact|
  json.extract! contact, :id, :name, :position, :telephone, :cellphone, :email
  json.url contact_url(contact, format: :json)
end
