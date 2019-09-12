class SignupController < ApplicationController

  before_action :validates_step1, only: :step2 # step1のバリデーション

  def step1
    @user = User.new
  end
  
  def step2
    @user = User.new
    session[:name]                   = user_params[:name]
    session[:email]                  = user_params[:email]
    session[:password]               = user_params[:password]
    session[:password_confirmation]  = user_params[:password_confirmation]
    session[:last_name]              = user_params[:last_name]
    session[:first_name]             = user_params[:first_name]
    session[:last_name_kana]         = user_params[:last_name_kana]
    session[:first_name_kana]        = user_params[:first_name_kana]
    session[:birth_year]             = user_params[:birth_year]
    session[:birth_month]            = user_params[:birth_month]
    session[:birth_day]              = user_params[:birth_day]
  end
  
  def step3
    @user = User.new
    session[:phone_number]           = user_params[:phone_number]
    @user.build_shipping_address(session[:shipping_address_attributes])
  end

  def step4
    @user = User.new
    session[:shipping_address_attributes] = user_params[:shipping_address_attributes]
    @user.build_shipping_address(session[:shipping_address_attributes])

  end

  def create
    @user = User.new(
      name:                         session[:name],
      email:                        session[:email],
      password:                     session[:password],
      password_confirmation:        session[:password_confirmation],
      last_name:                    session[:last_name],
      first_name:                   session[:first_name],
      last_name_kana:               session[:last_name_kana],
      first_name_kana:              session[:first_name_kana],
      birth_year:                   session[:birth_year],
      birth_month:                  session[:birth_month],
      birth_day:                    session[:birth_day],
      phone_number:                 session[:phone_number],
      shipping_address_attributes:  session[:shipping_address_attributes]
    )
    @user.save
    sign_in @user
  end

  # ログアウトのリンク
  def step5
  end

  def validates_step1
    # step1で入力された値をsessionに保存
    session[:name]                   = user_params[:name]
    session[:email]                  = user_params[:email]
    session[:password]               = user_params[:password]
    session[:password_confirmation]  = user_params[:password_confirmation]
    session[:last_name]              = user_params[:last_name]
    session[:first_name]             = user_params[:first_name]
    session[:last_name_kana]         = user_params[:last_name_kana]
    session[:first_name_kana]        = user_params[:first_name_kana]
    session[:birth_year]             = user_params[:birth_year]
    session[:birth_month]            = user_params[:birth_month]
    session[:birth_day]              = user_params[:birth_day]
    # バリデーション用に、仮でインスタンスを作成する
    @user = User.new(
      name:                         session[:name],
      email:                        session[:email],
      password:                     session[:password],
      password_confirmation:        session[:password_confirmation],
      last_name:                    session[:last_name],
      first_name:                   session[:first_name],
      last_name_kana:               session[:last_name_kana],
      first_name_kana:              session[:first_name_kana],
      birth_year:                   session[:birth_year],
      birth_month:                  session[:birth_month],
      birth_day:                    session[:birth_day],
    )
    # 仮で作成したインスタンスのバリデーションチェックを行う
    render '/signup/step1' unless @user.valid?
  end

  private

  def user_params
    params.require(:user).permit(
      :name,
      :email,
      :password,
      :password_confirmation,
      :last_name,
      :first_name,
      :last_name_kana,
      :first_name_kana,
      :birth_year,
      :birth_month,
      :birth_day,
      :phone_number,
      shipping_address_attributes:[:user_id,:last_name,:first_name,:last_name_kana,:first_name_kana,:postal_code,:address,:building, :created_at, :updated_at]
    )
  end
end


