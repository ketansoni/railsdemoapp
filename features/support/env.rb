require 'cucumber/rails'

DatabaseCleaner.strategy = :transaction
Cucumber::Rails::Database.javascript_strategy = :truncation
ActionController::Base.allow_rescue = false
Capybara.default_selector = :css
Capybara.javascript_driver = :selenium

