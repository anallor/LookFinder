class RequestMailer < ApplicationMailer

	def request_email(request, email, requester_name, requester_email)
		@request = request
		@name = requester_name
		@email = requester_email
		mail(to: email, subject: 'Nueva búsqueda de LookFinder')
		
	end
end
