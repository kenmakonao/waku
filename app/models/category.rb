class Category < ApplicationRecord
	# belongs_to :article
	validates :icon, presence: true
	validates :explanation, presence: true
	attachment :icon

end
