json.array!(@details) do |detail|
  json.extract! detail, :id, :company_id, :campaign_id, :user_id
  json.url detail_url(detail, format: :json)
end
