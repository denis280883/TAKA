class SessionsController < ApplicationController
  before_filter :set_locale

  def new
  end

  def create
    user = User.find_by_email(params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to root_url, :notice => "Logged in!"
    else
      flash[:notice] = "Invalid email or password"
      redirect_to new_session_path
    end
  end

  def destroy
    session[:user_id] = nil
  end

  def set_locale
    I18n.locale =  params[:locale]
    I18n.default_locale = I18n.locale
  end

end
