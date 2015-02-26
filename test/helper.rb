ENV["RACK_ENV"]  = "test"

require "rack/test"
require "minitest/autorun"

require File.expand_path '../../app.rb', __FILE__

include Rack::Test::Methods

def app
  Cuba
end
