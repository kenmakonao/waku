class User::SchedulesController < ApplicationController
  def index
  	@schedule = Schedule.all
  end

  def show
  	@schedule = Schedule.find(params[:id])
    @articles_by_date = @schedule.articles.order(:date).group_by{|a| a.date}
    @articles_by_date.each do |key,articles|
    articles.sort_by{|a| a.start_time}
    end
    @comment = Comment.new
  end

  def edit
  	@schedule= Schedule.find(params[:id])
  end

  def new
  	@schedule = Schedule.new
  end

  def create
  	@schedule = Schedule.new(schedule_params)
  	@schedule.user_id = current_user.id
  	if @schedule.save
  		redirect_to user_schedule_path(@schedule.id)
  	else
  		render :new
  	end
  end

  def update
   	schedule = Schedule.find(params[:id])
    schedule.user_id = current_user.id
   	schedule.update(schedule_params)
    redirect_to  user_schedule_path(params[:id])
  end

  def destroy
   	schedule= Schedule.find(params[:id])
    user = schedule.user
    schedule.destroy
    redirect_to user_end_user_path(user)
  end

  private
    def schedule_params
      params.require(:schedule).permit(:country_id,:start_day,:finish_day,:date,:title,:memo,:photo,:theme)
    end
end