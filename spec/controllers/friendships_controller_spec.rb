require 'rails_helper'

RSpec.describe FriendshipsController, type: :controller do

  before(:each) do 
    user = FactoryBot.create(:user)
    @friend = FactoryBot.create(:user, :friend)
    sign_in(user)
  end 

  describe 'GET/' do 
    it 'returns page with all friends' do 
      get :index 
      expect(response).to have_http_status(200)
    end 
  end 

  describe 'GET/new' do 
    it 'returns page to add friend' do 
    get :new 
    expect(response).to have_http_status(200)
    end 
  end 

  describe 'POST/create' do
    it 'adds a friend' do 
    post :create, params: { friendship: { friend_id: @friend.id} }
    expect(response).to redirect_to friendships_path
    end 
  end 

end 