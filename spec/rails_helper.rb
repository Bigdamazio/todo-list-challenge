# This file is copied to spec/ when you run 'rails generate rspec:install'
require 'spec_helper'
ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
abort("The Rails environment is running in production mode!") if Rails.env.production?

require 'rspec/rails'

# ✅ Adiciona o require do FactoryBot
require 'factory_bot_rails'

# ✅ Adiciona o Capybara para testes do tipo :system
require 'capybara/rspec'

# ✅ Define o driver padrão para testes de sistema
RSpec.configure do |config|
  config.before(:each, type: :system) do
    driven_by :selenium_chrome_headless
  end
end

# Carrega arquivos de suporte, se desejar:
# Rails.root.glob('spec/support/**/*.rb').sort_by(&:to_s).each { |f| require f }

begin
  ActiveRecord::Migration.maintain_test_schema!
rescue ActiveRecord::PendingMigrationError => e
  abort e.to_s.strip
end

RSpec.configure do |config|
  config.fixture_paths = [ Rails.root.join('spec/fixtures') ]
  config.use_transactional_fixtures = true

  # ✅ Inclui os métodos do FactoryBot nos testes
  config.include FactoryBot::Syntax::Methods

  # ✅ Descomente se quiser que o tipo do teste seja inferido pelo local do arquivo
  # config.infer_spec_type_from_file_location!

  config.filter_rails_from_backtrace!
  # config.filter_gems_from_backtrace("gem name")
end
