class HomeController < ApplicationController
  def index
  end

  def team
  	@members = User.where(:user_type => "Team Member")
  end
end
