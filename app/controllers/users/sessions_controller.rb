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

end
