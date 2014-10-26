class ShopProfile < ActiveRecord::Base
belongs_to :shop_owner, dependent: :destroy

end
