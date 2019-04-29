class Cthulhu < ApplicationRecord
	belongs_to :user, optional: true

	has_many :original_combat_skills
	accepts_nested_attributes_for :original_combat_skills, allow_destroy: true
	attachment :character_image
end
