json.array!(@electronics) do |electronic|
  json.name electronic["name"]
  json.customerRating electronic["customerRating"]
end