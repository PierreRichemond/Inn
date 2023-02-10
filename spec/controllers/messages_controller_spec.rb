require 'rails_helper'

RSpec.describe MessagesController, type: :controller do
  describe '#new' do
    before(:each) do
      get :new
    end

    it { should respond_with :success }
    it { should render_template(:new) }
  end

  describe '#create' do
    context "with valid params" do
      before(:each) do
        post :create, params: { message: {email: "bibi@gmail.com", name: "Pierre", nickname: "Bibi", message: "Hello World"} }
      end

      it { should change { Message.count }.by(1) }
      it { should respond_with :success }
      it { should redirect_to("/") }
    end
  end

  context "with invalid params" do
    before(:each) do
      post :create, params: { message: { email: "bibi@gmail.com" } }
    end

    it { should_not change { Message.count }.by(1) }
    it { should_not respond_with :success }
    it { should render_template(:new) }
  end
end
