class FavoritesController < ApplicationController
  def create
    favorite = current_user.favorites.new(favorite_params)
    favorite.save!
    flash.now[:notice] = "Favorited!"

    redirect_to articles_path
  end

  def index
    debugger;
    @articles = current_user.favorite_articles
  end

  def destroy
    favorite = current_user.favorites.where(article_id: favorite_params[:article_id]).first
    favorite.delete
    flash.now[:notice] = "Unfavorited!"
    redirect_to articles_path
  end

  private
  def favorite_params
    params.require(:favorite).permit(:article_id)
  end
end
