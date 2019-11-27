class Admin::TopsController < ApplicationController
  def index
 end

  def after_sign_out_path_for(resource)
     new_admin_session_path
  end

end

