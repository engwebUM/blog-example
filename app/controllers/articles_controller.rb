require_relative '../presenters/article_presenter'

class ArticlesController < ApplicationController
  before_action :require_login, only: :show

  def index
    @articles = Article.by_last_created
  end

  def show
    @article = ArticlePresenter.new(
      ArticleWithStats.new(
        Article.find(params[:id])
      )
    )
  end
end
