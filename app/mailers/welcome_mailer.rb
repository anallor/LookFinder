class WelcomeMailer < ApplicationMailer

	def welcome_email(user)
		@user = user
		mail(to: @user.email, subject: "Bienvenido, #{@user.name}")
	end
end
