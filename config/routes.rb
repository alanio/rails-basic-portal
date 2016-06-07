Rails.application.routes.draw do
	devise_for :users

	namespace :admin do 
		resources :posts
		resources :markers
		resources :publishers
		resources :users
	end
	get 'pages/home'

    root 'pages#home'
end
