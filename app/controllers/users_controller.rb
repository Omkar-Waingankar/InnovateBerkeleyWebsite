class UsersController < ApplicationController
	#before_filter :authenticate_user!

	def show
		if User.exists?(:id => params[:id])
			@user = User.find(params[:id])
		else
			redirect_back fallback_location: '/'
		end

		if @user.links != nil
			@found_links = @user.links.split(/\s*,\s*/)
		end

		gravatar_exists = @user.gravatar_email != nil && @user.gravatar_email != ""
		email = gravatar_exists ? @user.gravatar_email : @user.email

		gravatar_hash = Digest::MD5.hexdigest email.strip
		check_url = 'https://www.gravatar.com/avatar/'+ gravatar_hash + '?s=200&d=404'
		
		begin
			open(check_url)
			@gravatar_url = check_url
		rescue OpenURI::HTTPError => e
  			if e.message == '404 Not Found'
  				@gravatar_url = 'person-icon.png'
  			end
  		end
	end

	def edit
	end
end