Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :payments
  root 'users#index'
end