json.array!(@companies) do |company|
  json.extract! company, :id, :tradeName, :businessName, :rfc, :employees, :comercialBusiness, :sector, :schedule_id
  json.url company_url(company, format: :json)
end
