class User::RelationshipsController < ApplicationController
  before_action :set_user

  def create
    user = User.find(params[:follow_id])
    following = current_user.follow(user)
    if following.save
      flash[:success] = 'ユーザーをフォローしました'
      user.create_notification_follow!(current_user)
    else
      flash.now[:alert] = 'ユーザーのフォローに失敗しました'
    end
    redirect_to user_end_user_path(user.id)
  end

  def destroy
    user = User.find(params[:follow_id])
    following = current_user.unfollow(user)
    if following.destroy
      flash[:success] = 'ユーザーのフォローを解除しました'
    else
      flash.now[:alert] = 'ユーザーのフォロー解除に失敗しました'
    end
      redirect_to user_end_user_path(user.id)
  end

  private
  def set_user
    user = User.find(params[:follow_id])
  end

end


