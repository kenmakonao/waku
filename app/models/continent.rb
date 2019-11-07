class Continent < ApplicationRecord
	has_many :country, dependent: :destroy
	# validates :continent, presence: true
end
