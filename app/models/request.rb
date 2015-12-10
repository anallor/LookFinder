class Request < ActiveRecord::Base
	belongs_to :user
	validates_presence_of :product
	validates_presence_of :place
	# validates_presence_of :name, :message => "Este campo no puede estar vacío"
	# validates_presence_of :email, :message => "Este campo no puede estar vacío"

	after_create :send_emails


	# def has_stores?
	# 	Store.exists?(place: place)
	# end
		
	def send_emails
		store_emails = Store.where(place: place).pluck(:email)
	 	RequestMailer.request_email(store_emails).deliver_now if store_emails.present?
	end

	

end

