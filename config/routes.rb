require 'sidekiq/web'
Rails.application.routes.draw do

  get 'result_searches/index'
  get 'searches/index'
  get 'reports/index'
  get 'reports/create'
  get 'pages/home'
  get 'crawler/index'
  get 'pages/about'
  root 'pages#home'
  mount Sidekiq::Web => '/sidekiq'
  get '/searches' => 'jobs#show'
  resources :searches, path: "search", only: :index
  resources :reports, only: [:index, :create]
  resources :jobs
end
