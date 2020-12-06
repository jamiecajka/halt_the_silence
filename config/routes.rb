# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :statements, only: %i[index show]
  resources :policies, only: [:index]
  resources :articles

  root 'statements#index'
end
