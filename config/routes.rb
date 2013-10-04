Urdb::Application.routes.draw do

  resources :showings

  resources :movies do
    resources :showings
  end

  root 'movies#index'
end
