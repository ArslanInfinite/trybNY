class ActivitiesController < ApplicationController

  def index
    @activities = Activity.all
  end

  def new
    @activity = Activity.new
  end

  def create
    if current_user.admin? 
      @activity = Activity.create(activity_params)
      redirect_to activities_path
    else 
      flash[:error] = "Only Admins Can Create An Activity"
      redirect_to activities_path
    end 
  end

  def show
    @activity = Activity.find(params[:id])
  end

  private

  def activity_params
    params.require(:activity).permit(:title, :description, :rating, :location, :capacity, :price, :start_at)
  end

end