require "rails_helper"

RSpec.describe Room, :type => :model do
  describe "Check validation" do
    context "when invalid" do
      it "raises an error" do
        expect(build(:room, name: nil)).not_to be_valid
      end
      it "doesn't raise an error when name given" do
        expect(build(:room)).to be_valid
      end
    end
  end
end
