json.array!(@units) do |unit|
  json.extract! unit, :id, :product_id, :netto_price, :vat, :is_sold, :sold_at
  json.url unit_url(unit, format: :json)
end
