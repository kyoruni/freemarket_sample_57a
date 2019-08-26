Rails.application.routes.draw do
  devise_for :users
  resources  :items
  resources  :buys, only: :index
end
