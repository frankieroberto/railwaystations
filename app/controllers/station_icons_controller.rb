class StationIconsController < ApplicationController

  def show
    station = Station.find(params[:station_id])
    send_file "#{Rails.root}/app/assets/images/#{station.id}.svg", :disposition => 'inline', :type => "image/svg+xml"
  end

end