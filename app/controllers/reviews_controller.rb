class ReviewsController < ApplicationController
  # BEFORE EMBEDDING THE FORM IN THE RESTAURANT SHOW
  # def new
  #   @review = Review.new
  #   @restaurant = Restaurant.find(params[:restaurant_id])
  # end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
      # redirect_to restaurants_path
    else
      render 'restaurants/show', status: :unprocessable_entity

      # <%# BEFORE EMBEDDING THE FORM IN THE RESTAURANT SHOW %>
      # render :new, status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
