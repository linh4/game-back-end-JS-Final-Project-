Rails.application.routes.draw do
  resources :games
  resources :players
  get 'players/:id/top_score', to: 'players#top_score'
  get '/scoreboard', to: 'games#score_board'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
