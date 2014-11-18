class StaticPagesController < ApplicationController
  def index
    flash[:notice] = "Hello Flash"
  end

  def home
    flash[:notice] = "Hello Flash home"
  end
end
