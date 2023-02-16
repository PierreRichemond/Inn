require 'rails_helper'

describe Admin::RoomsController, :type => :controller do
  render_views
  login_admin

  describe 'Admin can see ' do
    it "room index" do
      room1 = create(:room)
      room2 = create(:room, name: "room 2")
      get :index
      expect(response.body.include?(room1.name)).to be(true)
      expect(response.body.include?(room2.name)).to be(true)
    end
  end

  describe 'Admin can see ' do
    it "room#new" do
      get :new
    end
  end

  describe "Admin can " do
    it 'create an room' do
      post :create, params: { room: { name: "room_test", price: 0 } }
      expect(Room.all.count).to eq(1)
    end
  end

  describe "Admin can see " do
    it "room show" do
      room = create(:room)
      get :show, params: { id: room.id }
      expect(response.body.include?(room.name)).to be(true)
    end
  end

  describe 'Admin can see ' do
    it "room#edit" do
      room = create(:room)
      get :edit, params: { id: room.id }
    end
  end

  describe "Admin can " do
    it 'update an room' do
      room = create(:room)
      post :update, params: { "room"=>{"name"=>"new_name", "price_cents"=>"0"}, "commit"=>"Modifier ce(tte) Room", "locale"=>"fr", "controller"=>"admin/rooms", "action"=>"update", "id"=>room.id}
    end
  end

  describe "Admin can " do
    it 'delete a room' do
      room = create(:room)
      delete :destroy, params: { id: room.id }
      expect(Room.all.count).to eq(0)
    end
  end
end
