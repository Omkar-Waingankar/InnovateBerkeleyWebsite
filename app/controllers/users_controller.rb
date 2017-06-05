class UsersController < ApplicationController
	before_filter :authenticate_user!

	def show
		if User.exists?(:id => params[:id])
			@user = User.find(params[:id])
		else
			redirect_back fallback_location: '/'
		end
	end

	def edit
	end

end