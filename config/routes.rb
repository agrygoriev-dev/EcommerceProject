# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  get 'orders/show_cart', to: 'orders#show_cart', as: 'show_cart'
  delete 'orders/show_cart/:id', to: 'orders#delete_from_cart', as: 'delete_from_cart'
  post 'orders/show_cart/:id', to: 'orders#change_quantity', as: 'change_quantity'

  post 'add_to_cart/:id', to: 'starships#add_to_cart', as: 'add_to_cart'

  get 'users/show', to: 'users#show', as: :user_account
  get 'starships/starship_refurbished', to: 'starships#starship_refurbished', as: :starship_refurbished

  get 'starships/starship_new', to: 'starships#starship_new', as: :starship_new

  get 'starships/starship_category', to: 'starships#starship_category', as: :starship_category

  get 'pages/about', to: 'pages#about', as: :about
  get 'pages/contact', to: 'pages#contact', as: :contact

  get '/starships', to: 'starships#index', as: :starships
  get '/starships/:id', to: 'starships#show', id: /\d+/, as: :starship

  get '/types', to: 'types#index', as: :types
  get '/types/:id', to: 'types#show', id: /\d+/, as: :type

  get '/planets', to: 'planets#index', as: :planets
  get '/planets/:id', to: 'planets#show', id: /\d+/, as: :planet
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root to: 'starships#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
