class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :requests
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  after_initialize :set_default_role, :if => :new_record?

  after_create :welcome_email


private

  def set_default_role
    self.role = :user unless self.role
  end

  def welcome_email
      WelcomeMailer.welcome_email(self).deliver_now
  end


end
