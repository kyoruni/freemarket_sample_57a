class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]
  # skip_before_action :authenticate_user!

  def new
    super
  end

  def create
    super
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
