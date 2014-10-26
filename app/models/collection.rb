class Collection < ActiveRecord::Base
  belongs_to :user, dependent: :destroy
  has_many :shop_names, :through => :shop_profile
  has_many :shop_products, :through => :shop_profile
end
