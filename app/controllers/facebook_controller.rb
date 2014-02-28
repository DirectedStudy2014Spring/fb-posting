class FacebookController < ApplicationController
	def poop
		@data = request.env['omniauth.auth']
		@graph = Koala::Facebook::API.new(@data[:credentials][:token])
		#@graph.put_wall_post('hi')
		#@graph.put_wall_post("hi", {:name => "yo"}, 'devend')
		@friend_list = @graph.get_connections("me", "friends")
		#@random_friend = @friend_list.sample
		@friend = 'kdhir'

		#get a status from the friend, comment on it
		@status = @graph.get_connections(@friend, "statuses", :fields => "id")
		#@status = @graph.get_connections(@friend, "statuses")
		@post_id = @status[0]["id"]
		@message = "hi"
		@image = "http://bellicosebeauty.files.wordpress.com/2012/02/cartoon-poop.jpg"
		#post the image
		@graph.put_comment(@post_id, @image)
	end
end
