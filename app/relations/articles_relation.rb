class ArticlesRelation < ROM::Relation[:sql]
  dataset :articles

  # define your methods here ie:
  #
  # def all
  #   select(:id, :name).order(:id)
  # end

  def query(keyword)
    return unless keyword

    where("title ILIKE '%?%'", keyword)
  end
end
