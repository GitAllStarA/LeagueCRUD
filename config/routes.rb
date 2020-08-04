Rails.application.routes.draw do
  
  root "users#index"

  resources :players
  resources :users, only: [ :index, :create]
  resources :sessions, only: [:create]
  get "logout" => "sessions#destroy"

  # get "players" => "players#index"

  # get "players/new" => "players#new"

  # post "players" => "players#create"

  # get "players/:id" => "players#show", as: "player_id"

  # get "players/:id/edit" => "players#edit" , as: "player_edit"

  # patch "players/:id" => "players#update" , as: "player_patch"

  # delete "players/:id" => "players#destroy", as: "player_destroy"
end
