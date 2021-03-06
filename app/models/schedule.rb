class Schedule < ApplicationRecord
	has_many :notifications, dependent: :destroy
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
	enum status: {nonreleased: 0, released: 1}


	def create_notification_nice!(current_user)
  	# すでに「いいね」されているか検索
  	temp = Notification.where(["visitor_id = ? and visited_id = ? and schedule_id = ? and action = ? ", current_user.id, user_id, id, 'like'])
  	# いいねされていない場合のみ、通知レコードを作成
    if temp.blank?
    	notification = current_user.active_notifications.new(
        schedule_id: id,
        visited_id: user_id,
        action: 'nice'
    	)
	    # 自分の投稿に対するいいねの場合は、通知済みとする
	    if notification.visitor_id == notification.visited_id
	      notification.checked = true
	    end

	   	notification.save if notification.valid?
	  end
	end

	def nice_by?(user)
    self.nices.where(user_id: user.id).exists?
  end


  def create_notification_comment!(current_user, comment_id)
    # 自分以外にコメントしている人をすべて取得し、全員に通知を送る
    temp_ids = Comment.select(:user_id).where(schedule_id: id).where.not(user_id: current_user.id).distinct
    temp_ids.each do |temp_id|
      save_notification_comment!(current_user, comment_id, temp_id['user_id'])
    end
    # まだ誰もコメントしていない場合は、投稿者に通知を送る
    save_notification_comment!(current_user, comment_id, user_id) if temp_ids.blank?
  end

  def save_notification_comment!(current_user, comment_id, visited_id)
    # コメントは複数回することが考えられるため、１つの投稿に複数回通知する
    notification = current_user.active_notifications.new(
      schedule_id: id,
      comment_id: comment_id,
      visited_id: visited_id,
      action: 'comment'
    )
    # 自分の投稿に対するコメントの場合は、通知済みとする
    if notification.visitor_id == notification.visited_id
      notification.checked = true
    end
    notification.save if notification.valid?
  end
end
