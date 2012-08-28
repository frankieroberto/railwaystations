class EditionController < ApplicationController

  def show
    @number = params[:delivery_count].to_i + 1
    @station = Station.find_by_number(@number)
    if @station
      render "stations/show"
    else
      render :nothing => true
    end
  end

end