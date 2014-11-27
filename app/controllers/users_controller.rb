class UsersController < ApplicationController

  before_filter :set_locale

  def new
    @user = User.new
  end

  def create
    if (@user = User.new(params[:user])).save
      redirect_to root_url, notice: "Signed up!"
    else
      render :new
    end
  end

  def set_locale
    I18n.locale =  params[:locale]
    I18n.default_locale = I18n.locale 
  end
end
