class FavoritesController < ApplicationController

  # def create
  #   current_user.favorites.create(:home_id => params[:home_id])
  #   render :layout => false
  # end

  def create
    @favorite = Favorite.new(favorite_params)
    @favorite.created_by = current_user
    @favorite.home_id = params[:homeId]

    if @favorite.save
      # @fav_heart = true
      redirect_to homes_url, notice: 'Your favorite has been saved.'
    end

  end

  def destroy
    @favorite = Favorite.find(params[:id])

    @favorite.destroy
    redirect_to homes_url, notice: 'You unfavorited successfully.'
  end
end
