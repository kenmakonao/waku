class Category < ApplicationRecord
	has_many :articles, dependent: :destroy
	validates :icon, presence: true
	validates :explanation, presence: true
	attachment :icon

end
