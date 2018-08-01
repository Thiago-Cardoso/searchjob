require 'sidekiq/web'
Rails.application.routes.draw do
  get 'reports/index'
  get 'reports/create'
  get 'pages/home'
  get 'pages/about'
  root 'pages#home'
  mount Sidekiq::Web => '/sidekiq'
  resources :reports, only: [:index, :create]
  resources :jobs
end