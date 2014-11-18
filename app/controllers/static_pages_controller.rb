class StaticPagesController < ApplicationController
  def index
    flash[:notice] = "Hello Flash"
  end

  def home
    flash[:notice] = t(:hello_flash)
  end
end
