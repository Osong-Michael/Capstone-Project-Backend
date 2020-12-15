class SessionsController < ApplicationController
  include CurrentUserConcern
  def create
    user = User.find_by(username: params['user']['username']).try(:authenticate, params['user']['password'])

    if user
      session[:user_id] = user.id
      render json: {
        status: :created,
        logged_in: true,
        user: user
      }
    else
      render json: { status: 401 }
    end
  end

  def logged_in
    if @current_user
      render json: {
        logged_in: true,
        user: @current_user,
        user_fav: @current_user.favourite_shoes
      }
    else render json: 
      {
      logged_in: false
    }
    end
  end

  def logout
    session[:user_id] = nil
    render json: {
      status: 200,
      logged_in: false
    }
  end
end
