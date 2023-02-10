require 'rails_helper'

RSpec.describe ActivitiesController, type: :controller do
  describe '#index' do
    before(:each) do
      get :index
    end

    it { should respond_with :success }
    it { should render_template(:index) }
  end
end
