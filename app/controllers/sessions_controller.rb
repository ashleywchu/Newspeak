class SessionsController < ApplicationController

  def create
    # binding.pry
    user = User.find_by_provider_and_uid(auth[:provider], auth[:uid]) || user = User.create_with_omniauth(auth)
    session[:user_id] = user.id
    redirect_to "/"
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