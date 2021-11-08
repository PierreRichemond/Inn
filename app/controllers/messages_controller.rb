class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(contact_params)

    if @message.save
      MessageMailer.with(message: @message).new_email.deliver_now

      flash[:success] = "Thank you for your message! We'll get contact you soon!"
      redirect_to root_path
    else
      flash.now[:error] = "Your order message had some errors. Please check the message and resubmit."
      render :new
    end
  end

  private

  def contact_params
    params.require(:message).permit(:email, :name, :message)
  end
end
