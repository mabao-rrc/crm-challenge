class Customer < ApplicationRecord
  # Attach one image using ActiveStorage
  has_one_attached :image

  # Validations
  validates :full_name, presence: true
  validates :email_address, format: { with: URI::MailTo::EMAIL_REGEXP }, allow_blank: true
  validates :image, content_type: [:png, :jpg, :jpeg], size: { less_than: 5.megabytes }

  # Allowlist Ransack attributes for search
  def self.ransackable_attributes(auth_object = nil)
    ["full_name", "email_address", "phone_number", "notes", "created_at", "updated_at"]
  end

  # Allowlist Ransack associations (needed for image filters)
  def self.ransackable_associations(auth_object = nil)
    ["image_attachment", "image_blob"]
  end
end
