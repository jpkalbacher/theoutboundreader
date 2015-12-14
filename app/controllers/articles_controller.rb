class ArticlesController < ApplicationController
  before_action :verify_user

  def index
    @articles = Article.paginate(:page => params[:page], :per_page => 10)
  end
end
