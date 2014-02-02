class LoginController < ApplicationController
  post '/signup' do
    Signuper.new(self, params).perform
  end

  def failing_signup_missing_parameters
    status 406
  end
end
