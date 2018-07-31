require 'sidekiq/web'


Rails.application.routes.draw do
<<<<<<< HEAD
  get 'pages/home'
  get 'pages/about'
  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
=======
  
  mount Sidekiq::Web => '/sidekiq'
>>>>>>> sidekiq
end
