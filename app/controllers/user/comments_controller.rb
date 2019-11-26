class User::CommentsController < ApplicationController

  def create
  	schedule = Schedule.find(params[:schedule_id])
  	comment = Comment.new(comment_params)
  	comment.user_id = current_user.id
  	comment.schedule_id = schedule.id
  	if comment.save
        schedule.create_notification_comment!(current_user,comment.id)
  		  redirect_to user_schedule_path(schedule.id)
  	else
  		  redirect_to user_schedule_path(schedule.id)
  	end
  end

  def destroy
  	schedule = Schedule.find(params[:schedule_id])
  	comment= Comment.find_by(schedule_id: schedule.id, id: params[:id])
  	comment.destroy
  	redirect_to user_schedule_path(params[:schedule_id])
  end

  private
    def comment_params
      params.require(:comment).permit(:user_id,:schedule_id,:title,:comment)
    end
end
