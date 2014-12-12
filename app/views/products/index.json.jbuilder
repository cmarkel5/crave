json.array!(@products) do |product|
  json.extract! product, :id, :item_id, :name, :msrp, :sale_price, :thumbnail_image, :medium_image, :large_image, :short_description, :brand_name, :customer_rating_image, :purchased, :declined
  json.url product_url(product, format: :json)
end
