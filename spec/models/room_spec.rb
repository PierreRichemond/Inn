require "rails_helper"

RSpec.describe Room, :type => :model do
  describe "Check validation" do
    context "when invalid" do
      it "raises an error" do
        expect(build(:room, name: nil)).not_to be_valid
      end
      it "Check for a valid factory" do
        expect(build(:room)).to be_valid
      end
    end
  end

  context "Setters for Room translations" do
    let(:room) { create(:room) }
    describe "#set_ppl" do
      it "creates a room translation object" do
        room.set_ppl("fr", "2ppl room")
        expect(RoomsTranslation.count).to eq(1)
        expect(RoomsTranslation.first.text).to eq('2ppl room')
      end
      it "updates the original translation finding by locale" do
        room.set_ppl("fr", "3ppl room")
        expect(RoomsTranslation.count).to eq(1)
        expect(RoomsTranslation.first.text).to eq('3ppl room')
      end
    end

    describe "#set_description" do
      it "creates a room translation object" do
        room.set_description("fr", "Large room")
        expect(RoomsTranslation.count).to eq(1)
        expect(RoomsTranslation.first.text).to eq('Large room')
      end
      it "updates the original translation finding by locale" do
        room.set_description("fr", "Very large room")
        expect(RoomsTranslation.count).to eq(1)
        expect(RoomsTranslation.first.text).to eq('Very large room')
      end
    end

    describe "#set_details" do
      it "creates a room translation object" do
        room.set_details("fr", "Shower included")
        expect(RoomsTranslation.count).to eq(1)
        expect(RoomsTranslation.first.text).to eq('Shower included')
      end
      it "updates the original translation finding by locale" do
        room.set_details("fr", "Shower and Wc included")
        expect(RoomsTranslation.count).to eq(1)
        expect(RoomsTranslation.first.text).to eq('Shower and Wc included')
      end
    end

    describe "#set_detailz" do
      it "creates a room translation object" do
        room.set_detailz("fr", "Kid bed available")
        expect(RoomsTranslation.count).to eq(1)
        expect(RoomsTranslation.first.text).to eq('Kid bed available')
      end
      it "updates the original translation finding by locale" do
        room.set_detailz("fr", "Kid bed available, ask ahead")
        expect(RoomsTranslation.count).to eq(1)
        expect(RoomsTranslation.first.text).to eq('Kid bed available, ask ahead')
      end
    end
  end

  context "Getters for Room translations" do
    let(:room) { create(:room) }
    let(:rooms_translation) { create(:rooms_translation, locale: "fr", field_name: "ppl") }
    describe "#ppl" do
      it "ppl translation for the room" do
        room.set_ppl('fr', '2ppl room')
        expect(room.ppl("fr")).to eq('2ppl room')
      end
    end
    describe "#description" do
      it "description translation for the room" do
        room.set_description("fr", 'room-description')
        expect(room.description("fr")).to eq('room-description')
      end
    end
    describe "#details" do
      it "details translation for the room" do
         room.set_details('fr', 'details')
        expect(room.details("fr")).to eq('details')
      end
    end
    describe "#detailz" do
      it "detailz translation for the room" do
        room.set_detailz('fr', 'detailz')
        expect(room.detailz("fr")).to eq('detailz')
      end
    end
  end
end
