class Commande < ApplicationRecord
	belongs_to :customer
	mount_uploader :photo, PhotoUploader
end
