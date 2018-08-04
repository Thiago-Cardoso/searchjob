require 'sidekiq/web'
Rails.application.routes.draw do
  get 'search/index'
  get 'reports/index'
  get 'reports/create'
  get 'pages/home'
  get 'crawler/index'
  get 'pages/about'
  get '/search' => 'search#index'
  root 'pages#home'
  mount Sidekiq::Web => '/sidekiq'
  resources :reports, only: [:index, :create]
  resources :jobs
  resources :search, only: [:index]
end