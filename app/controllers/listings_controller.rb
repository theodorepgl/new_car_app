class ListingsController < ApplicationController
  before_action :set_listing, only: [:show, :edit, :update, :destroy]

  def index
    @listing = Listing.all.order(:created_at)
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.create(listing_params)

    if @listing.save
      redirect_to @listing, notice: 'List was successfully created.'
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @listing.update(listing_params)
      redirect_to @listing, notice: 'Listing was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @listing.destroy
    redirect_to listings_path, notice: 'List was successfully destroyed.'
  end

  private

  def listing_params
    params.require(:listing).permit(:photos, :pickup_location, :dropoff_location, :distance, :price)
  end

  def set_listing
    @listing = Listing.find(params[:id])
  end

end
