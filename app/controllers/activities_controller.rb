class ActivitiesController < ApplicationController

  def index
    @activities = if params[:filter] == 'highest_rated'
      Activity.highest_rated
    else 
      Activity.all
    end
  end

  def new
    @activity = Activity.new
  end

  def create
    if current_user.admin
      @activity = Activity.new(activity_params)
      @activity.save
      redirect_to activities_path
    else 
      redirect_to new_activity_path
    end 
  end

  def show
    @activity = Activity.find(params[:id])
  end

  def destroy
    @activity = Activity.find(params[:id])
    @activity.destroy
    redirect_to activities_path
    flash[:notice] = "Your Activity on #{@activity.start_at} has been canceled"
  end

  private

  def activity_params
    params.require(:activity).permit(:title, :description, :rating, :location, :capacity, :price, :start_at, :end_at, :imageurl, :user_id)
  end

end