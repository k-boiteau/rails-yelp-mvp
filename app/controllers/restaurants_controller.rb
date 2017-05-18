class RestaurantsController < ApplicationController
  before_action :set_retaurant, only: [:show]

  def index
    @restaurants = Restaurant.all
  end

  def create
    restaurant = Restaurant.new(restaurant_params)
    create_restaurant = restaurant.save
    redirect_to restaurant_path(restaurant)
  end

  def new
    @restaurant = Restaurant.new
  end

  def show
  end

  private

  def set_retaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category, :phone_number)
  end


end
