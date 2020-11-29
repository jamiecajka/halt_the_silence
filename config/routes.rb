Rails.application.routes.draw do
  resources :statements, only: [:index]
  resources :policies, only: [:index]

  root 'statements#index'
end
