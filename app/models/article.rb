class Article < ApplicationRecord
	belongs_to :category
	belongs_to :schedule
	validates :date, presence: true
	validates :start_time, presence: true
	validates :title, presence: true
	attachment :photo
end
