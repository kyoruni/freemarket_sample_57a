Rails.application.routes.draw do
  devise_for :users
  resources  :users, only: [:show]
  resources  :items
  resources  :buys, only: :index
  root 'hello#index'
  resources  :test, only: :index
end
