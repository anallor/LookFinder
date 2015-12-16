class SessionsController < ApplicationController
	def create
		store = Store.find_by(email: params[:email])
		if store && store.authenticate(params[:password])
			session[:store_id] = store.id
		redirect_to '/'
	  else
	  	redirect_to 'login'
	  end
	end

	def destroy
		session.clear
		redirect_to '/'
	end
end
