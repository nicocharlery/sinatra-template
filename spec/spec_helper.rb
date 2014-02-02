require 'rack/test'

require File.expand_path '../../fivewhys.rb', __FILE__

module RSpecMixin
  include Rack::Test::Methods
  def app() Sinatra::Application end
end

RSpec.configure do |c|
  c.include RSpecMixin
end
