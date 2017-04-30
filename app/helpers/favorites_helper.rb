module FavoritesHelper

  def favorited(homeId)
    if Favorite.where(:home_id => homeId, :user_id => current_user.id).exists?
      return true
    else
      return false
    end
  end
end
