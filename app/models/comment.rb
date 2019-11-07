class Comment < ApplicationRecord
	belongs_to :user
	belongs_to :schedule
	validates :title, presence: true
	validates :comment, presence: true
end
