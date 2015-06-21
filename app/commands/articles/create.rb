module ArticleCommands
  class Create < ROM::Commands::Create[:sql]
    relation :articles
    register_as :create
    result :one

    # define a validator to use
    # validator ArticleValidator
  end
end
