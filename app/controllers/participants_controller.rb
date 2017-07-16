class ParticipantsController < ApplicationController
	def index
		@mentors = User.where(:user_type => "Mentor")
		@hackers = User.where(:user_type => "Hacker")
	end	
end
