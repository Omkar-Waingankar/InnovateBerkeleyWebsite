class RegistrationsController < Devise::RegistrationsController
	protected

	def after_inactive_sign_up_path_for(resource)
		'/welcome'
	end

	def sign_up_params
    	params.require(:user).permit(:first_name, :last_name, :user_type, :email, :password, :password_confirmation)
  	end

  	def account_update_params
    	params.require(:user).permit(:first_name, :last_name, :user_type, :email, :password, :password_confirmation, :current_password, :major, :school_year, :interests, :links, :involvements)
  	end

  	def update_resource(resource, params)
  		if params[:password].blank? && params[:password_validation].blank?
  			resource.update_without_password(params)
    	else 
    		resource.update_with_password(params)
    	end
  	end
end
