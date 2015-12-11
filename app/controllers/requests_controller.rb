class RequestsController < ApplicationController

	def new
		@request = Request.new
		@stores = Store.all
		@cities = Place.all
	end

	def create

	 	request = user_signed_in? ? current_user.requests : Request
	 	@request = request.new request_params
	 	if @request.save
	 		
			flash[:notice] = 'Request created successfully'
			redirect_to request_path(@request.id)
		else 
			render 'new'
		end
		
	end

	def show
		@request = Request.find(params[:id])
		@has_stores = @request.has_stores?
		@stores_by_place = Store.where(place: @request.place)
	end

	def index
	 @requests = Request.all
	end


	private

	def request_params
		params.require(:request).permit(:product, :place, :name, :email)
	end
end

