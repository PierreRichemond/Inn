require 'rails_helper'

RSpec.describe PagesController, type: :controller do
  describe '#home' do
    before(:each) do
      get :home
    end

    it { expect(response).to have_http_status(200) }
    it { should render_template(:home) }
  end
end
