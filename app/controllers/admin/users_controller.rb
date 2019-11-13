class Admin::UsersController < ApplicationController
  def index
    #@users = User.with_deleted.page(params[:page]).per(PER)
    @users =User.all
  end

  def show
  	@user = User.find(params[:id])
    @schedules = @user.schedules
  end

  def edit
  	@user = User.find(params[:id])
  end
  def update
  	@user = User.find(params[:id])
  	@user.update(user_params)
  	redirect_to admin_user_path(@user.id)
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to admin_users_path
  end


   private
    def user_params
      params.require(:user).permit(:photo,:kanzi_last_name,:kanzi_first_name,:kana_last_name,:kana_first_name,:email,:nickname,:sex,:like_country,:self_introduction)
    end
end
