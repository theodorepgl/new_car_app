class BookingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  def index
    @bookings = Booking.all
  end

  def new
    @listing = Listing.find_by(id: params[:listing_id])
    @booking = Booking.new
  end

  def create
    @booking = current_user.bookings.create(booking_params)

    if @booking.save
      redirect_to @booking, notice: 'Booking was successfully created.'
    else
      render :new
    end
  end

  def show
  end

  def edit
    @listing = Listing.find_by(id: @booking.listing_id)
  end

  def update
    if @booking.update(booking_params)
      redirect_to @booking, notice: 'Booking was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path, notice: 'Booking was successfully destroyed.'
  end

  private

  def booking_params
    params.require(:booking).permit(:photos, :car_type, :pickup_datetime, :listing_id)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
