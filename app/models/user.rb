class User < ApplicationRecord
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
	devise :database_authenticatable, :registerable,
		:recoverable, :rememberable, :validatable
		has_many :cthulhus, dependent: :destroy
		has_many :have_systems, dependent: :destroy
		accepts_nested_attributes_for :have_systems, allow_destroy: true
		has_many :sessions, dependent: :destroy
		has_many :daiaries, dependent: :destroy
		has_many :comments, dependent: :destroy
		has_many :add_users, dependent: :destroy
		has_many :communities, dependent: :destroy, through: :add_users
		accepts_nested_attributes_for :add_users, allow_destroy: true

		attachment :profile_image
		attachment :profile_head_image
end
