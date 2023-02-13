require 'rails_helper'

RSpec.describe MessagesController, type: :controller do
  describe '#new' do
    before(:each) do
      get :new
    end

    it { expect(response).to have_http_status(200) }
    it { should render_template(:new) }
  end

  describe '#create' do
    context "with valid params" do
      before(:each) do
        post :create, params: { message: {email: "bibi@gmail.com", name: "Pierre", nickname: "", message: "Hello World"} }
      end

      # it { expect(MessageMailer).to receive(:with).with(*(any_args)) } Need to recheck
      it { expect(response).to have_http_status(302) } # redirect_to '/'
    end
  end

  context "with invalid params" do
    before(:each) do
      post :create, params: { message: { email: "bibi@gmail.com" } }
    end

    it { expect(MessageMailer).not_to receive(:with).with(kind_of(Message)) }
    it { expect(response).not_to have_http_status(302) }
    it { should render_template(:new) }
  end
end
