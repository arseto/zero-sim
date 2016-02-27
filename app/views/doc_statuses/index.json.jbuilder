json.array!(@doc_statuses) do |doc_status|
  json.extract! doc_status, :id, :name
  json.url doc_status_url(doc_status, format: :json)
end
