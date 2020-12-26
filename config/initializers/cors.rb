Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'https://oa7-dem-shoes.netlify.app/'

    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head],
      credentials: true
  end
end