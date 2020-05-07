Rails.application.routes.draw do
  root 'searches#index'

  devise_for :users
  resources :users, only: [:index, :create, :show]
  resources :searches
  resources :words, only: [:index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
