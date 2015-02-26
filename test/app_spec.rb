require_relative 'helper'

describe "App" do
  it "GET / should read session vars" do

    get "/", {}, {"rack.session" => {:test => 'sample'}}

    assert_equal 200,last_response.status
    assert_equal "sample", last_response.body
  end
end