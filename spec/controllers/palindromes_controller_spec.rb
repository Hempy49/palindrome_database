require 'rails_helper'

RSpec.describe PalindromesController, type: :controller do
  describe 'GET /index' do
    it 'responds with 200' do
      get :index
      expect(response).to have_http_status(200)
    end
  end

  describe '/new' do
    it 'responds with 200' do
      get :new
      expect(response).to have_http_status(200)
    end

    it 'adds palindrome to database' do
      expect{ Palindrome.create(text: "Dammit I'm Mad") }.to change{ Palindrome.count }.by(1)
    end
  end
end
