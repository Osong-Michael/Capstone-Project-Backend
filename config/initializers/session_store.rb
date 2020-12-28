if Rails.env == 'production'
  Rails.application.config.session_store :cookie_store, key: "_my_api", domain: 'https://vast-earth-24958.herokuapp.com'
else
  Rails.application.config.session_store :cookie_store, key: "_my_api"
end
