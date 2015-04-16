class UsersController < ApplicationController

	def index
	end

	def edit
	end

	def newsfeed
		@user = User.find(params[:id])
		render :newsfeed
	end

	def newscolumn
		@user = User.find(params[:id])
		render :newscolumn
	end

end
