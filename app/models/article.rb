class Article < ApplicationRecord
	belongs_to :category
	has_many :nice, dependent: :destroy
	belongs_to :schedule
	validates :date, presence: true
	validates :time, presence: true
	validates :title, presence: true
end
