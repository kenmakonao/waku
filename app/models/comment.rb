class Comment < ApplicationRecord
	has_many :notifications, dependent: :destroy
	belongs_to :user
	belongs_to :schedule
	validates :title, presence: true
	validates :comment, presence: true
end
