require 'spec_helper'

describe FiveWhys::SignupController do

  before(:each) do
    Database.session['users'].find.remove_all
  end

  context 'when no params' do
    it "should return 406 status code" do
      post '/signup'
      expect(last_response.status).to eq 406
    end
  end

  context 'when good params sent' do
    before(:each) { post '/signup/username/nicolas/password/toto' }

    it 'respond with 200' do
      expect(last_response.status).to eq 200
    end

    it 'saves user in repository' do
      user = FiveWhys::UserRepository.all.first
      expect(user.username).to eq 'nicolas'
      expect(user.password).to eq 'toto'
    end

    it 'ensure only one user is saved' do
      users = FiveWhys::UserRepository.all
      expect(users.length).to eq 1
    end
  end

end
