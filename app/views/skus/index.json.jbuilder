json.array!(@skus) do |sku|
  json.extract! sku, :id, :name, :description, :sku_code, :manufacturer_id
  json.url sku_url(sku, format: :json)
end
