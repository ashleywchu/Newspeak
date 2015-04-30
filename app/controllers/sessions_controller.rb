class SessionsController < ApplicationController

  def create
    user = User.find_by_provider_and_uid(auth[:provider], auth[:uid]) || new_user = User.create_with_omniauth(auth)
    UserMailer.welcome_email(new_user).deliver_now if new_user
    session[:user_id] = user.id || new_user.id
    if user.name.nil?
      redirect_to "/users/#{user.id}/edit"
    else
      redirect_to "/"
    end
  end

  def destroy
    reset_session
    redirect_to "/"
  end

  def demo
    session[:user_id] = "5"
    redirect_to "/"
  end

  private
  def auth
    request.env["omniauth.auth"]
  end
end