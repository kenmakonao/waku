class Continent < ApplicationRecord
	has_many :countrys, dependent: :destroy
	# validates :continent, presence: true
end
