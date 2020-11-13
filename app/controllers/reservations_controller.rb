class ReservationsController < ApplicationController

  def new
    @reservation = Reservation.new
  end

  def create
    @activity = Activity.find(params[:reservation][:activity_id])
      params[:reservation][:user_id]= session[:user_id]
      params[:reservation][:activity_id] = params[:reservation][:activity_id].to_i
    @reservation = Reservation.new(reservation_params)
    @reservation.update(location: @activity.location, capacity: @activity.capacity, price: @activity.price, datetime: @activity.datetime)
    if @reservation.valid?
      @reservation.save
      @user = User.find(session[:user_id])
      @user.update(balance: @user[:balance].to_i - @reservation.activity.price)
    else
      @message = @reservation.errors.full_messages
    end
      redirect_to reservation_path(@reservation)
  end

end 