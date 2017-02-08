class RestaurantsController < ApplicationController
  before_action :find_restaurant, only: [ :chef ]

  def top
    @restaurants = Restaurant.where(stars: 3)
  end
  def chef
  end

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
