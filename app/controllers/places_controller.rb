class PlacesController < ApplicationController


	def index

		# @places=place.near ("london")
		# if the user has searched for a location
		# else show all the places near london
		# then param they;ve search for is params[:location]


		if params[:location].present?
			# search for the places near params[:location]
			@places = Place.near(params[:location])

		else

			# search for places near london
			@places = Place.near("London")

			# Place.all - all the location 

		end 
	end





	def new 

		@place = Place.new

	end

	def create 

		@place = Place.new(place_params)

		if @place.save

			redirect_to root_path

		else
			render "new"

		end 


	end

	def place_params

		params.require(:place).permit(:title, :address, :latitude, :longitude)


	end





end
