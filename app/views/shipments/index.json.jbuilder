json.array!(@shipments) do |shipment|
  json.extract! shipment, :id, :method, :price, :is_complete
  json.url shipment_url(shipment, format: :json)
end
