require "rails_helper"

RSpec.describe BookingAttempt, :type => :model do
  describe "Check validation" do
    context "when invalid" do
      it "raises an error" do
        expect(build(:booking, start_date: nil)).not_to be_valid
        expect(build(:booking, end_date: nil)).not_to be_valid
      end
      it "Check for a valid factory" do
        expect(build(:booking)).to be_valid
      end
    end
  end
end
