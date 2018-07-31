require 'sidekiq/web'
<<<<<<< HEAD


Rails.application.routes.draw do 
  mount Sidekiq::Web => '/sidekiq'
=======
Rails.application.routes.draw do
  get 'pages/home'
  get 'pages/about'
  root 'pages#home'
  mount Sidekiq::Web => '/sidekiq'
  resources :jobs

>>>>>>> facb7862b40baff8483352c083dc17b464d4b255
end
