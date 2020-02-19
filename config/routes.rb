Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :payments
  root 'users#index' # ここを追記します
  get 'users/index' # 自動で設定されたルーティング
end