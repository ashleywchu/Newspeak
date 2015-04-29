class SessionsController < ApplicationController

  def create
    user = User.find_by_provider_and_uid(auth[:provider], auth[:uid]) || user = User.create_with_omniauth(auth)
    session[:user_id] = user.id
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

  private
  def auth
    request.env["omniauth.auth"]
  end
end