class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
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
    authorize @booking
    @bunker = Bunker.find(params[:bunker_id])
    @booking.bunker = @bunker
    @booking.user_id = current_user.id
    if @booking.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def update
    @booking = Booking.find(params[:id])
    authorize @booking
    if params[:status] == "Accept"
      @booking.update(status: "Accept")
    else
      @booking.update(status: "Refuse")
    end
  redirect_to dashboard_path
  end

  def accept
    booking = Booking.find(params[:id])
    booking.update_attribute(:status, "accepted")
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to booking_path
  end

  private

  def booking_params
    params.require(:booking).permit(:nb_participants, :start_date, :end_date, :total_price, :status)
  end
end
