Rails.application.routes.draw do
  resources :signups, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]

  root "members#index"
end
