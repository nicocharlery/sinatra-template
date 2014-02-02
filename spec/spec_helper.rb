require 'rack/test'

ENV['RACK_ENV'] = "test"
require File.expand_path '../../config/boot.rb', __FILE__

RSpec.configure do |c|
  include Rack::Test::Methods
  def app() described_class end
end
