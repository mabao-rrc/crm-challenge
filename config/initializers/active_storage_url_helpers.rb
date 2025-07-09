# config/initializers/active_storage_url_helpers.rb

# This makes sure ActiveAdmin can use `url_for` for ActiveStorage attachments,
# such as in forms (`f.input :image, as: :file`) or in custom views.
Rails.application.config.to_prepare do
  ActiveAdmin::BaseController.helper Rails.application.routes.url_helpers
end
