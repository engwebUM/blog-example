class ArticleWithStats < SimpleDelegator
  def word_count
    body.split.count
  end
end
