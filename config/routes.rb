Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  	root 'pictures#new'
	resources :pictures do 
		resources :comments
		resources :replies
	end
	resources :comments do
		resources :replies
	end
	resources :categories
	resources :blogs
	get '/images' => 'pictures#images'
	get '/logo' => 'pictures#logo'
	get '/about' => 'pictures#about'
	get '/category' => 'pictures#category'
	get '/home' => 'pictures#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
