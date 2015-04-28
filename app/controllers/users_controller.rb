class UsersController < ApplicationController

	def index
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to "/newscolumn/#{@user.id}", notice: 'Your account information was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
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

  private

  def user_params
    params.require(:user).permit(:name, :paypal_email)
  end

end
