class MessageMailer < ApplicationMailer
  def new_email
    @message = params[:message]

    mail(to: ENV["EMAIL"], subject: "You got a new message!")
  end

  def booked_email
    @message = params[:message]

    mail(to: ENV["EMAIL"], subject: "You got a new message!")
  end
end
