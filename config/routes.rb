Rails.application.routes.draw do
  root to: "users#index"
  resources :users, only: [:index, :show, :edit]
  resources :payments
  devise_for :users
  #,controllers: {
  #  registrations: 'users/registrations'
  #  sessions: 'users/sessions'
  #}
  #devise_scope :user do
  #  get 'users/index', to: 'users/registrations#index'
  #  get 'users/destroy', to: 'users/sessions#destroy'
  #end
end