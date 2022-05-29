class CreateOrderDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :order_details do |t|

      t.timestamps

      t.integer :items_id
      t.integer :order_id
      t.integer :qty
      t.integer :tax_amount
      t.integer :making_status

    end
  end
end
