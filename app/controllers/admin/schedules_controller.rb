class Admin::SchedulesController < ApplicationController
  # def index
  	# @ = Schedule.find(params[:id])
  	# @schedules = Schedule.where(user_id: user.id)
  # end

  def show
  	@schedule = Schedule.find(params[:id])
  	@articles_by_date = @schedule.articles.order(:date).group_by{|a| a.date}
    @articles_by_date.each do |key,articles|
     articles.sort_by{|a| a.start_time}
    end
  end

  def edit
  	@schedule= Schedule.find(params[:id])
  end

   def update
   	@schedule = Schedule.find(params[:id])
    @schedule.user_id = current_user.id
   	@schedule.update(schedule_params)
    redirect_to  admin_schedule_path(params[:id])
  end

   def destroy
   	schedule= Schedule.find(params[:id])
    user = schedule.user
    schedule.destroy
    redirect_to  admin_user_path(user)
  end

  private
    def schedule_params
      params.require(:schedule).permit(:country_id,:start_day,:finish_day,:date,:title,:memo,:photo,:theme)
    end
end
