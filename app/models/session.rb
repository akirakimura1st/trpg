class Session < ApplicationRecord
	validates :start_date, presence: true
	validates :deadline, presence: true
	belongs_to :user
end
