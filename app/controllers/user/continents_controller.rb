class User::ContinentsController < ApplicationController
  def index
  	@continents = Continent.all
    #@search = Country.ransack(params[:q])
    #@countrys = @search.result(distinct: true)
  end

  def show
  	@continent = Continent.find(params[:id])
  	@countrys = @continent.countrys
    #@countrys = @search.result(distinct: true)
  end

  def country
  	@country = Country.find(params[:id])
  	@schedules = @country.schedules
    #@countrys = @search.result(distinct: true)

  end
end

