class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    callback_for(:facebook)
  end
  
  def google_oauth2
    callback_for(:google)
    
  end

  def callback_for(provider)
    @user = User.find_omniauth(request.env["omniauth.auth"])


    if @user.persisted?
      sign_in_and_redirect @user, event: :authentication 
    else
      session[:name]                = request.env["omniauth.auth"].info.name
      session[:provider_data]       = request.env["omniauth.auth"].except("extra")
      session[:email]               = request.env["omniauth.auth"].info.email
      session[:uid]                 = request.env["omniauth.auth"].uid
      session[:provider]            = provider.to_s
      redirect_to step1_signup_index_path

    end
  end
end
