class ShareWithFriend < ActiveRecord::Base
  belongs_to :user
  has_many :friends, :through => :profiles
  has_many :collection_names, :through => :collection
  has_many :shop_names, :through => :shop_profile
  has_many :shop_products, :through => :shop_profile
end
