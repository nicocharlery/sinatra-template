class FiveWhys
class LoginController < ApplicationController
  post '/login' do
    Login.new(self, params).perform
  end

  def failing_signup_missing_parameters
    status 406
  end
end
end
