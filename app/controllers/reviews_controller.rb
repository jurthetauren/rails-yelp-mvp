class ReviewsController < ApplicationController

def index
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reviews = @restaurant.reviews
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.create(review_params)
    @restaurant.reviews << @review
    @restaurant.save
    redirect_to restaurant_reviews_path
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

end
