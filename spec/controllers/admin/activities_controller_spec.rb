require 'rails_helper'

describe Admin::ActivitiesController, :type => :controller do
  render_views
  login_admin

  describe 'Admin can see ' do
    it "activity index" do
      activity1 = create(:activity)
      activity2 = create(:activity, name: "activity 2")
      get :index
      expect(response.body.include?(activity1.name)).to be(true)
      expect(response.body.include?(activity2.name)).to be(true)
    end
  end

  describe 'Admin can see ' do
    it "activity#new" do
      get :new
    end
  end

  describe "Admin can " do
    it 'create an activity' do
      post :create, params: { activity: { name: "activity_test", price: 0 } }
      expect(Activity.all.count).to eq(1)
    end
  end

  describe "Admin can see " do
    it "activity show" do
      activity = create(:activity)
      get :show, params: { id: activity.id }
      expect(response.body.include?(activity.name)).to be(true)
    end
  end

  describe 'Admin can see ' do
    it "activity#edit" do
      activity = create(:activity)
      get :edit, params: { id: activity.id }
    end
  end

  describe "Admin can " do
    it 'update an activity' do
      activity = create(:activity)
      post :update, params: { "activity" => {"name" => "new_name"}, "id" => activity.id }
    end
  end

  describe "Admin can " do
    it 'delete a activity' do
      activity = create(:activity)
      delete :destroy, params: { id: activity.id }
      expect(Activity.all.count).to eq(0)
    end
  end
end
