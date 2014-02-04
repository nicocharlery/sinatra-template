class FiveWhys
  class SignupController < ApplicationController

    post '/signup' do
      status 406
    end

    post '/signup/username/:username/password/:password' do
      Signup.new(self, UserRepository, params).signup
    end

    def user_creation_succeeded user
      status 200

    end

    def user_creation_failed
    end
  end
end
