Rails.application.routes.draw do

  get 'purchase/index'
  get 'purchase/done'
  # payjp
  resources :card, only: [:new, :show] do
    collection do
      post 'show', to: 'card#show'
      post 'pay', to: 'card#pay'
      post 'delete', to: 'card#delete'
    end
  end
  
  devise_for :users, controllers:{
    sessions: 'users/sessions'
  }

  resources  :users, only: [:show, :destroy]
  resources  :items do
    collection do
      get 'get_category_children', defaults: { format: 'json' }
      get 'get_category_grandchildren', defaults: { format: 'json' }
    end
  end
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