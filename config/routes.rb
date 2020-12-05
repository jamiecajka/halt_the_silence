# frozen_string_literal: true

Rails.application.routes.draw do
  resources :statements, only: %i[index show]
  resources :policies, only: [:index]
  resources :articles

  root 'statements#index'
end
