class Role < ActiveRecord::Base
  has_and_belongs_to_many :shop_owners, :join_table => :shop_owners_roles
  belongs_to :resource, :polymorphic => true
  
  scopify
  has_and_belongs_to_many :users, :join_table => :users_roles
  belongs_to :resource, :polymorphic => true
  
  scopify
end
