class User::NotificationsController < ApplicationController

	def notification
    @notifications = current_user.notifications.all
    @notifications.where(checked: false).each do |notification|
      notification.update_attributes(checked: true)
    end
  end

  def check_out
    @notifications = current_user.notifications
    @notifications.where(checked: false).each do |notification|
      notification.update_attributes(checked: true)
    end
    redirect_to user_end_user_path(current_user.id)
  end
end
