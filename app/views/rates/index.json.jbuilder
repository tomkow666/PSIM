json.array!(@rates) do |rate|
  json.extract! rate, :id, :product_id, :client_id, :rate
  json.url rate_url(rate, format: :json)
end
