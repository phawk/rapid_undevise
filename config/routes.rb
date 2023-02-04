Rails.application.routes.draw do
  devise_for :users

  # resources :signups, only: [:new, :create]
  # resources :sessions, only: [:new, :create, :destroy]

  root "members#index"
end
