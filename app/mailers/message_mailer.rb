class MessageMailer < ApplicationMailer
	 default to: "lookfinder@gmail.com"

  def new_message(message)
    @message = message
    
    mail subject: "Message from #{message.name}"
  end
end
