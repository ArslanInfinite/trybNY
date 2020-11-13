class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

  def show
    @reviews = Review.all.select {|review| review.activity.id = params[:id]}
  end

  def new
    @activity = Activity.find(params[:activity_id])
    @review = Review.new
  end

  def create
    Review.create(review_params)
    redirect_to mainpage_path
  end

private

  def review_params
    params.require(:review).permit(:content, :rating, :user_id, :activity_id)
  end


end