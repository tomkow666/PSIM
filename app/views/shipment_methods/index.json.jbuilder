json.array!(@shipment_methods) do |shipment_method|
  json.extract! shipment_method, :id, :name
  json.url shipment_method_url(shipment_method, format: :json)
end
