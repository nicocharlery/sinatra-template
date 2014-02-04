require 'sinatra/base'
require 'moped'
require 'active_support/all'

ENV["RACK_ENV"] ||= "development"


class FiveWhys < Sinatra::Base
end

module Settings
  def self.database_session
    current_environment = ENV['RACK_ENV']
    session = Moped::Session.new([ "127.0.0.1:27017" ])
    session.use "fivewhys_#{current_environment}"
    session
  end
end

Dir.glob('./{app}/**/*.rb').each { |file| require file }
