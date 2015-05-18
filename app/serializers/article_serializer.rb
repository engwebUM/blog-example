class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :title, :body

  def title
    object.title.upcase
  end
end
