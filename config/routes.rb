Rails.application.routes.draw do
  resources :platforms
  resources :video_games
  resources :gamers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
