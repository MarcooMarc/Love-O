class Participant < ApplicationRecord
  def self.find_or_create(participant_params)
    participant = self.find_by_email(participant_params)
  return participant unless participant.nil?

  self.create(email: participant_params, name: participant_params, surname: participant_params)

  end

end