class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :item_id
      t.string :name
      t.decimal :msrp, :precision => 7, :scale => 2
      t.decimal :sale_price, :precision => 7, :scale => 2
      t.string :thumbnail_image
      t.string :medium_image
      t.string :large_image
      t.text :short_description
      t.string :brand_name
      t.string :customer_rating_image
      t.integer :purchased
      t.integer :declined

      t.timestamps
    end
  end
end
