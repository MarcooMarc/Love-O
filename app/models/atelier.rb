class Atelier < ApplicationRecord
  belongs_to :participant
  mount_uploader :photo, PhotoUploader

end
