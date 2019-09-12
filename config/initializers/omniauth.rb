Rails.application.config.middleware.use OmniAuth::Builder do
  # provider :facebook, ENV['535060867257496'], ENV['ab6a468becec110914169c216f29f235'], 
  # scope: 'email', info_fields: 'email', callback_url: "#{ENV['HOST']}/users/auth/facebook/callback"
  
  provider :google_oauth2, ENV['781418970961-2vkjc3p2u94hn1seiq2grdm4r4ked5hm.apps.googleusercontent.com'], ENV['CDYeLU7jgdPunmKss0wwpNxD'], 
  scope: 'email', redirect_uri: "#{ENV['HOST']}/users/auth/google_oauth2/callback"
  
end