class User::NicesController < ApplicationController
  def index
  @schedule = Schedule.find(params[:schedule_id])

  end

  def create
  	schedule = Schedule.find(params[:schedule_id])
    nice = current_user.nices.new(schedule_id: schedule.id)
    nice.save
    nice.create_notification_like!(current_user)
    redirect_to  user_schedule_path(schedule)
  end

  def destroy
  	schedule = Schedule.find(params[:schedule_id])
    nice = current_user.nices.find_by(schedule_id: schedule.id)
    nice.destroy
    redirect_to user_schedule_path(schedule)
  end
end
