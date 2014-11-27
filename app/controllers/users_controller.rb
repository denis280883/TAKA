class UsersController < ApplicationController

  before_filter :set_locale

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to root_url, notice: "Signed up!"
    else
      flash[:notice] = "Invalid !!!!"
      render :new
    end
  end

  def set_locale
    I18n.locale =  params[:locale]
  end
end
