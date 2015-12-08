class RequestsController < ApplicationController

	def new
		@request = Request.new
	end

	def create
	 if user_signed_in?
		@user = User.find(current_user)
		@request = @user.requests.new request_params

		@stores_by_place = Store.where(Store.arel_table[:place].matches(@request.place))
		 s = @stores_by_place
		 @store_emails = s.map { |store| store.email }

		if @request.save
			RequestMailer.request_email(@store_emails).deliver_now
			flash[:notice] = 'Request created successfully'
			redirect_to request_path(@request.id)
		else
			render 'new'
		end

	 else
		@request = Request.new request_params

		@stores_by_place = Store.where(Store.arel_table[:place].matches(@request.place))
		 s = @stores_by_place
		 @store_emails = s.map { |store| store.email }

		if @request.save
			RequestMailer.request_email(@store_emails).deliver_now
			flash[:notice] = 'Request created successfully'
			redirect_to request_path(@request.id)
		else
			render 'new'
		end
	 end
	end

	def show
		@request = Request.find(params[:id])
		@stores_by_place = Store.where(Store.arel_table[:place].matches(@request.place))
	end

	def index
	 @requests = Request.all
	end


	private

	def request_params
		params.require(:request).permit(:product, :place, :name, :email)
	end
end
