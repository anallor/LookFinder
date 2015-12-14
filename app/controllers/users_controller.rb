class UsersController < ApplicationController
	before_action :admin_only, only: [:index]
	before_action :authenticate_user!, only: [:show]

	def index
		@users = User.all
	end
	def show
		@user = User.find(params[:id])
		@requests = @user.requests.all
	end

	def create
		@user = User.new(user_params)
	if @user.save
		WelcomeMailer.welcome_email(@user).deliver_now
		redirect_to user_path
	else
		render :new
	end

end

	def user_params
		params.require(:user).permit(:name, :email)
	end

end
