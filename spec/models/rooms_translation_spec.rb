require "rails_helper"

RSpec.describe RoomsTranslation, :type => :model do
  describe "Check validation" do
    context "when invalid" do
      it "raises an error" do
        expect(build(:rooms_translation, locale: nil)).not_to be_valid
        expect(build(:rooms_translation, field_name: nil)).not_to be_valid
      end
      it "Check for a valid factory" do
        expect(build(:rooms_translation)).to be_valid
      end
    end
  end

  describe "#double_local_for_one_field" do
    before do
      create(:room)
    end
    context "valid" do
      it " 1 translation of each without problem" do
        create(:rooms_translation, locale: 'fr', field_name: 'description')
        expect(RoomsTranslation.count).to eq(1)
      end

      it " 1 and 1 translation without problem" do
        create(:rooms_translation, locale: 'fr', field_name: 'description')
        create(:rooms_translation, locale: 'en', field_name: 'description')
        expect(RoomsTranslation.count).to eq(2)
      end
    end
    context "invalid" do
      it " 1 - 1 translation to change locale to 0 - 2" do
        create(:rooms_translation, locale: 'fr', field_name: 'description')
        second_rt = create(:rooms_translation, locale: 'en', field_name: 'description')
        expect { second_rt.update!(locale: 'fr') }.to raise_error(ActiveRecord::RecordInvalid)
        expect(RoomsTranslation.count).to eq(2)
      end

      it " 0 - 1 translation change locale to 0 - 2" do
        create(:rooms_translation, locale: 'fr', field_name: 'description')
        expect(build(:rooms_translation, locale: 'fr', field_name: 'description')).not_to be_valid
        expect(RoomsTranslation.count).to eq(1)
      end
    end

    context "with many translations" do
      it " 2 - 1 - 1 - 2 translation to change locale to 2 - 1 - 2 - 1 " do
        create(:rooms_translation, locale: 'fr', field_name: 'ppl')
        create(:rooms_translation, locale: 'fr', field_name: 'description')
        create(:rooms_translation, locale: 'fr', field_name: 'details')
        create(:rooms_translation, locale: 'fr', field_name: 'detailz')
        rt = create(:rooms_translation, locale: 'en', field_name: 'ppl')
        create(:rooms_translation, locale: 'en', field_name: 'description')
        expect { rt.update!(field_name: 'details') }.not_to raise_error(ActiveRecord::RecordInvalid)
        expect(RoomsTranslation.count).to eq(6)
      end

      it " 2 - 1 - 1 - 2 translation to change locale to 2 - 1 - 0 - 3 " do
        create(:rooms_translation, locale: 'fr', field_name: 'ppl')
        create(:rooms_translation, locale: 'fr', field_name: 'description')
        create(:rooms_translation, locale: 'fr', field_name: 'details')
        rt = create(:rooms_translation, locale: 'fr', field_name: 'detailz')
        create(:rooms_translation, locale: 'en', field_name: 'ppl')
        create(:rooms_translation, locale: 'en', field_name: 'description')
        expect { rt.update!(field_name: 'description') }.to raise_error(ActiveRecord::RecordInvalid)
        expect(RoomsTranslation.count).to eq(6)
      end

      it " 2 - 1 - 1 - 2 translation to change locale to 2 - 2 - 0 - 2 " do
        create(:rooms_translation, locale: 'fr', field_name: 'ppl')
        create(:rooms_translation, locale: 'fr', field_name: 'description')
        create(:rooms_translation, locale: 'fr', field_name: 'details')
        rt = create(:rooms_translation, locale: 'fr', field_name: 'detailz')
        create(:rooms_translation, locale: 'en', field_name: 'ppl')
        create(:rooms_translation, locale: 'en', field_name: 'description')
        expect { rt.update!(locale: 'en', field_name: 'details') }.not_to raise_error(ActiveRecord::RecordInvalid)
        expect(RoomsTranslation.count).to eq(6)
      end
    end
  end
end
