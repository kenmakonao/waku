class Admin::CountriesController < ApplicationController
  PER = 10
  def index
  	@countrys = Country.page(params[:page]).per(PER)
  end

  def show
  	 @country = Country.find(params[:id])
  end

  def edit
  	 @country = Country.find(params[:id])
  end

  def new
  	 @country = Country.new
  end

  def create
    #binding.pry
  	 @country = Country.new(country_params)
  	 if @country.save
  		redirect_to admin_country_path(@country)
  	 else
  		 render :new
     end
  end

  def update
     country = Country.find(params[:id])
     country.update(country_params)
  	 redirect_to admin_country_path(country.id)
  end

  def destroy
     country = Country.find(params[:id])
     country.destroy
     redirect_to admin_countries_path
  end

    private
    def country_params
      params.require(:country).permit(:continent_id,:photo,:name,:latitude,:longitude,:money,:time_difference,:world_heritage,:language)
    end
end
