class ApplicationController < ActionController::Base

	before_action :configure_permitted_parameters, if: :devise_controller?
	before_action :rank
	before_action :photo

	protected
	 def configure_permitted_parameters
	   devise_parameter_sanitizer.permit(:sign_up, keys: [:kanzi_last_name,:kanzi_first_name,:kana_last_name,:kana_first_name,:email,:password,:nickname,:sex,:like_country,:self_introduction,:photo])
	 end
	Refile.secret_key = 'c508c949c11f473da38bebb7c8df357edb958fc65b8684c8b8d542623f711aa2a63ef2dfdcda8d967e414011f5ec1f6e576cf39861d31076c4a0bb562c9f5210'

	def rank
    @all_ranks = Schedule.find(Nice.group(:schedule_id).order('count(Schedule_id) desc').limit(3).pluck(:schedule_id))
    @All_ranks = User.find(Relationship.group(:user_id).order('count(user_id) desc').limit(3).pluck(:user_id))
	end

	def photo
		 @current_user = current_user
	end
end
