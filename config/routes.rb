Rails.application.routes.draw do
  devise_for :users
  resources  :users, only: [:show, :edit]
  resources  :items
  resources  :buys, only: :index
  root 'hello#index'
end
