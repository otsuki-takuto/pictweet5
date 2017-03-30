Rails.application.routes.draw do
  devise_for :users
  root 'tweets#index'
  resources :tweets
  get   'users/:id'   =>  'users#show'
  resources :tweets do
    resources :comments, only: [:create]
  end
  resources :user, only: [:show]
end