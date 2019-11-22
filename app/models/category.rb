class Category < ApplicationRecord
	has_many :articles, dependent: :destroy
	# belongs_to :article
	validates :icon, presence: true
	validates :explanation, presence: true
	attachment :icon

end
