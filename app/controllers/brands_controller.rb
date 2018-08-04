class BrandsController < ApplicationController

def index
    @q = Brand.ransack(params[:q])
    @brands = @q.result(distinct: true)
  end

  def show
    @brand = Brand.find_by name: params[:name]
  end

  def follow
    @brand = Brand.find(params[:id])
      current_user.follow(@brand)
      redirect_to :back
end

def unfollow
  @brand = Brand.find(params[:id])
      current_user.stop_following(@brand)
      redirect_to :back
end
end
