Rails.application.routes.draw do
  get 'pages/home'
  get 'pages/about'
  root 'pages#home'
  resources :jobs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
