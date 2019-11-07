class Schedule < ApplicationRecord
	has_many :article, dependent: :destroy
	has_many :comment, dependent: :destroy
	belongs_to :user
	belongs_to :country
	validates :start_day, presence: true
	validates :finish_day, presence: true
	validates :date, presence: true
	validates :title, presence: true
	validates :theme, presence: true
	attachment :photo
end
