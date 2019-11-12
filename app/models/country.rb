class Country < ApplicationRecord
	has_many :schedules, dependent: :destroy
	belongs_to :continent
	validates :name, presence: true
	validates :money, presence: true
	validates :world_heritage, presence: true
	attachment :photo
end

