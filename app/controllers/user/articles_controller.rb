class User::ArticlesController < ApplicationController

  def show
  	@article = Article.find(params[:id])
  end

  def edit
  	@article = Article.find(params[:id])
  end

  def new
  	@article = Article.new
  end

  def create
  	schedule = Schedule.find(params[:schedule_id])
  	@article = Article.new(article_params)
  	@article.schedule_id = params[:schedule_id]
  	if @article.save
  		redirect_to user_schedule_article_path(params[:schedule_id],@article.id)
  	else
  		render :new
  	end
  end

  def update
  	article = Article.find(params[:id])
    article.schedule_id = params[:schedule_id]
    article.update(article_params)
    redirect_to user_schedule_article_path(params[:schedule_id],params[:id])
  end

  def destroy
  	article = Article.find(params[:id])
    article.destroy
    redirect_to user_schedule_path(params[:schedule_id])
  end

  private
    def article_params
      params.require(:article).permit(:schedule_id,:category_id,:date,:start_time,:finish_time,:title,:memo,:evaluation,:photo)
    end

end
