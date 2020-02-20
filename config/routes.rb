Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :payments
  root 'users#index'
  get 'users/index'
end