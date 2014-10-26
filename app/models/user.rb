class User < ActiveRecord::Base
  rolify
 has_one :profile
 has_many :collections
 has_many :share_with_friends


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  after_create :build_profile

  def build_profile
  	self.profile=Profile.new
  end
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
