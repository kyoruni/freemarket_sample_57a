# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController

#   def create
#     @user = User.new(
#       name:session[:name], 
#       email: session[:email], 
#       password: session[:password], 
#       password_confirmation: session[:password_confirmation], 
#       lastname: session[:lastname],
#       lastname_kana: session[:lastname_kana], 
#       firstname: session[:firstname], 
#       firstname_kana: session[:firstname_kana], 
#       birth_year: session[:birth_year], 
#       birth_month: session[:birth_month], 
#       birth_day: session[:birth_day], 
#       phone_number: session[:phone_number], 
#       address_attributes: session[:address_attributes])
#     # unless session[:provider_data] == {}
#     # @user.sns_credentials.build(
#     #   uid: session[:provider_data]["uid"],
#     #   provider: session[:provider_data]["provider"]
#     if @user.save
#       sign_in @user
#     end
#   end


# #///////

#   def sns
#     @user = User.new(
#       name: session[:name],
#       email: session[:email],
#       password: session[:password],
#       password_confirmation: session[:password],
#       )
#   end

#   def create
#     super
#     @user.uid = session[:uid]
#     @user.provider = session[:provider]
#     @user.save
#   end
# end


# # /////////////




#   def create
#     @user = User.new(nickname:session[:nickname], email: session[:email], password: session[:password], password_confirmation: session[:password_confirmation], lastname: session[:lastname],lastname_kana: session[:lastname_kana], firstname: session[:firstname], firstname_kana: session[:firstname_kana], birth_year: session[:birth_year], birth_month: session[:birth_month], birth_day: session[:birth_day], phone_number: session[:phone_number], address_attributes: session[:address_attributes])
#     unless session[:provider_data] == {}
#     # @user.sns_credentials.build(
#     #   uid: session[:provider_data]["uid"],
#     #   provider: session[:provider_data]["provider"])
#     end
#     if @user.save
#       sign_in @user
#     end
#   end
#   private
#   def user_params
#     params.require(:user).permit(:nickname, :email, :password, :password_confirmation, :lastname,:lastname_kana, :firstname, :firstname_kana, :birth_year,:birth_month, :birth_day, :phone_number, address_attributes: [:id, :zip_code, :address_city, :address_number, :building,:prefecture_id])
#   end
  
#   before_action :configure_sign_up_params, only: [:create]
#   before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  # def new
  #   super
  # end

  # POST /resource
  # def create
  #   super
  # end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
