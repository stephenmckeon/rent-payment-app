Rails.application.routes.draw do
  # resources :platforms
  resources :gamers
  resources :platforms do
    resources :videogames
  end
  resources :sessions, only: [:create, :destroy]
  get "/", to: "application#index"
  get "/signin", to: "sessions#new"
end
