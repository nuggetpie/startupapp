class Profile < ActiveRecord::Base
  belongs_to :user, dependent: :destroy
  has_many :collections

  extend FriendlyId
  friendly_id :full_name, use: :slugged



  def full_name
  	[first_name, last_name].join(' ')
  end
end
