# frozen_string_literal: true

Rails.application.routes.draw do
  get 'pages/about'
  get 'pages/contact'
  get 'starships/starship_category'
  get 'starships/starship_new'
  get 'starships/starship_refurbished'

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
