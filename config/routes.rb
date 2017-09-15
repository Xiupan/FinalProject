Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  root 'home#index'

  resources :users
  # resources :associations, :only => [:create, :update, :destroy]

  post 'associations/update/' => 'associations#updateEmpireToUser'

  get 'summary/:id' => 'summaries#index', as: :summary_view
  post 'summary/:id' => 'associations#updateEmpire', as: :update_empire

  resources :empires do
    resources :systems
  end

  get 'sessions/new' => 'sessions#new', as: :login
  post 'sessions/new' => 'sessions#create'
  delete 'sessions' => 'sessions#destroy', as: :logout
end
