require 'rails_helper'

RSpec.describe PaymentsController, type: :controller do
  describe '#home' do
    login_user
    let!(:booking_attempt) { create(:booking_attempt, user: User.first, id: 1234, state: "pending") }

    before(:each) do
      get :new, params: { booking_attempt_id: 1234 }
    end

    it { should respond_with :success }
    it { should render_template(:new) }
  end
end
