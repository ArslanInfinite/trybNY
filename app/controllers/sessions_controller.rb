class SessionsController < ApplicationController
  skip_before_action :redirect_if_not_logged_in, only: [:new, :create, :destroy]

  def new
    render :new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      flash[:notice] = 'Invalid username or password.'
      redirect_to login_path
    end
  end

  def destroy
    session.delete(:user_id)
    session[:reservation] = nil
    session[:user_id] = nil
    flash[:notice] = 'You are logged out.'
    redirect_to login_path
  end

  # def mainpage
  #   @user = User.find(session[:user_id])
  #   render "/mainpage"
  # end

end