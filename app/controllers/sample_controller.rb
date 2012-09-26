class SampleController < ApplicationController

  def show
    @station = Station.find("KGX")
    @context = "little_printer"
    render "stations/show"
  end

end