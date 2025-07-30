source "https://rubygems.org"

gem "pg", "~> 1.1"
gem "puma", ">= 5.0"
gem "rails", "~> 8.0.2"

gem "importmap-rails"
gem "propshaft"
gem "stimulus-rails"
gem "tailwindcss-rails"
gem "turbo-rails"

gem "bootsnap", require: false
gem "jbuilder"
gem "tzinfo-data", platforms: %i[windows jruby]

gem "solid_cable"
# gem "solid_cache"
# gem "solid_queue"

gem "kamal", require: false
gem "thruster", require: false

group :development, :test do
  gem "debug", platforms: %i[mri windows], require: "debug/prelude"
  gem 'sqlite3'
  gem "factory_bot_rails"
  gem "rails-controller-testing"
  gem "rspec-rails"
  gem "brakeman", require: false
  gem "rubocop", require: false
  gem "rubocop-capybara", require: false
  gem "rubocop-factory_bot", require: false
  gem "rubocop-rails", require: false
  gem "rubocop-rspec", require: false
  gem "rubocop-rspec_rails", require: false
end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end

gem "dockerfile-rails", ">= 1.7", group: :development