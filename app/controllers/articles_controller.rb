class ArticlesController < ApplicationController
  before_action :verify_user

  def index
    @articles = Article.all.includes(:favorites)
  end
end
