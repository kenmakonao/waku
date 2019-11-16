class User::EndUsersController < ApplicationController
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
