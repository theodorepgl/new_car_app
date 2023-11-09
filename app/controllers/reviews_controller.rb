class ReviewsController < ApplicationController
	before_action :authenticate_user!
	before_action :find_booking
	before_action :find_review, only: [:edit, :update, :destroy]

	def index
		@reviews = Review.all
	end

	def new
		@review = Review.new
	end

	def create
		@review = Review.new(review_params)
		@review.listing_id = @booking.id 
		@review.user_id = current_user.id

		if @review.save
			redirect_to customer_booking_path(@booking)
		else
			render 'new'
		end
	end

	def edit
		
	end

	def update
		if @review.update(review_params)
			redirect_to customer_booking_path(@booking)
		else
			render 'edit'
		end
	end

	def destroy
		@review.destroy
		redirect_to customer_car_path(@car)
	end

	private
		def find_booking
			@booking = Booking.find(params[:booking_id])
		end

		def find_review
			@review = Review.find(params[:id])
		end

		def review_params
			params.require(:review).permit(:comment, :rating, :user_id)
		end

end