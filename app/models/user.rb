class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :requests
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
  	unless self.role
  		self.role = :user
  	end
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

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end


end
