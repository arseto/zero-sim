json.array!(@receivings) do |receiving|
  json.extract! receiving, :id, :doc_no, :receiving_date, :ref_doc_do
  json.url receiving_url(receiving, format: :json)
end
