class Schedule < ApplicationRecord
	has_many :articles, dependent: :destroy
	has_many :comments, dependent: :destroy
	has_many :nices, dependent: :destroy
	belongs_to :user
	belongs_to :country
	validates :start_day, presence: true
	validates :finish_day, presence: true
	validates :date, presence: true
	validates :title, presence: true
	validates :theme, presence: true
	attachment :photo
	 def nice_by?(user)
          nices.where(user_id: user.id).exists?
        end
end
