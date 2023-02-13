RSpec.describe MessageMailer, :type => :mailer do
  describe "new_email" do
    let!(:message) { build(:message) }

    it "renders the headers" do
      expect (MessageMailer.with(message: message).new_email.deliver_now).to change { ActionMailer::Base.deliveries.count }.by(1)
    end
  end

  describe "booked_email" do
    let!(:room1) { create(:room) }
    let!(:booking) { create(:booking, start_date: 8.days.from_now, end_date: 10.days.from_now, room_id: room1.id, state: "Paid") }

    it "renders the headers" do
      expect (MessageMailer.with(booking: booking).booked_email).to change { ActionMailer::Base.deliveries.count }.by(1)
    end
  end
end
