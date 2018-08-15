class RestaurantsController < ApplicationController
  def index
    if params[:lang]
      @restaurants = Restaurant.where(category: params[:lang])
    else
      @restaurants = Restaurant.all
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant = @restaurant.save!
    redirect_to restaurants_path(@restaurant)
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :phone_number, :address, :category)
  end
end
