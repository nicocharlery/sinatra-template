require 'sinatra/base'

file = File.expand_path '../config/boot.rb', __FILE__
require file

run Rack::URLMap.new({
  "/" => ApplicationController,
  "/login" => LoginController
})
