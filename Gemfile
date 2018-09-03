source 'https://rubygems.org'

gem 'rake'
gem 'slim'
gem 'sassc'
gem 'hanami',       '~> 1.2'
gem 'hanami-model', '~> 1.2'

gem 'sqlite3'

group :development do
  # Code reloading
  # See: http://hanamirb.org/guides/projects/code-reloading
  gem 'shotgun', platforms: :ruby
  gem 'hanami-webconsole'
  gem "pry-byebug", "~> 3.6"
end

group :test, :development do
  gem 'dotenv', '~> 2.0'
end

group :test do
  gem 'minitest'
  gem 'capybara'
end

group :production do
  # gem 'puma'
end
