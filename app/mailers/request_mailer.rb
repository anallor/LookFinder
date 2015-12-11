class RequestMailer < ApplicationMailer
	default from: 'lookfinder@gmail.com'

	def request_email(request, store)
		@stores = Store.all
		@stores.each do |store|
		end
		@request = request
		if @request.user_id?
			@name = @request.user.name
			@email = @request.user.email
		else
			@name = @request.name
			@email = @request.email
		end
		mail(to: store, subject: 'Somebody is looking for something')
	end
end
