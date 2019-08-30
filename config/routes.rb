Rails.application.routes.draw do
  devise_for :users
  resources  :users, only: [:show]
  resources  :items
  resources  :buys, only: [:index, :show]
  root 'hello#index'

  get 'step3' => 'hello#step3'
  get 'step5' => 'hello#step5'
end
