# frozen_string_literal: true

Rails.application.routes.draw do
  get 'starships/index'
  get 'starships/show'
  get 'starships/starship_category'
  get 'starships/starship_new'
  get 'starships/starship_refurbished'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root to: 'starships#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
