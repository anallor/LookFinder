class MessageMailer < ApplicationMailer
	 default to: "lookfinder@gmail.com"

  def new_message(message)
    @message = message
    
    mail subject: "Mensaje de #{message.name}"
  end
end
