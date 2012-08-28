class MetaController < ApplicationController

  def show

    meta = {
      "publication_api_version" => "1.0",
      "name" => "A handy guide to UK Rail Stations",
      "description" => "Useful and interesting information to help you survive long waits at the UK's busiest railway stations.",
      "delivered_on" => "every week",
      "send_timezone_info" => "false",
      "send_delivery_count" => "true",
      "config" => {},
    }

    render :json => meta
  end

end