require "rails_helper"

RSpec.describe ActivitiesTranslation, :type => :model do
  describe "Check validation" do
    context "when invalid" do
      it "raises an error" do
        expect(build(:activities_translation, locale: nil)).not_to be_valid
        expect(build(:activities_translation, field_name: nil)).not_to be_valid
      end
      it "Check for a valid factory" do
        expect(build(:activities_translation)).to be_valid
      end
    end
  end
end
