class UsersController < ApplicationController

	def index
	end

	def newsfeed
		@user = current_user
	end

	def newscolumn
		@user = current_user
		binding.pry
	end

end
