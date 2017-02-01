class ReviewsController < ApplicationController

	before_action :find_school
	before_action :find_review, only: [:edit, :update, :destroy]
	before_action :authenticate_user!, only: [:new, :edit]
	
	def new
		@review = Review.new
	end

	def create
		@review = Review.new(review_params)
		@review.school_id = @school.id
		@review.user_id = current_user.id

		if @review.save
			redirect_to school_path (@school)
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @review.update(review_params)
			redirect_to school_path (@school)
		else
			render 'edit'
		end
	end

	def destroy
		@review.destroy
		redirect_to school_path (@school)
	end

	private

		def find_review
			@review = Review.find(params[:id])
		end


		def review_params
			params.require(:review).permit(:rating, :academics, :assistance, :life, :comment, :campus, :return, :delay, :career)
		end

		def find_school
			@school = School.find (params[:school_id])
		end

end
