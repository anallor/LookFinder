class StoresController < ApplicationController

	def index
		@stores = Store.all
	end

	def show
		@store = Store.find(params[:id])

		respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @store }
       end

	end
end
