class User::SchedulesController < ApplicationController
  def index
  end
  def new
    @schedule = Schedule.new
  end

  def show
  	@schedule = Schedule.find(params[:id])
    #schedule.user.id=user.id
    @articles_by_date = @schedule.articles.order(:date).group_by{|a| a.date}
    @comment = Comment.new
  end

  def photos
    @schedule = Schedule.find(params[:id])
    @articles_by_date = @schedule.articles.order(:date).group_by{|a| a.date}
    @articles_by_date.each do |key,articles|
     #articles.sort_by{|a| a.start_time}
    end
  end


  def articles
    @schedule = Schedule.find(params[:id])
    @articles_by_date = @schedule.articles.order(:date).group_by{|a| a.date}
    @articles_by_date.each do |key,articles|
     #articles.sort_by{|a| a.start_time}
    end
  end

  def edit
  	@schedule= Schedule.find(params[:id])
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

  def release
    schedule = Schedule.find(params[:id])
    if schedule.nonreleased?
      schedule.update(status: 1)
    end
    redirect_to user_schedule_path(schedule.id), notice: 'この作品を公開しました'
  end

  def nonrelease
    schedule = Schedule.find(params[:id])
    if schedule.released?
      schedule.update(status: 0)
    end
    redirect_to user_schedule_path(schedule.id), notice: 'この作品を非公開にしました'
  end


  private
    def schedule_params
      params.require(:schedule).permit(:country_id,:start_day,:finish_day,:date,:title,:memo,:photo,:theme)
    end
    def status_params
      params.require(:schedule).permit(:status)
    end
end