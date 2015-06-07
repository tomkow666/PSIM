json.array!(@thoughts) do |thought|
  json.extract! thought, :id, :product_id, :client_id, :body
  json.url thought_url(thought, format: :json)
end
