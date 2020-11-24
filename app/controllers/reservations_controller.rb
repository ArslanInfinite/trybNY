class ReservationsController < ApplicationController

  def index
    @reservations = Reservation.all
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @activity = Activity.find(params[:reservation][:activity_id])
      params[:reservation][:user_id]= session[:user_id]
      params[:reservation][:activity_id] = params[:reservation][:activity_id].to_i
    @reservation = Reservation.new(reservation_params)
    if @reservation.valid?
      @reservation.save
      @user = User.find(session[:user_id])
      @user.update(balance: @user[:balance].to_i - @reservation.activity.price)
    else
      @message = @reservation.errors.full_messages
    end
      redirect_to reservation_path(@reservation)
  end

  def edit
    @reservation = Reservation.find(params[:id])
  end

  def update
    @reservation = Reservation.find(params[:id])
    @reservation.update(reservation_params)
    redirect_to reservation_path(@reservation)
  end

  def show
    @reservation = Reservation.find(params[:id])
    @activity = Activity.find(@reservation.activity_id)
    @user = User.find(@reservation.user_id)
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to activities_path
    flash[:notice] = "Your reservation on #{@reservation.activity.start_at} has been canceled"
  end

private

  def reservation_params
    params.require(:reservation).permit(:user_id, :activity_id)
  end

end 