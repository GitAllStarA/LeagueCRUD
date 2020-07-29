Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # players #index is method to show list of players. this #index methos is stored at the players_controller.rb controller.
  # when ever new method is introduced the above sentence must be follwed

  get "players" => "players#index"

  get "players/new" => "players#new"

  post "players" => "players#create"

  get "players/:id" => "players#show"

  get "players/:id/edit" => "players#edit"

  patch "players/:id" => "players#update"

  delete "players/:id" => "players#destroy"
end
