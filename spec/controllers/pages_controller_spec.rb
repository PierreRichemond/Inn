require 'rails_helper'

RSpec.describe PagesController, type: :controller do
  describe '#home' do
    before(:each) do
      get :home
    end

    it { should respond_with :success }
    it { should render_template(:home) }
  end
end
