require_relative 'production'

Rails.application.configure do
  config.action_mailer.default_url_options = { host: 'app-prototype-acceptance.herokuapp.com' }

  config.log_level = :debug
end
