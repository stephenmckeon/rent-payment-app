Rails.application.routes.draw do
  resources :gamers
  resources :gaming_sessions, only: %i[index new create destroy]
  resources :platforms do
    resources :video_games
  end
  resources :sessions, only: %i[create destroy]
  get "/", to: "sessions#index"
  get "/signin", to: "sessions#new"
end
