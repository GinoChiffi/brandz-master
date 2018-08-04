Rails.application.routes.draw do

  get 'follows/index'

  get 'follows/show'

  get 'users/index'

  get 'users/show'

  devise_for :brands
  devise_for :users
  resources :locations
  resources :designers
  resources :articles
  resources :notifications

  root 'pages#home'
  get 'about' => 'pages#about'
  get 'signup' => 'pages#signup'
  get 'login' => 'pages#login'
  get ':name' =>'brands#show', as: 'brand'
  get ':id' =>'users#show', as: 'id'

  #'brands/show'
  get 'brands/index'

  resources :brands do
    member  do
      get :follow
      get :unfollow
    end
    collection {post :search, to: 'brands#index'}
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
