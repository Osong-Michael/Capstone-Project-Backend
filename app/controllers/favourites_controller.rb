class FavouritesController < ApplicationController
  include CurrentUserConcern
  def fav_create
    favourite_shoe = Favourite.find_by(user_id:params[:user_id], shoe_id: params[:shoe_id])

    if favourite_shoe
      favourite_shoe.destroy
      render json: { status: 'Favourite Destroyed succesfully' }
    else
      favourite_shoe = Favourite.create!(user_id: params[:user_id], shoe_id: params[:shoe_id])
      render json: { status: 'Favourite Created succesfully' }
    end
  end

  def fav_shoes
    @user_shoes = @current_user.favourite_shoes
    render json: {
      user_shoes: @user_shoes
    }
  end
end