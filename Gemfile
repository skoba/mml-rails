ruby '2.0.0'

source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 4.0.0.beta'

#gem 'sqlite3'
gem 'pg'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 4.0.0.beta'
  gem 'coffee-rails', '~> 4.0.0.beta'
  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', platforms: :ruby
  gem 'formtastic'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 1.0.1'
gem 'twitter-bootstrap-rails'
gem 'less'
gem 'less-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano', group: :development

# To use debugger
# gem 'debugger'


# group :development do
#   gem 'guard-livereload'
#   gem 'guard-unicorn'
# # #   gem 'livereload'
# end

group :test, :development do
  gem 'rspec'
  gem 'rspec-rails'
  gem 'spring'
  gem 'guard'#, '1.7.0'
  gem 'guard-rspec'#, '2.6.0'
  gem 'guard-cucumber'
  gem 'guard-spring' #, '0.0.2'
  gem 'cucumber-rails', require: false
  gem 'listen'
  gem 'libnotify'
# # for BSD guys
#   gem 'rb-kqueue'
  gem 'simplecov'
  gem 'database_cleaner', github: 'bmabey/database_cleaner'
#  gem 'rails3-generators' #mainly for factory_girl & simple_form at this point
  gem 'capybara'
  #  gem 'forgery'
#  gem 'livereload'
  gem 'factory_girl_rails'
end
