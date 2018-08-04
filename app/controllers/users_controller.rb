class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @users = User.find_by(params[:id])
  end
end
