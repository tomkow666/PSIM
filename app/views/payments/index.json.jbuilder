json.array!(@payments) do |payment|
  json.extract! payment, :id, :method, :is_complete, :amount
  json.url payment_url(payment, format: :json)
end
