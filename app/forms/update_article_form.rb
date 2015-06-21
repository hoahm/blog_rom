class UpdateArticleForm < ArticleForm
  commands articles: :update

  def self.build_from_existing(id)
    article = rom.relation(:articles).by_id(id).one!
    self.build(article)
  end

  def commit!
    articles.try { articles.update.by_id(id).call(attributes) }
  end
end
