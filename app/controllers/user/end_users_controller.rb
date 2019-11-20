class User::EndUsersController < ApplicationController
  def show
  		@user = User.find(params[:id])

      # コメントしたリストを取得
      @schedules = @user.schedules
      schedules =  Schedule.where(user_id: params[:id])
      schedule_ids = schedules.map{|schedule|schedule.id}

      @schedule_title = {}
      schedules.each do |schedule|
      @schedule_title.store(schedule.id, schedule.title)
      end
      @comments = Comment.where(schedule_id: schedule_ids)

      # いいねしたリストを取得
      @nices =  Nice.where(user_id: params[:id])
      @schedule_ids = @nices.map{|nice|nice.schedule_id}
      @schedules =  Schedule.where("id IN (?)", @schedule_ids)

      #フォローしたユーザ
      @relationships = Relationship.where(user_id: params[:id])
      @follow_ids = @relationships.pluck(:follow_id)
      @followings = User.where(id: @follow_ids)
      @notifications = current_user.passive_notifications.page(params[:page]).per(20)

  end

  def edit
  	@user = User.find(params[:id])
  end

  def update
  	@user = User.find(params[:id])
  	@user.update(user_params)
  	redirect_to user_end_user_path(current_user.id)
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to user_finish_path
  end

  def checks
  end
  def finish
  end
  


  private
    def user_params
      params.require(:user).permit(:photo,:kanzi_last_name,:kanzi_first_name,:kana_last_name,:kana_first_name,:email,:nickname,:sex,:like_country,:self_introduction)
    end

end
