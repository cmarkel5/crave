json.array!(@purchased_products) do |product|
  json.name             product.name
  json.purchaseCount    product.purchases.count
  json.declineCount     product.declines.count
  json.viewsCount       product.declines.count + product.purchases.count
end