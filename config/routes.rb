Railwaystations::Application.routes.draw do

  resources :stations, :only => :show, :path => "", :constraints => {:id => /[A-Z]{3}/}

  resource :icon, :controller => :icon, :constraints => {:format => /png/}

  root :to => "homepage#show"

end
