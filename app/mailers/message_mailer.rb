class MessageMailer < ApplicationMailer
  def new_message(message)
    @message = message

    mail(
      to: 'info@haltthesilence.com',
      subject: "New Message!"
    )
  end
end
