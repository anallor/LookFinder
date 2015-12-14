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

	 def destroy
    @user = User.find(params[:id])
    @user.destroy

    if @user.destroy
        redirect_to '/', notice: "User deleted."
    end
  end



end
