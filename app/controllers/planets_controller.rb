class PlanetsController < ApplicationController

  def index
    planets = Planet.all
    render json: planets
  end

  def show
    planet = Planet.find_by(id: params[:id])
    if planet
    render json: planet
    else
      render json: { error: 'Planet not found from SHOW server.' }, status: 404
    end
  end

  def update
    # byebug
    planet = Planet.find(params[:id])
    planet.update(likes: params[:likes].to_i)
      render json: planet
  end

end


#   def vote_planet_name
#     vote = User_Planet.find_by(id: params[:vote_id])
#     if vote
#       vote.vote_count += 1
#       vote.save
#       # votes.update(vote_count: votes.vote_count + 1)
#       render json: vote
#     else
#       render json: { error: 'Could not submit vote.' }, status: 404
#     end
#   end
# end


#   fetch('http://localhost:3000/like', {
#     method: 'POST',
#     headers: { 'Content-Type': 'application/json' },
#     body: JSON.stringify({ vote: 1 })
#   })