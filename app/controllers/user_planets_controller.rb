class UserPlanetsController < ApplicationController
  
  # def like
  #   user_planet = UserPlanet.find_by(id: params[:user_planet_id])
  #   if user_planet
  #     # user_planet.likes += 1
  #     # user_planet.save
  #     user_planet.update(likes: user_planet.likes + 1)
  #     render json: user_planet
  #   else
  #     render json: { error: 'User Planet not found LIKE.' }, status: 404
  #   end
  # end

  def show
    user_planet = UserPlanet.find_by(id: params[:id])
    if user_planet
      render json: user_planet
    else
      render json: { error: 'User Planet not found from SHOW.' }, status: 404
    end
  end

  def index
    user_planet = UserPlanet.all
    render json: user_planet
  end

  def create
    user = current_user
    user_planet = UserPLanet.new(planet_id: params[:id], user_id: user.id)
    if user_planet.save
      user_planet.save
      render json: user_planet
    else
      render json: { error: 'User Planet not found from CREATE.' }, status: 404
    end
  end

  # render json: user, include: { 
  #   :user_planets => { 
  #     include: :planet, except: [:updated_at, :created_at]
  #      }
  # },
  # except: [:updated_at, :created_at]

end


  # fetch('http://localhost:3000/like', {
  #   method: 'POST',
  #   headers: { 'Content-Type': 'application/json' },
  #   body: JSON.stringify({ vote: 1 })
  # })