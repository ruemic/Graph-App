Graph::Application.routes.draw do
  resources :points

  root :to => "points#index"
end
