class Comment < ApplicationRecord
	belongs_to :user
	belongs_to :schedule, foreign_key: "user_id"
	validates :title, presence: true
	validates :comment, presence: true
end
