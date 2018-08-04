class PagesController < ApplicationController
  def home
    @brands = Brand.all
    @notifications= Notification.all
  end

  def about
  end

  def signup
  end

  def login
  end

end
