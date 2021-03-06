class ReviewsController < ApplicationController

  # before_action :set_review, only: [:show ]
  before_action :find_restaurant, only: [:create ]

  # def new
  #   @review = Review.new
  # end

  def create
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private

  # def set_restaurant
  #   @review.restaurant = Review.find(params[:id])
  # end

  def review_params
    params.require(:review).permit(:content, :rating, :restaurant_id)
  end

  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
