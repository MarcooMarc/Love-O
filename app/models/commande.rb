class Commande < ApplicationRecord
	has_many :users
	mount_uploader :photo, PhotoUploader
end
