class Request < ActiveRecord::Base
	belongs_to :user
	validates_presence_of :product
	validates_presence_of :place
	# validates_presence_of :name, :message => "Este campo no puede estar vacío"
	# validates_presence_of :email, :message => "Este campo no puede estar vacío"

	after_create :send_emails


	def has_stores?
	 Store.exists?(place: place)
	end
		
	def send_emails
		store_emails = Store.where(place: place).pluck(:email)

		if user_id?
			requester_name = user.name
			requester_email = user.email
		else
			requester_name = name
			requester_email = email
		end
		store_emails.each do |email|
	 	  RequestMailer.request_email(self, email, requester_name, requester_email).deliver_now
		end
	end

	

end

