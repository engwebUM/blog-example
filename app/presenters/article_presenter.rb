class ArticlePresenter < SimpleDelegator
  def formatted_creation_date
    created_at.strftime("%d/%m/%y - %H:%M")
  end
end
