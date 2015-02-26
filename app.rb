require "cuba"

Cuba.use Rack::Session::Cookie, :secret => "__a_very_long_string__"

Cuba.define do
  on get, root do
    res.write session[:test]
  end
end