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
			flash[:info] = 'Tienda almacenada en la base de datos satisfactoriamente'
			redirect_to store_path(@store.id)
		else 
			render 'new'
		end
	end

	def edit
		@store = Store.find(params[:id])
	end

	def update
		@store = Store.find(params[:id])
    if @store.update_attributes(store_params)
    	redirect_to store_path(@store.id)
    else
      render 'edit'
    end
	end

	private

	def store_params
		params.require(:store).permit(:name, :email, :telephone, :place, :postcode, :address, :latitude, :longitude, :apparel, :password, :password_confirmation)
	end
end
