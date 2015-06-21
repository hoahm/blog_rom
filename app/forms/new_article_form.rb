class NewArticleForm < ArticleForm
  commands articles: :create

  def commit!
    articles.try { articles.create.call(attributes) }
  end
end