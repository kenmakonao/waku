class Admin::SchedulesController < ApplicationController

  def show
  	@schedule = Schedule.find(params[:id])
  	@articles_by_date = @schedule.articles.order(:date).group_by{|a| a.date}
    @articles_by_date.each do |key,articles|
    end
  end

  def edit
  	@schedule= Schedule.find(params[:id])
  end

   def update
   	schedule = Schedule.find(params[:id])
    user = schedule.user
   	schedule.update(schedule_params)
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
