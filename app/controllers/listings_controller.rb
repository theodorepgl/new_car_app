class ListingsController < ApplicationController
  def index
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.find(params[:id])
  end
end
