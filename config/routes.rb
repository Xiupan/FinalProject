Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  root 'home#index'

  resources :users
  # resources :associations, :only => [:create, :update, :destroy]

  post 'associations/update/' => 'associations#updateEmpireToUser'

  get 'sessions/new' => 'sessions#new', as: :login
  post 'sessions/new' => 'sessions#create'
  delete 'sessions' => 'sessions#destroy', as: :logout
end
