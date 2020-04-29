Rails.application.routes.draw do
  root to: "users#show"
  devise_for :users, controllers: { registrations: 'users/registrations' }
  get "users/show" => "users#show"
  resources :users, only: [:show]
  resources :payments
end