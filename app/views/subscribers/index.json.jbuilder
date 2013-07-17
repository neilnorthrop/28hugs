json.array!(@subscribers) do |subscriber|
  json.extract! subscriber, :email, :first_name, :last_name, :phone, :billing_address, :billing_city, :billing_state, :billing_zip, :ship_date, :password_digest, :stripe_customer_id, :payment_status, :recipient_name, :recipient_address, :recipient_city, :recipient_state, :recipient_zip
  json.url subscriber_url(subscriber, format: :json)
end