class FavoritesController < ApplicationController

  def create
    current_user.favorites.create(:home_id => params[:homeId])
    render :layout => false
  end

  def destroy
    # @favorite = Favorite.find(params[:id])
    #
    # @favorite.destroy
    # redirect_to homes_url, notice: 'You unfavorited successfully.'
  end
end
