Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ENV["twitter_api_key"], ENV["twitter_api_secret"],
    {
          secure_image_url: 'true',
          image_size: 'original',
          authorize_params: {
            force_login: 'false',
            lang: 'pt'
          }
        }

   provider :google_oauth2, ENV["google_client_id"], ENV["google_client_secret"],skip_jwt: true

    provider :soundcloud, ENV["soundcloud_client_id"], ENV["soundcloud_secret"],
    {
      :name => "soundcloud"
    }

end