source 'https://rubygems.org'

ruby '2.2.2'

gem 'active_model_serializers', '~> 0.9.0'
gem 'angular-rails-templates'
gem 'annotate', '~> 2.6.5'
gem 'autoprefixer-rails'
gem 'awesome_print', require: 'ap'
gem 'bitters'
gem 'bourbon'
gem 'coffee-rails'
gem 'cssminify'
gem 'gon'
gem 'high_voltage', '~> 2.2.1'
gem 'jquery-rails'
gem 'neat'
gem 'newrelic_rpm', '>= 3.7.3'
gem 'ngannotate-rails'
gem 'oj'
gem 'pg'
gem 'puma'
gem 'rails', '~> 4.2.1'
gem 'sass-rails', '~> 5.0.0'
gem 'simple_form', '~> 3.1.0'
gem 'slim-rails'
gem 'sorcery'
gem 'uglifier'

source 'https://rails-assets.org' do
  gem 'rails-assets-angular'
  gem 'rails-assets-lodash'
  gem 'rails-assets-normalize.css'

  group :test, :development do
    gem 'rails-assets-angular-mocks'
    gem 'rails-assets-rosie'
  end
end

group :production, :acceptance do
  gem 'heroku_rails_deflate'
  gem 'rack-cache'
  gem 'rack-timeout'
  gem 'rails_12factor'
end

group :test do
  gem 'capybara'
  gem 'capybara-angular', github: 'mwean/capybara-angular'
  gem 'capybara-screenshot'
  gem 'capybara-webkit'
  gem 'database_cleaner'
  gem 'factory_girl_rails'
  gem 'rack_session_access'
  gem 'selenium-webdriver'
  gem 'shoulda-matchers', require: false
  gem 'simplecov'
  gem 'zonebie'
end

group :test, :development do
  gem 'brakeman'
  gem 'byebug'
  gem 'capybara-slow_finder_errors', require: false
  gem 'coffeelint', '~> 0.4.0'
  gem 'dotenv-rails'
  gem 'i18n-tasks', '~> 0.7.8'
  gem 'konacha'
  gem 'pry'
  gem 'rspec-rails'
  gem 'rubocop', '~> 0.30.1', require: false
  gem 'rubocop-rspec', require: false
  gem 'site_prism'
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'guard', '~> 2.6.1'
  gem 'guard-livereload'
  gem 'launchy'
  gem 'meta_request'
  gem 'quiet_assets'
  gem 'rack-livereload'
  gem 'rb-fsevent'
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'terminal-notifier-guard'
end
