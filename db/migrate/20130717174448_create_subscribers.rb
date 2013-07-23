class CreateSubscribers < ActiveRecord::Migration
  def change
    create_table :subscribers do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :billing_address
      t.string :billing_city
      t.string :billing_state
      t.string :billing_zip
      t.date :ship_date
      t.string :password_digest
      t.string :stripe_customer_id
      t.string :payment_status
      t.string :recipient_name
      t.string :recipient_address
      t.string :recipient_city
      t.string :recipient_state
      t.string :recipient_zip

      t.timestamps
    end
  end
end
