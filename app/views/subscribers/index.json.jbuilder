json.array!(@subscribers) do |subscriber|
  json.extract! subscriber, :email, :first_name, :last_name, :phone_number, :billing_address, :billing_city, :billing_state, :billing_zip, :processor_token, :recipient_name, :recipient_address, :recipient_city, :recipient_state, :recipient_zip, :password_digest
  json.url subscriber_url(subscriber, format: :json)
end