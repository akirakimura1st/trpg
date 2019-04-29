class Community < ApplicationRecord
	has_many :comments, dependent: :destroy
	has_many :add_users, dependent: :destroy
	has_many :users, dependent: :destroy, through: :add_users
	accepts_nested_attributes_for :add_users, allow_destroy: true
	attachment :community_image
end
