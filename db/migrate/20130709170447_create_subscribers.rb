class CreateSubscribers < ActiveRecord::Migration
  def change
    create_table :subscribers do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :billing_address
      t.string :billing_city
      t.string :billing_state
      t.integer :billing_zip
      t.string :processor_token
      t.string :recipient_name
      t.string :recipient_address
      t.string :recipient_city
      t.string :recipient_state
      t.integer :recipient_zip
      t.string :password
      t.string :password_digest
      t.string :password_confirmation

      t.timestamps
    end
  end
end
