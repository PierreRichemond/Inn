module Previews
  class MessageMailerPreview < ActionMailer::Preview
    def new_email
      # Set up a temporary order for the preview
      message = Message.new(name: "Joe Smith", email: "joe@gmail.com", address: "1-2-3 Chuo, Tokyo, 333-0000", phone: "090-7777-8888", message: "I want to place an order!")
      MessageMailer.with(message: message).new_email
    end
  end
end
