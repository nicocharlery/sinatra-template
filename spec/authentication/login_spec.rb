require 'spec_helper'

describe FiveWhys::LoginController do
  context 'when no params' do
    it "should return 406 status code" do
      post '/login'
      expect(last_response.status).to eq 406
    end
  end

  context 'when params sent' do
  end

end
