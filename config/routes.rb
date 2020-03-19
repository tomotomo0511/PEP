Rails.application.routes.draw do
  devise_for :users
  root "tops#index"
  resources :tops, only: :index
  resources :posts do
    resources :comments, only: :create
  end
  resources :users, only: :show
end
