class RenamePlanetsController < ApplicationController

  def index
    rename_planet = RenamePlanet.all
    render json: rename_planet
  end

  def show
    rename_planet = RenamePlanet.find_by(id: params[:id])
    if rename_planet
      render json: rename_planet
    else
      render json: { error: 'Renamed Planet not found from SHOW.' }, status: 404
    end
  end

  def create
    rename_planet = RenamePlanet.new(renamed: params[:renamed])
    if rename_planet.save
      render json: rename_planet
    else
      render json: { error: "comment can not generate from CREATE" }, status: 400
    end
  end

  def update
    
  end

  def destroy

  end

end
