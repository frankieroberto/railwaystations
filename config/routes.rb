Railwaystations::Application.routes.draw do

  resources :stations, :only => :show, :path => ""

  root :to => "homepage#show"

end
