class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


    has_many :relationships
    has_many :followings, through: :relationships, source: :follow
    has_many :reverse_of_relationships, class_name: 'Relationship', foreign_key: 'follow_id'
    has_many :followers, through: :reverse_of_relationships, source: :user
    has_many :messages, dependent: :destroy
  	has_many :entries, dependent: :destroy

	  def follow(other_user)
	    unless self == other_user
	      self.relationships.find_or_create_by(follow_id: other_user.id)
	    end
	  end

	  def unfollow(other_user)
	    relationship = self.relationships.find_by(follow_id: other_user.id)
	    relationship.destroy if relationship
	  end

	  def following?(other_user)
	    self.followings.include?(other_user)
	  end

	has_many :schedules, dependent: :destroy
	has_many :comments, dependent: :destroy
	has_many :nices, dependent: :destroy

	has_many :active_notifications, class_name: 'Notification', foreign_key: 'visitor_id', dependent: :destroy
  	has_many :passive_notifications, class_name: 'Notification', foreign_key: 'visited_id', dependent: :destroy
	#has_many :favorites, dependent: :destroy
	def create_notification_follow!(current_user)
	    temp = Notification.where(["visitor_id = ? and visited_id = ? and action = ? ",current_user.id, id, 'follow'])
	    if temp.blank?
	      notification = current_user.active_notifications.new(
	        visited_id: id,
	        action: 'follow'
	      )
	      notification.save if notification.valid?
	    end
	end
	validates :nickname, presence: true
	validates :email, presence: true
	attachment :photo

end
