class UsersController < ApplicationController

	def index
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
    @user = User.find(params[:id])
    if @user.name == user_params[:name] || @user.unique_username?(user_params[:name])
      if @user.valid_email?(user_params[:paypal_email])
        @user.update(user_params)
        redirect_to "/newscolumn/#{@user.name}", notice: 'Your account information has been successfully updated.'
      elsif @user.valid_email?(user_params[:paypal_email]) == false
        flash[:notice] << 'Invalid email.'
        render :edit
      end
    else
      flash[:notice] = []
      if @user.unique_username?(user_params[:name]) == false
        flash[:notice] << 'That username has already been taken. Please enter another username.'
      end
      if @user.valid_email?(user_params[:paypal_email]) == false
        flash[:notice] << 'Invalid email.'
      end
      render :edit
    end
  end

	def newsfeed
		if params[:id].to_i != current_user.id
			redirect_to "newsfeed/#{current_user.id}" 
		else
			@user = current_user
      if @user.subscriptions.empty?
      else
        @articles_by_date = @user.organize_articles_by_date
      end
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
