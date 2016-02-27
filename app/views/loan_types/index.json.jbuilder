json.array!(@loan_types) do |loan_type|
  json.extract! loan_type, :id, :name, :description
  json.url loan_type_url(loan_type, format: :json)
end
