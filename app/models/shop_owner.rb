class ShopOwner < ActiveRecord::Base
  rolify
 
 has_one :shop_profile


  after_create :build_shop_profile

  def build_shop_profile
  	self.shop_profile=ShopProfile.new
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
