class FollowsController < ApplicationController
  def index
    @brands = current_user.all_following
  end

  def show
    @brands = current_user.all_following
  end
end


