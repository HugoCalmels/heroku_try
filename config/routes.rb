Rails.application.routes.draw do
  
  get 'sessions/new'
  get '/contact', to: 'static_pages#contact'
  get '/team', to: 'static_pages#team'
  get '/index', to: "static_pages#index"
  get 'message/:user_entry', to: 'message#show'

  resources :gossips, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  resources :users, only: [:new, :create, :index, :show, :edit, :update]
  resources :cities, only: [:new, :create, :index, :show, :edit, :update]
  resources :comments, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  resources :sessions
  
  
end
