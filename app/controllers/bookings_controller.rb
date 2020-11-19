class BookingsController < ApplicationController

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
    @bunker = Bunker.find(params[:bunker_id])
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new(booking_params)
    @bunker = Bunker.find(params[:bunker_id])
    @booking.bunker = @bunker
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to booking_path(@booking)
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to booking_path
  end

  def accepted
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.update(status: "accepted")
    redirect_to bookings_path
  end

  def refused
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.update(status: "refused")
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:nb_participants, :start_date, :end_date, :total_price, :status)
  end
end
