class Customer < ApplicationRecord
  def self.find_or_create(customer_params)
    customer = self.find_by_email(customer_params)
  return customer unless customer.nil?

  self.create(email: customer_params)

  end

after_create :send_bento_reservation_email

private
def send_bento_reservation_email
  UserMailer.with(customer: self).order.delivery_now
end

end
