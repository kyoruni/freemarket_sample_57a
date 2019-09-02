class SignupController < ApplicationController

  def step1
    @user = User.new()
    @user.build_address
  end

  def step2
    session[:name]                   = user_params[:name]
    session[:email]                  = user_params[:email]
    session[:password]               = user_params[:password]
    session[:password_confirmation]  = user_params[:password_confirmation]
    session[:last_name]              = user_params[:last_name]
    session[:first_name]             = user_params[:first_name]
    session[:last_name_kana]         = user_params[:last_name_kana]
    session[:first_name_kana]        = user_params[:first_name_kana]
    session[:birthday]               = user_params[:birthday]
    @user = User.new()
    @user.build_shipping_address

  end

  def step3
    @user = User.new()
    session[:phone_number]           = user_params[:phone_number]
    @user.build_shipping_address
  end

  def step4
    session[:last_name]              = user_params[:last_name]
    session[:first_name]             = user_params[:first_name]
    session[:last_name_kana]         = user_params[:last_name_kana]
    session[:first_name_kana]        = user_params[:first_name_kana]
    session[:postal_code]            = user_params[:postal_code]
    session[:address]                = user_params[:address]
    session[:building]               = user_params[:building]
    session[:phone_number]           = user_params[:phone_number]
    @user = User.new()
    @user.build_credit
  end

  def step5
    session[:number]
    session[:expiration_date_month]
    session[:expiration_date_year]
    session[:security_code]
    @user = User.new()

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
      phone_number_attributes: [:id]
    )
  end
end


