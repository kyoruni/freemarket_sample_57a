class SignupController < ApplicationController

  def step1
    @user = User.new
  end
  
  def step2
    @user = User.new()
    user_params[:name]                   = user_params[:name]
    user_params[:email]                  = user_params[:email]
    user_params[:password]               = user_params[:password]
    user_params[:password_confirmation]  = user_params[:password_confirmation]
    user_params[:last_name]              = user_params[:last_name]
    user_params[:first_name]             = user_params[:first_name]
    user_params[:last_name_kana]         = user_params[:last_name_kana]
    user_params[:first_name_kana]        = user_params[:first_name_kana]
    user_params[:birth_year]             = user_params[:birth_year]
    user_params[:birth_month]            = user_params[:birth_month]
    user_params[:birth_day]              = user_params[:birth_day]
  end
  
  def step3
    @user = User.new
    user_params[:phone_number]           = user_params[:phone_number]
    @user.build_shipping_address(user_params[:shipping_address_attributes])
  end

  def step4
    @user = User.new
    user_params[:shipping_address_attributes] = user_params[:shipping_address_attributes]
    @user.build_shipping_address(user_params[:shipping_address_attributes])

  end

  def create
    @user = User.new(
      name:                         user_params[:name],
      email:                        user_params[:email],
      password:                     user_params[:password],
      password_confirmation:        user_params[:password_confirmation],
      last_name:                    user_params[:last_name],
      first_name:                   user_params[:first_name],
      last_name_kana:               user_params[:last_name_kana],
      first_name_kana:              user_params[:first_name_kana],
      birth_year:                   user_params[:birth_year],
      birth_month:                  user_params[:birth_month],
      birth_day:                    user_params[:birth_day],
      phone_number:                 user_params[:phone_number],
      shipping_address_attributes:  user_params[:shipping_address_attributes]
    )
    @user.save
    sign_in @user
  end

  # ログアウトのリンク
  def step5
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


