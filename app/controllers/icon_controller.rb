class IconController < ApplicationController

  def show
    send_file "#{Rails.root}/app/assets/images/icon.png", :disposition => 'inline'
  end

end