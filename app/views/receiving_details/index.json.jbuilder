json.array!(@receiving_details) do |receiving_detail|
  json.extract! receiving_detail, :id, :receiving_id, :sku_id, :qty, :unit_price, :subtotal_price
  json.url receiving_detail_url(receiving_detail, format: :json)
end
