Rails.application.routes.draw do
  resources :posts
  resources :usuarios, as: :user, only: [:show, :update]
  resources :friendship, only: [:create, :update]
    

    devise_for :users, controllers:{
  	omniauth_callbacks: "users/omniauth_callbacks"
  }
  	post "/custom_sign_up", to: "users/omniauth_callbacks#custom_sign_up"

  	authenticated :user do
		root "main#home"
  	end

  	unauthenticated :user do
  		root "main#unregistered"
  	end
end
