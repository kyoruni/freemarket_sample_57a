Rails.application.routes.draw do
  devise_for :users
  resources  :users, only: [:show, :delete]
  resources  :items
  resources  :buys, only: [:index, :show]
  root 'hello#index'

  get 'step1' => 'hello#step1'
  get 'step2' => 'hello#step2'
  get 'step3' => 'hello#step3'
  get 'step4' => 'hello#step4'
  get 'step5' => 'hello#step5'
  get 'step6' => 'hello#step6'
  get 'step7' => 'hello#step7'
end
