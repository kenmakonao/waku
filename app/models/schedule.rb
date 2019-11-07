class Schedule < ApplicationRecord
	has_many :articles, dependent: :destroy
	has_many :comments, dependent: :destroy ,foreign_key: "user_id", primary_key: "user_id"
	belongs_to :user
	belongs_to :country
	validates :start_day, presence: true
	validates :finish_day, presence: true
	validates :date, presence: true
	validates :title, presence: true
	validates :theme, presence: true
	attachment :photo
end
