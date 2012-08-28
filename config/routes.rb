Railwaystations::Application.routes.draw do

  resources :stations, :only => :show, :path => "", :constraints => {:id => /[A-Z]{3}/} do
    resource :icon, :controller => :station_icons, :only => :show, :constraints => {:format => /svg/}
  end

  resource :icon, :controller => :icon, :constraints => {:format => /png/}, :only => :show

  resource :example, :controller => :example, :only => :show
  resource :edition, :controller => :edition, :only => :show

  resource :meta, :controller => :meta, :only => :show, :constraints => {:id => /json/ }

  root :to => "homepage#show"

end
