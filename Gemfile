source 'http://rubygems.org'

gem 'rails', '3.2.6'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem "twitter-bootstrap-rails"
  gem 'coffee-rails'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
gem 'backbone-on-rails'
gem 'display_case'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the web server
gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

gem "rspec-rails", ">= 2.8.1", :group => [:development, :test]
group :test do
  gem "database_cleaner", ">= 0.7.1"
  gem "mongoid-rspec" 
  gem "email_spec", ">= 1.2.1"
  gem "cucumber-rails", ">= 1.3.0"
  gem "capybara", ">= 1.1.2"
  gem "launchy", ">= 2.0.5"
end

gem "guard", ">= 0.6.2", :group => :development
gem "guard-bundler", ">= 0.1.3", :group => :development
gem "guard-rails", ">= 0.0.3", :group => :development
gem "guard-livereload", ">= 0.3.0", :group => :development
gem "guard-rspec", ">= 0.4.3", :group => :development
gem "guard-cucumber", ">= 0.6.1", :group => :development
gem "bson_ext", ">= 1.5.2"

gem "mongoid"
gem "devise", ">= 2.0.4"
gem "streama", :git => "git://github.com/christospappas/streama.git"
#gem "streama", :path => "../streama"
#gem "pry"
