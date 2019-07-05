class UsersController < ApplicationController
  def show
    user = User.find_by(id: params[:id])
    if user
      render json: user, include: { 
        :user_planets => { 
          include: :planet, except: [:updated_at, :created_at]
           }
      },
      except: [:updated_at, :created_at]
    else
      render json: { error: 'User not found from SHOW server.' }, status: 404
    end
  end

  def signin
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      render json: { username: user.username, token: issue_token({ id: user.id }) }
    else
      render json: { error: 'Invalid username/password combination from SIGNIN server.' }, status: 401
    end
  end

  def validate
    user = current_user
    if user
      render json: { username: user.username, token: issue_token({ id: user.id }) }
    else
      render  status: 404
    end
  end

  # json: { error: 'User not found from VALIDATE server.' },

  def signup
        user = User.new(username: params[:username], password: params[:password])
        if user.save
          render json: user
        else
          render json: {error: "Username Already Taken! from SIGNUP server"}, status: 400
        end
  end

end
  # def validate
  #   id = request.headers['Authorization'].to_i
  #   user = User.find_by(id: id)
  #   if user
  #     render json: { username: user.username, id: user.id }
  #   else
  #     render json: { error: 'User not found.' }, status: 404
  #   end
  # end

  # def user_planets
  #   user = current_user
  #   if user
  #     render json: user.user_planets
  #   else
  #     render  status: 400
  #   end
  # end

  # json: { error: 'Invalid token.' },

  




# class User_PlanetsController < ApplicationController

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