require 'rails_helper'

describe Admin::BookingsController, :type => :controller do
  render_views
  login_admin

  describe 'Admin can see ' do
    it "booking index" do
      get :index
    end
  end

  describe 'Admin can see ' do
    it "booking#new" do
      get :new
    end
  end

  describe "Admin can " do
    it 'create an booking' do
      room = create(:room)
      post :create, params: { booking: { start_date: 5.days.ago, end_date: 3.days.ago, room_id: room.id } }
      expect(Booking.all.count).to eq(1)
    end
  end

  describe "Admin can see " do
    it "booking show" do
      booking = create(:booking)
      get :show, params: { id: booking.id }
      expect(response.body.include?(booking.room.name)).to be(true)
    end
  end

  describe 'Admin can see ' do
    it "booking#edit" do
      booking = create(:booking)
      get :edit, params: { id: booking.id }
    end
  end

  describe "Admin can " do
    it 'update an booking' do
      booking = create(:booking)
      post :update, params: { "booking" => { start_date: 5.days.ago, end_date: 3.days.ago }, "id" => booking.id }
    end
  end

  describe "Admin can " do
    it 'delete a booking' do
      booking = create(:booking)
      delete :destroy, params: { id: booking.id }
      expect(Booking.all.count).to eq(0)
    end
  end
end
