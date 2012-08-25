class ApplicationController < ActionController::Base

  before_filter :set_cache_control_header


  private

  def set_cache_control_header
    response.headers['Cache-Control'] = 'public, max-age=3600' unless Rails.env == "development"
    response.headers['Expires'] = nil
  end

end
