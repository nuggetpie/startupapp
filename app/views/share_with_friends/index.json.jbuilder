json.array!(@share_with_friends) do |share_with_friend|
  json.extract! share_with_friend, :id, :friends_id, :collection_name_id, :shop_name_id, :shop_product_id
  json.url share_with_friend_url(share_with_friend, format: :json)
end
