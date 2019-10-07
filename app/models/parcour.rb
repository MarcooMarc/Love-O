class Parcour < ApplicationRecord
	mount_uploader :photo1, PhotoUploader
	mount_uploader :photo2, PhotoUploader
	mount_uploader :photo3, PhotoUploader
	mount_uploader :photo4, PhotoUploader
	mount_uploader :photo5, PhotoUploader
	mount_uploader :photo6, PhotoUploader

end
