class CustomersController < ApplicationController
  # Show all customers
  def index
    @customers = Customer.all
  end

  # Show all customers in alphabetical order
  def alphabetized
    @customers = Customer.order(:full_name)
  end

  # Show customers who have no email address
  def missing_email
    @customers = Customer.where(email_address: [nil, ""])
  end
end