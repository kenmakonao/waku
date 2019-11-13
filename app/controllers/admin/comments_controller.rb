class Admin::CommentsController < ApplicationController
 def destroy
  	schedule = Schedule.find(params[:schedule_id])
  	comment= Comment.find_by(schedule_id: schedule.id, id: params[:id])
  	comment.destroy
  	redirect_to admin_schedule_path(schedule.id)
  end
end
