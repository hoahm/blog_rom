class ArticlesRelation < ROM::Relation[:sql]
  dataset :articles

  # define your methods here ie:
  #
  # def all
  #   select(:id, :name).order(:id)
  # end
end
