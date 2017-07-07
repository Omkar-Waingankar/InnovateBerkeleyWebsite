class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :mobile?

   private

   def mobile?
      request.user_agent =~ /\b(Android|iPhone|iPad|Windows Phone|Opera Mobi|Kindle|BackBerry|PlayBook)\b/i
   end
end
