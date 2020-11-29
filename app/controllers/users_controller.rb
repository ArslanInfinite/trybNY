class UsersController < ApplicationController
  skip_before_action :redirect_if_not_logged_in, only: [:new, :create]

  def index 
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(balance: user_params[:balance].to_i + @user.balance)
    redirect_to user_path(@user)
  end

  def show
    @user = User.find_by(id: params[:id])
    render :layout => false
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = "Your user account has been deleted."
    redirect_to welcome_path
  end

  def user_activities
    @user = User.find_by(id: params[:id])
    @reservations = @user.reservations
    render template: 'users/user_activities'
  end

  def activity 
    @user = User.find_by(id: params[:id])
    @activity = Activity.find(params[:activity_id])
    render template: 'activities/show'
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :balance, :admin)
  end
end