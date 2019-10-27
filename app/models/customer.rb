class Customer < ApplicationRecord
after_create :send_commandes_email

  def self.find_or_create(customer_params)
    customer = self.find_by_email(customer_params)
  return customer unless customer.nil?

  self.create(email: customer_params, name: customer_params, surname: customer_params)

  end

  private

  def send_commandes_email
    UserMailer.commandes(self).deliver.now
  end
end
