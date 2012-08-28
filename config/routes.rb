Railwaystations::Application.routes.draw do

  resources :stations, :only => :show, :path => "", :constraints => {:id => /[A-Z]{3}/}

  resource :icon, :controller => :icon, :constraints => {:format => /png/}, :only => :show

  resource :example, :controller => :example, :only => :show
  resource :edition, :controller => :edition, :only => :show

  root :to => "homepage#show"

end
