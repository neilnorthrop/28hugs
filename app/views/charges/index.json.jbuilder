json.array!(@charges) do |charge|
  json.extract! charge, :paid_status, :stripe_token, :last_4, :subscriber_id
  json.url charge_url(charge, format: :json)
end