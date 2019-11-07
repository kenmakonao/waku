class Admin::CategorysController < ApplicationController
  def index
  	@categorys =Category.all
  end

  def show
  	@category = Category.find(params[:id])
  end

  def edit
  	@category = Category.find(params[:id])
  end

  def new
  	@category = Category.new
  end

  def create
  	@category = Category.new(category_params)
  	if @category.save
  		redirect_to admin_category_path(@category.id)
  	else
  		render :new
    end
  end

  def update
     @category = Category.find(params[:id])
     @category.update(category_params)
  	 redirect_to admin_category_path(@category.id)
  end

  def destroy
     @category = Category.find(params[:id])
     @category.destroy
     redirect_to admin_categorys_path
  end
   private
    def category_params
      params.require(:category).permit(:icon,:explanation)
    end
end
