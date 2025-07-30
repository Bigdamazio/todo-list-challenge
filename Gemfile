source "https://rubygems.org"

# Core Rails
gem "rails", "~> 8.0.2"
gem "pg", "~> 1.1"
gem "puma", ">= 5.0"

# Frontend e assets
gem "propshaft"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "tailwindcss-rails"

# Utilitários Rails
gem "jbuilder"
gem "bootsnap", require: false
gem "tzinfo-data", platforms: %i[windows jruby]

# Infraestrutura moderna Rails 8
gem "solid_cable"
gem "solid_cache"
gem "solid_queue"

# DevOps / Deploy
gem "kamal", require: false
gem "thruster", require: false

group :development, :test do
  # Debugging
  gem "debug", platforms: %i[mri windows], require: "debug/prelude"
    gem 'sqlite3'

  # Testes
  gem "factory_bot_rails"
  gem "rails-controller-testing"
  gem "rspec-rails"

  # Segurança
  gem "brakeman", require: false

  # Linter e estilo de código
  gem "rubocop", require: false
  gem "rubocop-rails", require: false
  gem "rubocop-rspec", require: false
  gem "rubocop-capybara", require: false
  gem "rubocop-factory_bot", require: false
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
