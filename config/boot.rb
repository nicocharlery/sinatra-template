require 'sinatra/base'

ENV["RACK_ENV"] ||= "development"
Dir.glob('./{app}/**/*.rb').each { |file| require file }
