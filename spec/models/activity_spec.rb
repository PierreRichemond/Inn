require "rails_helper"

RSpec.describe Activity, :type => :model do
  describe "Check validation" do
    context "when invalid" do
      it "raises an error" do
        expect(build(:activity, address: nil)).not_to be_valid
      end
      it "Check for a valid factory" do
        expect(build(:activity)).to be_valid
      end
    end
  end

  context "Setters for activity translations" do
    let(:activity) { create(:activity) }

    describe "#set_description" do
      it "creates a activity translation object" do
        activity.set_description("fr", "Large activity")
        expect(ActivitiesTranslation.count).to eq(1)
        expect(ActivitiesTranslation.first.text).to eq('Large activity')
      end
      it "updates the original translation finding by locale" do
        activity.set_description("fr", "Very large activity")
        expect(ActivitiesTranslation.count).to eq(1)
        expect(ActivitiesTranslation.first.text).to eq('Very large activity')
      end
    end
  end

  context "Getters for activity translations" do
    let(:activity) { create(:activity) }
    let(:activities_translations) { create(:activities_translations, locale: "fr", field_name: "description") }
    describe "#description" do
      it "description translation for the activity" do
        activity.set_description('fr', "Large castle")
        expect(activity.description("fr")).to eq("Large castle")
      end
    end
  end
end
