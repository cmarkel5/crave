json.array!(@electronics) do |electronic|
  json.itemId               electronic["itemId"]
  json.name                 electronic["name"]
  json.msrp                 electronic["msrp"]
  json.salePrice            electronic["salePrice"]
  json.thumbnailImage       electronic["thumbnailImage"]
  json.shortDescription     electronic["shortDescription"]
  json.customerRatingImage  electronic["customerRatingImage"]
end

  