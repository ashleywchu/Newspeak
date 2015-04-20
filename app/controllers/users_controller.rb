class UsersController < ApplicationController

	def index
	end

	def newsfeed
		@user = current_user
	end

	def newscolumn
		@author = User.find_by_id(params[:id])
		@user = current_user
	end

end
