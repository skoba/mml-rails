ruby '2.2.2'

source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails' #, '~> 4.0.0.beta'

#gem 'sqlite3'
gem 'pg'
gem 'rails_12factor'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails' #,   '~> 4.0.0.beta'
  gem 'coffee-rails' #, '~> 4.0.0.beta'
  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', platforms: :ruby
  gem 'formtastic'
  gem 'uglifier' #, '>= 1.0.3'
end

gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder' #, '~> 1.0.1'
gem 'bootstrap-sass'
#gem 'twitter-bootstrap-rails'
#gem 'less'
#gem 'less-rails'
#gem 'openehr', github: 'skoba/openehr-ruby'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano', group: :development

# To use debugger
# gem 'debugger'


group :test, :development do
  gem 'rspec'
  gem 'rspec-rails'
  gem 'rspec-activemodel-mocks'
  gem 'spring-commands-rspec'
  gem 'spring'
  gem 'guard' #, '1.7.0'
  gem 'guard-rails'
  gem 'guard-rspec' #, '2.6.0'
  gem 'guard-livereload'
#  gem 'listen', '~> 2.7'
  gem 'libnotify'
  gem 'simplecov'
  gem 'database_cleaner' #, github: 'bmabey/database_cleaner'
  gem 'capybara'
  gem 'factory_girl_rails'
end

require 'rbconfig'
if RbConfig::CONFIG['target_os'] =~ /(?i-mx:bsd|dragonfly)/
  gem 'rb-kqueue', '>= 0.2'
end
