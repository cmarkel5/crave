class CreateDeclines < ActiveRecord::Migration
  def change
    create_table :declines do |t|
      t.integer :customer_id
      t.integer :product_id

      t.timestamps
    end
  end
end
