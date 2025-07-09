# Optional: Only needed if you plan to use validations like `validates :image, attached: true`
require "active_storage_validations"

# Needed to use `url_for` inside ActiveAdmin for displaying images
include Rails.application.routes.url_helpers

# Register the Customer model in ActiveAdmin
ActiveAdmin.register Customer do
  # Allow these parameters for mass assignment through ActiveAdmin forms
  permit_params :full_name, :phone_number, :email_address, :notes, :image

  # Customize the form used to create/edit customers in the admin panel
  form do |f|
    f.inputs do
      f.input :full_name
      f.input :phone_number
      f.input :email_address
      f.input :notes
      # File input for uploading an image using ActiveStorage
      f.input :image, as: :file
    end
    f.actions
  end

  # Customize how a customer's details are shown on the admin show page
  show do
    attributes_table do
      row :full_name
      row :phone_number
      row :email_address
      row :notes
      row :image do |customer|
        # Check if an image is attached, and display it if present
        if customer.image.attached?
          image_tag url_for(customer.image), width: 150
        else
          "No image uploaded"
        end
      end
    end
  end
end
