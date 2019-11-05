class Contact < ApplicationRecord

  validates :name, presence: true
  validates :surmane, presence: true
  validates :email, presence: true
  validates :message, presence: true

end