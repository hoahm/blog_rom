module ArticleCommands
  class Update < ROM::Commands::Update[:sql]
    relation :articles
    register_as :update
    result :one

    # define a validator to use
    # validator ArticleValidator
  end
end
