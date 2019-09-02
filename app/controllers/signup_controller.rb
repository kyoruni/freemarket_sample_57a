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
    @user = User.new
    @user.build_shipping_address

  end

  def step3
    session[:phone_number]           = user_params[:phone_number]
    @user = User.new
    @user.build_shipping_address
  end

  def step4
  end

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
      :birthday,
    )
  end
end


