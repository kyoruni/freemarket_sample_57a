Rails.application.routes.draw do
  devise_for :users
  resources  :users, only: [:show]
  resources  :items
  resources  :buys, only: [:index, :show]
  root 'hello#index'

  resources :signup do
    collection do
      get 'step1' => 'signup#step1'
      get 'step2' => 'signup#step2'
      get 'step3' => 'signup#step3'
      get 'step4' => 'signup#step4'
      get 'step5' => 'signup#step5'# ここで、入力の全てが終了する
      get 'done' # 登録完了後のページ
    end
  end

  get 'step1' => 'hello#step1'
  get 'step2' => 'hello#step2'
  get 'step3' => 'hello#step3'
  get 'step4' => 'hello#step4'
  get 'step5' => 'hello#step5'
  get 'step6' => 'hello#step6'
end
