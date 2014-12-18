json.array!(@product_stats) do |product|
  if (product.purchases.count || product.declines.count) > 0
    json.name             product.name
    json.purchaseCount    product.purchases.count
    json.declineCount     product.declines.count
    json.viewsCount       product.declines.count + product.purchases.count
  else
    nil
  end
end