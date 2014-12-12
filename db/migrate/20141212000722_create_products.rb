class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :item_id
      t.string :name
      t.money :msrp
      t.money :sale_price
      t.string :thumbnail_image
      t.string :medium_image
      t.string :large_image
      t.string :short_description
      t.string :brand_name
      t.string :customer_rating_image
      t.integer :purchased
      t.integer :declined

      t.timestamps
    end
  end
end
