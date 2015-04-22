class UsersController < ApplicationController

	def index
	end

	def newsfeed
		if params[:id].to_i != current_user.id
			redirect_to "newsfeed/#{current_user.id}" 
		else
			@user = current_user
		end
	end

	def newscolumn
		@user = User.find_by_id(params[:id]) || User.first
	end

end
