class FavoritesController < ApplicationController

  def create
    current_user.favorites.create(:home_id => params[:homeId])
  end

  def destroy
    favorite = Favorite.find(:home_id => params[:homeId], :user_id => current_user)
    favorite.destroy
  end

end
