class StoresController < ApplicationController

	def index
		@stores = Store.all
	end

	def show
		@store = Store.find(params[:id])

 respond_to do |format|
 format.html
 format.json { render json: @store }
 end

	end

	def new
		@store = Store.new
	end

	def create
	 	@store = Store.new store_params
	 	if @store.save
			flash[:notice] = 'Store created successfully'
			redirect_to store_path(@store.id)
		else 
			render 'new'
		end
	end

	private

	def store_params
		params.require(:store).permit(:name, :email, :telephone, :place, :postcode, :address, :latitude, :longitude, :password, :password_confirmation)
	end
end
