class HomeController < ApplicationController
  def index
  end

  def team
  	@members = User.where(:user_type => "Team Member")
  	# @members.sort_by { |member| member.last_name }
  end
end
