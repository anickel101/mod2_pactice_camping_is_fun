Rails.application.routes.draw do

  resources :sign_ups, only: [:new, :create]
  resources :activities, only: [:index, :show]
  resources :campers, only: [:index, :show, :new, :create]

end
