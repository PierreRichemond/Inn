require "rails_helper"

RSpec.describe Booking, :type => :model do
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

    context "#end_date_past_start_date" do
      it "ensures the end date of a booking is past the start date" do
        expect(build(:booking, start_date: 5.days.ago, end_date: 1.days.ago)).to be_valid
        expect(build(:booking, start_date: 1.days.ago, end_date: 5.days.ago)).not_to be_valid
      end
    end
  end

  describe "#overlap" do
    let!(:booking1) { create(:booking, start_date: 10.days.ago, end_date: 9.days.ago) }
    let!(:booking2) { create(:booking, start_date: 5.days.ago, end_date: 4.days.ago) }
    context "when overlaps existing booking" do
      it 'is invalid' do
        expect(build(:booking, start_date: 10.days.ago, end_date: 9.days.ago)).not_to be_valid
        expect(build(:booking, start_date: 11.days.ago, end_date: 10.days.ago)).not_to be_valid
        expect(build(:booking, start_date: 9.days.ago, end_date: 8.days.ago)).not_to be_valid
        expect(build(:booking, start_date: 6.days.ago, end_date: 5.days.ago)).not_to be_valid
        expect(build(:booking, start_date: 15.days.ago, end_date: 5.days.ago)).not_to be_valid
        expect(build(:booking, start_date: 7.days.ago, end_date: 1.days.ago)).not_to be_valid
        expect(build(:booking, start_date: 6.days.ago, end_date: 2.days.ago)).not_to be_valid
      end
      it "is valid" do
        expect(build(:booking, start_date: 12.days.ago, end_date: 11.days.ago)).to be_valid
        expect(build(:booking, start_date: 8.days.ago, end_date: 7.days.ago)).to be_valid
        expect(build(:booking, start_date: 7.days.ago, end_date: 6.days.ago)).to be_valid
        expect(build(:booking, start_date: 2.days.ago, end_date: 1.days.ago)).to be_valid
        expect(build(:booking, start_date: 2.days.from_now, end_date: 5.days.from_now)).to be_valid
        expect(build(:booking, start_date: 5.days.from_now, end_date: 10.days.from_now)).to be_valid
        expect(build(:booking, start_date: 20.days.from_now, end_date: 30.days.from_now)).to be_valid
      end
    end
  end
end
