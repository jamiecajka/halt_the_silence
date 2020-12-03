Rails.application.routes.draw do
  resources :statements, only: [:index, :show]
  resources :policies, only: [:index]
  resources :articles

  root 'statements#index'
end
