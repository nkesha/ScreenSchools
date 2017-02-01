class SchoolsController < ApplicationController
	before_action :find_school, only: [:show, :edit, :update, :destroy]
	#here we are making sure that the user cannot access certain pages without authentification.
	before_action :authenticate_user!, only: [:new, :edit]

	def search
		if params[:search].present?
			@schools = School.search(params[:search])
		else
			@schools = School.all.order ("created_at DESC")
		end
	end

	def index
		@schools = School.all.order ("created_at DESC")
	end
#to show details of a school
	def show
		if @school.reviews.blank?
			@average_rating = 0
			@average_academics = 0
			@average_assistance = 0
			@average_life = 0
			@average_campus = 0
			@average_return = 0
			@average_delay = 0
			@average_career = 0
		else
			@average_rating = @school.reviews.average(:rating).round(2)
			@average_academics = @school.reviews.average(:academics).round(2)
			@average_assistance = @school.reviews.average(:assistance).round(2)
			@average_life = @school.reviews.average(:life).round(2)
			@average_campus = @school.reviews.average(:campus).round(2)
			@average_return = @school.reviews.average(:return).round(2)
			@average_delay = @school.reviews.average(:delay).round(2)
			@average_career = @school.reviews.average(:career).round(2)
		end
	end

	def new
		@school = current_user.schools.build
	end

	def create
		@school = current_user.schools.build(school_params)

		if @school.save
			redirect_to root_path
		else
			render 'new'
		end

	end

	def update
		if @school.update(school_params)
			redirect_to school_path(@school)
		else
			render 'edit'
		end
	end

	def edit
	end

	def destroy
		@school.destroy
		redirect_to root_path
	end



	private
		def school_params
			params.require(:school).permit(:title, :location, :program)
		end

		def find_school
			@school = School.find (params[:id])
		end

end
