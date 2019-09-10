Rails.application.routes.draw do
  devise_for :users, controllers:{
    sessions: 'users/sessions'
  }

  resources  :users, only: [:show, :destroy]
  resources  :items
  resources  :buys, only: [:index, :show]
  resources  :categories, only: [:show]
  root 'items#index'


  resources :signup do
    collection do
      get  '/'               => 'signup#new'
      get  'step1'           => 'signup#step1'
      get  'step2'           => 'signup#step2'
      get  'step3'           => 'signup#step3'
      get  'step4'           => 'signup#step4'
      post 'signup/create'   => 'signup#create'
      get  'step5'           => 'signup#step5'
    end
  end

  get 'identification' => 'users#identification'
  get 'card_registration' => 'buys#card_registration'
end