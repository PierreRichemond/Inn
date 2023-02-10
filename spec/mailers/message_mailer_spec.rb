RSpec.describe MessageMailer, :type => :mailer do
  describe "new_email" do
    let!(:message) { create(:message) }

    it "renders the headers" do
      expect (MessageMailer.with(message: message).new_email.deliver_now).to change { ActionMailer::Base.deliveries.count }.by(1)
    end
  end

  describe "booked_email" do
    let!(:message) { create(:message) }

    it "renders the headers" do
      expect (MessageMailer.with(message: message).booked_email.deliver_now).to change { ActionMailer::Base.deliveries.count }.by(1)
    end
  end
end
