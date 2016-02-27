json.array!(@reasons) do |reason|
  json.extract! reason, :id, :description
  json.url reason_url(reason, format: :json)
end
