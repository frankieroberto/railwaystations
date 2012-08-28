require 'test_helper'

class StationResourcesTest < ActionDispatch::IntegrationTest

  test "station pages" do

    ["PAD", "LIV", "BHM", "KBX", "GTW", "LBG", "EUS", "EDB", "LST", "LDS", "MAN", "FST", "VIC", "CHX", "GLC", "CST", "WAT", "STP"].each do |station_code|

      get "/#{station_code}"
      assert_response :success
    end

  end

end
