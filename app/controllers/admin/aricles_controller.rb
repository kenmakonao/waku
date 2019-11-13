class Admin::AriclesController < ApplicationController
  def index
  	@article = Article.find(params[:id])
  end

  def show
  	@article = Article.find(params[:id])
  end

  def edit
  	@article = Article.find(params[:id])
  end
  def update
  	article = Article.find(params[:id])
    article.schedule_id = params[:schedule_id]
    article.update(article_params)
    redirect_to admin_schedule_aricle_path(params[:schedule_id],params[:id])
  end

  def destroy
  	article = Article.find(params[:id])
    article.destroy
    redirect_to admin_schedule_path(params[:schedule_id])
  end

private
    def article_params
      params.require(:article).permit(:schedule_id,:category_id,:date,:start_time,:finish_time,:title,:memo,:evaluation,:photo)
    end

end
