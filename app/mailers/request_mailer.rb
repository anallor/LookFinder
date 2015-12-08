class RequestMailer < ApplicationMailer
	default from: 'lookfinder@gmail.com'

	def request_email(store)
		@request = Request.last
		@user = User.last
		mail(to: store, subject: 'Somebody is looking for something')
	end
end
