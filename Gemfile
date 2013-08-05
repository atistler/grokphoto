source 'http://rubygems.org'

gem 'rails', '4'

# Heroku's web server
gem 'thin'

# Javascript
gem 'json'
gem 'jquery-rails'

# Markup / templates
gem 'rdiscount'
gem 'haml'

# Authentication
gem 'devise'

# Responders
gem 'responders'

# Ordering
gem 'acts_as_list'

# Forms - TODO: Switch to a stable gem once the wrapper stuff is released.
gem 'simple_form'

# Image uploads
gem 'rack-cache', :require => 'rack/cache'
gem 'dragonfly'
gem 'fog'

# Paging
gem 'kaminari'
gem 'kaminari-bootstrap'

# Caching
gem 'dalli'

# Factory
gem 'factory_girl_rails'

# Gems used only for assets and not required
# In production environments by default.
group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'
  gem 'uglifier'
  gem 'execjs'
end

group :development, :test do
  # Database
  gem 'sqlite3'
end

group :development do
  # Generators
  gem 'haml-rails'

  # Deploy (for environments other than heroku)
  gem 'capistrano'
end

group :test do
  # Pretty printed test output
  gem 'turn', :require => false
  
  # Cleanup
  gem 'database_cleaner', '~> 0.8'
end

group :production do
  # Database
  gem 'pg'
end