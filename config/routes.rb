Rails.application.routes.draw do
  resources :gamers
  resources :platforms do
    resources :video_games
  end
  resources :sessions, only: [:create, :destroy]
  get "/", to: "application#index"
  get "/signin", to: "sessions#new"
end
