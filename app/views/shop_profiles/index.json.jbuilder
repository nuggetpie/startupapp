json.array!(@shop_profiles) do |shop_profile|
  json.extract! shop_profile, :id, :shop_owner, :shop_name, :shop_product, :shop_category, :shop_keyword
  json.url shop_profile_url(shop_profile, format: :json)
end
