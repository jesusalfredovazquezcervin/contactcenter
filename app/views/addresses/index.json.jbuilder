json.array!(@addresses) do |address|
  json.extract! address, :id, :street, :internal, :external, :suburb, :municipality, :location, :state_id, :postalCode, :city, :contact_id
  json.url address_url(address, format: :json)
end
