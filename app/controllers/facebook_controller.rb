class FacebookController < ApplicationController
	def poop
		@data = request.env['omniauth.auth']
		@graph = Koala::Facebook::API.new(@data[:credentials][:token])
		#@graph.put_wall_post('hi')
		#@graph.put_wall_post("hi", {:name => "yo"}, 'devend')
	end
end
