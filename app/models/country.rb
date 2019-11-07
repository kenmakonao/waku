class Country < ApplicationRecord
	has_many :schedules, dependent: :destroy
	belongs_to :continent
	validates :name, presence: true
	validates :latitude, presence: true
	validates :longitude, presence: true
	validates :money, presence: true
	validates :time_difference, presence: true
	validates :world_heritage, presence: true
	attachment :photo
end

