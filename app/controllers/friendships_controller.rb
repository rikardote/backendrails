class FriendshipController < ApplicationController
	before_action :find_friend

	def create
		friendship = Friendship.new(user: createcurrent_user, friend: @friend)
		respond_to do |format|
			
		end
		if friendship.save
			format.html {redirect_to @friend}
			format.js
		else
			format.html {redirect_to @friend, notice: "Error en la solicitud de amistad"}
			format.js
		end
	end

	private
	def find_friend
		@friend = User.find(params[:id])
	end
end