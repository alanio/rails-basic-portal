Rails.application.routes.draw do
  resources :posts
  resources :markers
  resources :publishers
  resources :users
  get 'pages/home'

    root 'pages#home'
end
