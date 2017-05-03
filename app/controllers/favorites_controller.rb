class FavoritesController < ApplicationController

  def create
    favorite = current_user.favorites.create(:home_id => params[:homeId])
    home = Home.find(:id => params[:homeId])
    NotificationMailer.home_favorited_email(home, current_user).deliver_later
  end

  def destroy
    favorite = Favorite.find_by(:home_id => params[:homeId], :user_id => current_user.id)
    favorite.destroy
  end

end
