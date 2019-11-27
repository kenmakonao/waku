class User::ContinentsController < ApplicationController
  PER = 30
  def index
  	@continents = Continent.all
  end

  def show
  	@continent = Continent.find(params[:id])
  	@countrys = @continent.countrys
  end

  def country
  	@country = Country.find(params[:id])
  	@schedules = @country.schedules.page(params[:page]).per(PER)
  end
end

