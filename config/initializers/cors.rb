# Rails.application.config.middleware.insert_before 0, Rack::Cors do
#     allow do
#       origins "http://127.0.0.1:3000/auth/google_oauth2",
#                 "http://127.0.0.1:3000"
  
#       resource "*",
#         headers: :any,
#         methods: [:get, :post, :put, :patch, :delete, :options, :head],
#         credentials: true,
#         max_age: 86400
#     end
#   end

Rails.application.config.middleware.insert_before ActionDispatch::Static, Rack::Cors do
    allow do
      origins '*'
      resource '*', :headers => :any, :methods => [:get, :post, :options]
    end
  end