class Participant < ApplicationRecord
  def self.find_or_create(email, name, surname, phonenumber)
    participant = self.find_by_email(email)
  return participant unless participant.nil?

  self.create(email: email, name: name, surname: surname, phonenumber: phonenumber)

  end

end