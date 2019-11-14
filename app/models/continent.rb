class Continent < ApplicationRecord
	has_many :countrys, dependent: :destroy
	attachment :photo
end
