json.array!(@user_borrowers) do |user_borrower|
  json.extract! user_borrower, :id, :name, :registered_date, :status, :identity_type_id, :identity_no
  json.url user_borrower_url(user_borrower, format: :json)
end
