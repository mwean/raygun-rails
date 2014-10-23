source 'https://rubygems.org'
source 'https://rails-assets.org'

ruby '2.1.3'

gem 'annotate', '~> 2.6.5'
gem 'awesome_print'
gem 'bourbon'
gem 'coffee-rails'
gem 'cssminify'
gem 'envied'
gem 'i18n-tasks', '~> 0.7.8'
gem 'jquery-rails'
gem 'neat'
gem 'newrelic_rpm', '>= 3.7.3'
gem 'oj'
gem 'pg'
gem 'rack-canonical-host'
gem 'rack-timeout'
gem 'rails', '~> 4.2.0.beta2'
gem 'rails-assets-normalize.css'
gem 'sass-rails', '~> 5.0.0.beta1'
gem 'simple_form', '~> 3.1.0.rc2'
gem 'slim-rails'
gem 'uglifier'
gem 'unicorn'

group :production, :acceptance do
  gem 'heroku_rails_deflate'
  gem 'rails_stdout_logging'
end

group :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'factory_girl_rails'
  gem 'jasminerice'
  gem 'poltergeist'
  gem 'shoulda-matchers', require: false
  gem 'simplecov'
  gem 'zonebie'
end

group :test, :development do
  gem 'byebug'
  gem 'dotenv-rails'
  gem 'pry'
  gem 'rspec-rails'
  gem 'rubocop', '~> 0.26.1', require: false
  gem 'rubocop-rspec', require: false
  gem 'coffeelint'
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'guard', '~> 2.6.1'
  gem 'guard-livereload'
  gem 'launchy'
  gem 'quiet_assets'
  gem 'rack-livereload'
  gem 'rb-fsevent'
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'terminal-notifier-guard'
end
