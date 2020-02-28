Rails.application.routes.draw do
  devise_for :users
  root "tops#index"
  resources :tops, only: :index
  resources :posts
  resources :users, only: :show
end
