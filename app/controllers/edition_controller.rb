class EditionController < ApplicationController

  def show
    @number = params[:delivery_count].to_i + 1

    if params[:local_delivery_time]
      @local_delivery_time = DateTime.parse(params[:local_delivery_time])
    end

    @station = Station.find_by_number(@number)

    

    if @station.nil? || (@local_delivery_time && @local_delivery_time.wday != 1)
      render :nothing => true
    else
      @context = "little_printer"
      render "stations/show"
    end
  end

end