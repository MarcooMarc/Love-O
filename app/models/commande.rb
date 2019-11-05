class Commande < ApplicationRecord
	belongs_to :customer
	validates :name, presence: true 
	mount_uploader :photo, PhotoUploader
end
