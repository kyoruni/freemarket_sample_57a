Rails.application.routes.draw do
  devise_for :users
  resources  :users, only: [:show, :destroy]
  resources  :items
  resources  :buys, only: [:index, :show]
  root 'hello#index'


  resources :signup do
    collection do
      get  '/'               => 'signup#new'
      get  'step1'           => 'signup#step1'
      get  'step2'           => 'signup#step2'
      get  'step3'           => 'signup#step3'
      get  'step4'           => 'signup#step4'
      post 'signup/create'   => 'signup#create'
    end
  end


  get 'step1' => 'hello#step1'
  get 'step2' => 'hello#step2'
  get 'step3' => 'hello#step3'
  get 'step4' => 'hello#step4'
  get 'step5' => 'hello#step5'
  get 'step6' => 'hello#step6'
  get 'step7' => 'hello#step7'
  get 'card_registration' => 'hello#card_registration'
  get 'registration'      => 'hello#index'
end