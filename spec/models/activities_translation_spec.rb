require "rails_helper"

RSpec.describe ActivitiesTranslation, :type => :model do
  describe "Check validation" do
    context "when invalid" do
      it "raises an error" do
        expect(build(:activities_translation, locale: nil)).not_to be_valid
        expect(build(:activities_translation, field_name: nil)).not_to be_valid
      end
    end
    it "Check for a valid factory" do
        expect(build(:activities_translation)).to be_valid
      end
  end

  describe "#double_local_for_one_field" do
    before do
      create(:activity)
    end
    context "valid" do
      it " 1 translation of each without problem" do
        create(:activities_translation, locale: 'fr', field_name: 'description')
        expect(ActivitiesTranslation.count).to eq(1)
      end

      it " 1 and 1 translation without problem" do
        create(:activities_translation, locale: 'fr', field_name: 'description')
        create(:activities_translation, locale: 'en', field_name: 'description')
        expect(ActivitiesTranslation.count).to eq(2)
      end
    end
    context "invalid" do
      it " 1 - 1 translation to change locale to 0 - 2" do
        create(:activities_translation, locale: 'fr', field_name: 'description')
        second_at = create(:activities_translation, locale: 'en', field_name: 'description')
        expect { second_at.update!(locale: 'fr') }.to raise_error(ActiveRecord::RecordInvalid)
        expect(ActivitiesTranslation.count).to eq(2)
      end

      it " 0 - 1 translation change locale to 0 - 2" do
        create(:activities_translation, locale: 'fr', field_name: 'description')
        expect(build(:activities_translation, locale: 'fr', field_name: 'description')).not_to be_valid
        expect(ActivitiesTranslation.count).to eq(1)
      end
    end
  end
end
