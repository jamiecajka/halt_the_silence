# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :statements, only: %i[index show]
  resources :policies, only: [:index]
  resources :articles
  resources :tags, only: %i[new create edit]
  resources :article_tags
  resources :posts
  resources :post_tags
  resources :messages, only: %i[new create]

  root 'statements#index'
end
