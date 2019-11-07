class User::SchedulesController < ApplicationController
  def index
  	@schedule = Schedule.all
  end

  def show
  	@schedule = Schedule.find(params[:id])
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
   	@schedule = Schedule.find(params[:id])
    @schedule.user_id = current_user.id
   	@schedule.update(schedule_params)
    redirect_to user_schedule_path(@schedule.id)
  end

  def destroy
   	@schedule= Schedule.find(params[:id])
    @schedule.destroy
    redirect_to user_continents_path
  end

  private
    def schedule_params
      params.require(:schedule).permit(:country_id,:start_day,:finish_day,:date,:title,:memo,:photo,:theme)
    end
end