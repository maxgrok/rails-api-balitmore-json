
class Api::V1::ListingsController < ApplicationController
	def index
		render json: Listing.all
	end
end
