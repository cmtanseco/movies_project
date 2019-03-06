Rails.application.routes.draw do
  # get 'search/results'
  # get 'directors/index'
  # get 'directors/show'
  # get 'actors/index'
  # get 'actors/show'
  # get 'movies/index'
  # get 'movies/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :movies, only: [:index, :show]
  resources :actors, only: [:index, :show]
  resources :directors, only: [:index, :show]
  get "/pages/:page" => "pages#show"
  get 'search_results', to: 'search#results', as: 'search_results'
  root to: 'movies#index'
end
