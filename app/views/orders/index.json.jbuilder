json.array!(@orders) do |order|
  json.extract! order, :id, :client_id, :staff_id, :status_id, :shipment_id, :payment_id, :redeem_code, :cost, :extra_info
  json.url order_url(order, format: :json)
end
