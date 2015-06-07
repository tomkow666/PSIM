json.array!(@products) do |product|
  json.extract! product, :id, :category_id, :producent_id, :name, :amount, :netto_price, :vat, :description
  json.url product_url(product, format: :json)
end
