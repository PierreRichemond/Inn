# class BaseWorkerJob
#   include Sidekiq::Job
#   sidekiq_options retry: false

#   def perform(*args)
#     # Do something
#     bookings = Booking.this_month
#     string_message = "Hello,
#                       This month, your #{bookings.count} bookings represent a total amount of #{bookings.sum(:amount_cents)}"
#     @message = Message.new(email: ENV["EMAIL"], name: "Monthly automatic message", message: string_message)
#     MessageMailer.with(message: @message).new_email.deliver_now
#   end
# end
