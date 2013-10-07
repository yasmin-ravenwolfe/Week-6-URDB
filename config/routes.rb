Urdb::Application.routes.draw do
  resources :movies do
    resources :showtimes
  end

  resources :stars

  root 'movies#index'
end
