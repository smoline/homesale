class FavoritesController < ApplicationController

  def create
    current_user.favorites.create(:home_id => params[:homeId])
  end

  def destroy
    favorite = Favorite.find_by(:home_id => params[:homeId], :user_id => current_user.id)
    favorite.destroy
  end

end
