class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :new
      t.string :index
      t.string :show

      t.timestamps

      t.integer :customer_id
      t.string :addresses_postal_code
      t.string :addresses_address
      t.string :addresses_name
      t.integer :bill
      t.integer :shipping_fee
      t.integer :payment
      t.integer :status

    end
  end
end
