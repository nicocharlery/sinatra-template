require 'spec_helper'

describe LoginController do
  describe "Sign up" do
    it "should return 406 status code" do
      post '/signup'
      expect(last_response.status).to eq 406
    end
  end
end
