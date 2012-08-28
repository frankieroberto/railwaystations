class ExampleController < ApplicationController

  def show
    @station = Station.find("KBX")
    render "stations/show"
  end

end