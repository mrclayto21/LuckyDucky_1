OmniAuth.config.logger = Rails.logger
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '371687925787-e39f5ai6ab369nnmrvo7j61nhgh3bisu.apps.googleusercontent.com', '7617aGCtmDSmW7ov5gme_goI', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end