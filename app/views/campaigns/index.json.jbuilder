json.array!(@campaigns) do |campaign|
  json.extract! campaign, :id, :name, :campaignType, :finish
  json.url campaign_url(campaign, format: :json)
end
