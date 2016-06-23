json.array!(@calls) do |call|
  json.extract! call, :id, :company_id, :campaign_id, :result, :status, :later, :user_id
  json.url call_url(call, format: :json)
end
