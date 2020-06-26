Rails.application.routes.draw do
  # resources :platforms
  resources :gamers
  # resources :video_games
  resources :sessions, only: [:create, :destroy]
  get "/", to: "application#index"
  get "/signin", to: "sessions#new"
end
