class FavoritesController < ApplicationController
  def create
    favorite = current_user.favorites.new(favorite_params)
    favorite.save!
    flash.now[:notice] = "Favorited!"

    redirect_to articles_path
  end

  def index
    @articles = current_user.favorite_articles.paginate(:page => params[:page], :per_page => 10)
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
