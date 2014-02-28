class FacebookController < ApplicationController
	def poop
		@data = request.env['omniauth.auth']
	end
end
