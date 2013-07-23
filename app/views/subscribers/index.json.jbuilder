json.array!(@subscribers) do |subscriber|
<<<<<<< HEAD
  json.extract! subscriber, :email, :first_name, :last_name, :phone_number, :billing_address, :billing_city, :billing_state, :billing_zip, :processor_token, :recipient_name, :recipient_address, :recipient_city, :recipient_state, :recipient_zip, :password_digest
=======
  json.extract! subscriber, :email, :first_name, :last_name, :phone, :billing_address, :billing_city, :billing_state, :billing_zip, :ship_date, :password_digest, :stripe_customer_id, :payment_status, :recipient_name, :recipient_address, :recipient_city, :recipient_state, :recipient_zip
>>>>>>> d01baa6085970c459966cde4b46c161b4f8b6474
  json.url subscriber_url(subscriber, format: :json)
end