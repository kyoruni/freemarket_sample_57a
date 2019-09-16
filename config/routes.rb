Rails.application.routes.draw do

  get 'purchase/index'
  get 'purchase/done'

  # クレジットカード登録
  resources :card, only: [:new, :show] do
    collection do
      post 'show', to: 'card#show'
      post 'pay', to: 'card#pay'
      post 'delete', to: 'card#delete'
    end
  end
  
  devise_for :users, controllers:{
    sessions: 'users/sessions',
    omniauth_callbacks: 'users/omniauth_callbacks' 
  }


  resources  :users,  only: [:show, :destroy]
  resources  :search, only: [:index]
  resources  :items do
    # items new時の、カテゴリーセレクトボックス
    collection do
      get 'get_category_children',      defaults: { format: 'json' }
      get 'get_category_grandchildren', defaults: { format: 'json' }
    end
    # 商品購入
    resources :purchase, only: [:index] do
      collection do
        get 'index', to: 'purchase#index'
        post 'pay', to: 'purchase#pay'
        get 'done', to: 'purchase#done'
      end
    end
    # items edit時の、カテゴリーセレクトボックス
    member do
      get 'get_category_children',      defaults: { format: 'json' }
      get 'get_category_grandchildren', defaults: { format: 'json' }
      namespace :api do
        resources :categories, only: :index, defaults: { format: 'json' }
      end
    end
  end

  resources  :categories, only: [:show]
  resources  :brands,     only: [:show]
  root 'items#index'


  resources :signup do
    collection do
      get  '/'               => 'signup#new'
      get  'step1'           => 'signup#step1'
      get  'step2'           => 'signup#step2'
      get  'step3'           => 'signup#step3'
      post 'signup/create'   => 'signup#create'
      get  'step5'           => 'signup#step5'
      

    end
  end

  get 'identification' => 'users#identification'
  get 'card_registration' => 'buys#card_registration'
end


