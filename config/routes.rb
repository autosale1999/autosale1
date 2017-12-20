Rails.application.routes.draw do

  get 'images/new'

  get 'postcomments/new'

	get 'photos/index'

	get 'post/new'

	get 'post/index'

	devise_for :admin_users, ActiveAdmin::Devise.config
	ActiveAdmin.routes(self)
	root 'pages#index'

	  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :photos do
  	resources :postcomments
  	resources :images
  end

	resources :pages


	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
