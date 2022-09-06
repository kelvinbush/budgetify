Rails.application.routes.draw do
  devise_for :users
  resources :group, only: [:index, :new, :create]
  root to: 'group#index'
end
