source 'https://rubygems.org'

gem 'rails', '3.2.7'

group :development do
  gem 'sqlite3' # use SQLite only in development and testing
end

group :production do
  gem 'pg' # use PostgreSQL in production (Heroku)
end

group :test, :development do
	gem 'rspec-rails'
	gem 'capybara'
	gem 'launchy'
	gem 'guard-rspec'
	gem 'growl'
end


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
#gem 'acts_as_list', :git => 'git://github.com/rails/acts_as_list'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use debugger
# gem 'debugger'
