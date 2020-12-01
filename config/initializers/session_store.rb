if Rails.env == 'production'
  Rails.application.config.session_store :cookie_store, key: "_my_api", domain: 'ross-auth-app-api.herokuapp.com'
else
  Rails.application.config.session_store :cookie_store, key: "_my_api"
end