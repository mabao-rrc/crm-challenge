source "https://rubygems.org"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 8.0.2"
# The modern asset pipeline for Rails [https://github.com/rails/propshaft]
gem "propshaft"
# Use sqlite3 as the database for Active Record
gem "sqlite3", ">= 2.1"
# Use the Puma web server [https://github.com/puma/puma]
gem "puma", ">= 5.0"
# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem "importmap-rails"
# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails"
# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails"
# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder"
# Admin dashboard framework for Rails that allows you to easily manage data through a UI.
# Generates a fully functional back-office interface for models like Customer.
# Provides a rich set of features for managing data, including CRUD operations, search, filters, and more.
# ActiveAdmin is highly customizable and can be extended with plugins to add additional functionality.
# It is designed to work seamlessly with Rails applications and provides a user-friendly interface for managing data.
# [https://activeadmin.info/]
# Note: ActiveAdmin requires a database to function properly, so ensure you have a database setup in your Rails application.
# If you are using SQLite, ensure that the sqlite3 gem is included in your Gemfile.
# If you are using PostgreSQL or MySQL, ensure that the appropriate database adapter gem is included in your Gemfile.
# ActiveAdmin also requires a JavaScript runtime
gem "activeadmin"

# Add Bootstrap for responsive layout and styling
# Bootstrap is a popular CSS framework that provides a set of pre-designed components and styles.
# It helps in building responsive and visually appealing web applications quickly.
# The "~> 5.3.0" version constraint ensures compatibility with the latest Bootstrap 5 features.
# [https://getbootstrap.com/]
gem "bootstrap", "~> 5.3.0"

# Add CSS bundler to support stylesheets like active_admin.css
gem "cssbundling-rails"

# Adds validation helpers for ActiveStorage attachments (e.g., validates attached image presence/size/type)
gem "active_storage_validations"

# User authentication for ActiveAdmin
gem "devise"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ windows jruby ]

# Use the database-backed adapters for Rails.cache, Active Job, and Action Cable
gem "solid_cache"
gem "solid_queue"
gem "solid_cable"

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Deploy this application anywhere as a Docker container [https://kamal-deploy.org]
gem "kamal", require: false

# Add HTTP asset caching/compression and X-Sendfile acceleration to Puma [https://github.com/basecamp/thruster/]
gem "thruster", require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"

  # Static analysis for security vulnerabilities [https://brakemanscanner.org/]
  gem "brakeman", require: false

  # Omakase Ruby styling [https://github.com/rails/rubocop-rails-omakase/]
  gem "rubocop-rails-omakase", require: false
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara"
  gem "selenium-webdriver"
end
