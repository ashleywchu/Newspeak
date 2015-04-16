class SessionsController < ApplicationController

  def create
    user = User.find_by_provider_and_uid(auth[:provider], auth[:uid]) || User.create_with_omniauth(auth)
    session[:user_id] = user.id
    redirect_to "/user/#{user.id}"
  end

  def destroy
    reset_session
    redirect_to "/"
  end

  private
  def auth
    request.env["omniauth.auth"]
  end
end