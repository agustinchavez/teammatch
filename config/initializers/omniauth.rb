Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, Rails.application.secrets.twitter_api_key, Rails.application.secrets.twitter_api_secret
    {
          secure_image_url: 'true',
          image_size: 'original',
          authorize_params: {
            force_login: 'false',
            lang: 'pt'
          }
        }

   provider OmniAuth::Strategies::GoogleOauth2, Rails.application.secrets.google_client_id, Rails.application.secrets.google_client_secret,skip_jwt: true

    provider :soundcloud, Rails.application.secrets.soundcloud_client_id, Rails.application.secrets.soundcloud_secret
    {
      :name => "soundcloud"
    }

end