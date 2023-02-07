require 'spec_helper'

RSpec.describe BookingAttemptService, type: :model do
  describe '#self.create(room, params, current_user)' do
    let(:current_user) { create(:user) }
    let(:room) { create(:room) }
    let(:params) { { start_date: "2023-02-10", end_date: "2023-02-17", room_id: room.id } }
    it "create an instance of BookingAttempt" do
      expect { BookingAttemptService.create(room, params, current_user) }.to change { BookingAttempt.count }.by(1)
    end
  end
end
