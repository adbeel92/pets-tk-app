class Pet < ActiveRecord::Base
	has_many :favorite_pets
	belongs_to :user
	attr_accessor :is_favorite

	has_attached_file :image
	validates_attachment :image, content_type: { content_type: "image/jpeg" }
end
