class Customer < ApplicationRecord
  def self.find_or_create(name, surname, email, phonenumber, lieu, livraison)
    customer = self.find_by_email(email)
  return customer unless customer.nil?

    self.create(name: name, surname: surname, email: email, phonenumber: phonenumber, lieu: lieu, livraison: livraison)
  end
end