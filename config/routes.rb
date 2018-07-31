require 'sidekiq/web'
Rails.application.routes.draw do
  get 'pages/home'
  get 'pages/about'
  root 'pages#home'
  mount Sidekiq::Web => '/sidekiq'
  
end
