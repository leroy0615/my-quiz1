class HomesController < ApplicationController
	def index
		@homes=Home.all

	end

	def new
		@home = Home.new
	end

	def create
		Home.create(home_params)
		redirect_to root_path
	end

	private

	def home_params
		params.require(:home).permit(:name, :description, :grade)
	end
end
