Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, "UO4UG3YZ0VT1XR9HSEvrrpcTX", "znXT89GwBZyZnkJH0dLqAjgZb1TCaEBlD94phMkk0XgS4fgeik"
    {
          :secure_image_url => 'true',
          :image_size => 'original',
          :authorize_params => {
            :force_login => 'true',
            :lang => 'pt'
          }
        }
end