Rails.application.routes.draw do
  resources :events
  devise_for :users
  resources :users
  resources :payments
  root 'users#index'
end