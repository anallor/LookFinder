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
end
