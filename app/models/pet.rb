class Pet < ActiveRecord::Base
	has_many :favorite_pets
	belongs_to :user
	attr_accessor :is_favorite
end
