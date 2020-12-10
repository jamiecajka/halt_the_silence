# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :statements, only: [:index, :show]
  resources :policies, only: [:index]
  resources :articles
  resources :tags, only: [:new, :create, :edit]
  resources :article_tags
  resources :posts
  resources :post_tags

  root 'statements#index'
end
