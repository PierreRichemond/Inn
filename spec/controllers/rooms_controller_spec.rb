require 'rails_helper'

RSpec.describe RoomsController, type: :controller do
  describe '#index' do
    let!(:room1) { create(:room) }

    before(:each) do
      get :index
    end

    it { expect(response).to have_http_status(200) }
    it { should render_template(:index) }
  end
end
