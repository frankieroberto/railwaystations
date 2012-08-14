class HomepageController < ApplicationController

  def show
    @stations = Station.all
  end

end