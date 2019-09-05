class SignupController < ApplicationController
  
  def step1
    @user = User.new()
  end
  
  def step2
    @user = User.new()
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
    @user.build_shipping_address(session[:shipping_address_attributes])
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
    @user.build_credit(session[:credit_attributes])
    @user.build_shipping_address(session[:shipping_address_attributes])

  end

  def create
    @user = User.new( name: session[:name],
      email:                        session[:email],
      password:                     session[:password],
      password_confirmation:        session[:password_confirmation],
      last_name:                    session[:last_name],
      first_name:                   session[:first_name],
      last_name_kana:               session[:last_name_kana],
      first_name_kana:              session[:first_name_kana],
      birthday:                     session[:birthday],
      shipping_address_attributes:  session[:shipping_address_attributes] 
    )
    binding.pry
    @user.save
    session[:id] = @user.id
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
      shipping_address_attributes:[:id,:last_name,:first_name,:last_name_kana,:first_name_kana,:postal_code,:address,:building,:phone_number,:created_at, :updated_at],
      credit_attributes:[:number,:expiration_date_month,:expiration_date_year,:security_code,:user_id,:created_at, :updated_at]
    )
  end
end


