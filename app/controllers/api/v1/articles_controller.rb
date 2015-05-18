class API::V1::ArticlesController < API::V1::APIController
  def index
    @articles = Article.by_last_created

    render json: @articles, each_serializer: ArticleShortSerializer
  end

  def show
    @article = Article.find(params[:id])

    render json: @article
  end

  def create
    article = Article.new article_params

    if article.save
      render json: article, status: 201
    else
      render json: article.errors.full_messages, status: 422
    end
  end

  private

  def article_params
    params.permit(:title)
  end
end
