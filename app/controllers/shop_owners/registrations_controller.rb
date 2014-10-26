class ShopOwners::registrationsController < Devise::registrationsController
 
protected
	def after_sign_up_path_for(resource)   
    edit_shop_profile_path(resource.shop_profile)  # ??? 
 	end
  # def new
  #   super
  # end

  # def create
  #   super
  # end
end
