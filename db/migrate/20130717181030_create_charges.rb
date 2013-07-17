class CreateCharges < ActiveRecord::Migration
  def change
    create_table :charges do |t|
      t.string :paid_status
      t.string :stripe_token
      t.string :last_4
      t.integer :subscriber_id

      t.timestamps
    end
  end
end
