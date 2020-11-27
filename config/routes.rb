Rails.application.routes.draw do
  resources :profiles, only: [:index] do
    resources :socials, only: [:index]
    resources :steps, only: [:index]
  end

  root 'profiles#index'
end
