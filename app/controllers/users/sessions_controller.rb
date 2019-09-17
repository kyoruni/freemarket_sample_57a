class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]
  # skip_before_action :authenticate_user!

  def new
    super
  end

  def create
    super

    #     @user = User.new(
    #   name:session[:name], 
    #   email: session[:email], 
    #   password: session[:password], 
    #   password_confirmation: session[:password_confirmation], 
    #   lastname: session[:lastname],
    #   lastname_kana: session[:lastname_kana], 
    #   firstname: session[:firstname], 
    #   firstname_kana: session[:firstname_kana], 
    #   birth_year: session[:birth_year], 
    #   birth_month: session[:birth_month], 
    #   birth_day: session[:birth_day], 
    #   phone_number: session[:phone_number], 
    #   address_attributes: session[:address_attributes])
    # # unless session[:provider_data] == {}
    # # @user.sns_credentials.build(
    # #   uid: session[:provider_data]["uid"],
    # #   provider: session[:provider_data]["provider"]
    # if @user.save
    #   sign_in @user
    # end
  end

  def destroy
    session[:keep_signed_out] = true
    super
  end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
