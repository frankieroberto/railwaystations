class ExampleController < ApplicationController

  def show
    @station = Station.find("KBX")
    @context = "little_printer"
    render "stations/show"
  end

end