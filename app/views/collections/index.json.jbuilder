json.array!(@collections) do |collection|
  json.extract! collection, :id, :collection_name, :collection_category, :shop_name_id, :shop_product_id
  json.url collection_url(collection, format: :json)
end
