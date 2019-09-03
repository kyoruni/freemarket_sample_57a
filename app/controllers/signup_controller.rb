class SignupController < ApplicationController
  
  def step1
    @user = User.new()
  end
  
  def step2
    @user = User.new()
    @user.build_address(user_params[:address_attributes])
    session[:name]                   = user_params[:name]
    session[:email]                  = user_params[:email]
    session[:password]               = user_params[:password]
    session[:password_confirmation]  = user_params[:password_confirmation]
    session[:last_name]              = user_params[:last_name]
    session[:first_name]             = user_params[:first_name]
    session[:last_name_kana]         = user_params[:last_name_kana]
    session[:first_name_kana]        = user_params[:first_name_kana]
    session[:birthday]               = user_params[:birthday]
  end
  
  def step3
    @user = User.new()
    @user.build_shipping_address(user_params[:shipping_address_attributes])
    session[:phone_number]           = user_params[:phone_number]
  end

  def step4
    @user = User.new()
    session[:last_name]              = user_params[:last_name]
    session[:first_name]             = user_params[:first_name]
    session[:last_name_kana]         = user_params[:last_name_kana]
    session[:first_name_kana]        = user_params[:first_name_kana]
    session[:postal_code]            = user_params[:postal_code]
    session[:address]                = user_params[:address]
    session[:building]               = user_params[:building]
    session[:phone_number]           = user_params[:phone_number]
    @user.build_credit(user_params[:credit_attributes])
  end

  def create
    @user = User.new(
      email:                     session[:email],
      password:                  session[:password],
      password_confirmation:     session[:password_confirmation],
      name:                      user_params[:name]
    )
    # session[:user_id] = @user.user_id
    session[:number]
    session[:expiration_date_month]
    session[:expiration_date_year]
    session[:security_code]
    @user.save
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
      :birthday,
      :phone_number_attributes,
      address_attributes:[:last_name,:first_name,:last_name_kana,:first_name_kana,:postal_code,:address,:building,:user_id,:created_at, :updated_at],
      shipping_address_attributes:[:last_name,:first_name,:last_name_kana,:first_name_kana,:postal_code,:address,:building,:phone_number,:created_at, :updated_at],
      credit_attributes:[:number,:expiration_date_month,:expiration_date_year,:security_code,:user_id,:created_at, :updated_at]
    )
  end
end


