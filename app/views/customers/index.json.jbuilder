json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :email, :password_digest, :remember_token
  json.url customer_url(customer, format: :json)
end
