class AddUserIdAndShoeIdToFavourite < ActiveRecord::Migration[6.0]
  def change
    add_reference :favourites, :user, foreign_key: true
    add_reference :favourites, :shoe, foreign_key: true
  end
end
