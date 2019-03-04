Rails.application.routes.draw do
  # get 'actors/index'
  # get 'actors/show'
  # get 'movies/index'
  # get 'movies/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :movies, only: [:index, :show]
  resources :actors, only: [:index, :show]


  root to: 'movies#index'
end
