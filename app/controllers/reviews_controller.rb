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
    @review = Review.create(review_params)
    redirect_to activity_path(@review.activity)
  end

private

  def review_params
    params.require(:review).permit(:content, :rating, :user_id, :activity_id)
  end


end