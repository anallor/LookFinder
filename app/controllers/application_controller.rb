class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  helper_method :current_store

  def admin_only
		unless current_user && current_user.role == "admin"
			flash[:access_denied] = "Acess denied. You must be admin to see this page."
		redirect_to '/'
	end
  end

  	def current_store
  		if @currente_store.nil?
  		@current_store = Store.find_by(id: session[:store_id])
  	end
  	@current_store
  end

  protected
  def configure_permitted_parameters
  	devise_parameter_sanitizer.for(:sign_up) << :name
  end
end
